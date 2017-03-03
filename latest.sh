#!/bin/sh

# Download the latest versions of software


get_nodejs() {
  mkdir -p nodejs
  prefix=https://nodejs.org/dist/latest
  installer=$(curl  $prefix/ | awk -F'"' '/x64.msi/ {print $2}')
  curl -# -o nodejs/$installer "$prefix/$installer"
  curl -s "$prefix/SHASUMS256.txt" | grep x64.msi > nodejs/$installer.sha256
  pushd nodejs > /dev/null
  sha256sum -c $installer.sha256
  popd > /dev/null
}

get_terraform() {
  mkdir -p terraform
  prefix=https://releases.hashicorp.com/terraform
  terraform_version=$(curl -s https://api.github.com/repos/hashicorp/terraform/releases/latest | jq -r '.tag_name|ltrimstr("v")')
  installer=terraform_${terraform_version}_windows_amd64.zip
  curl -o terraform/$installer https://releases.hashicorp.com/terraform/${terraform_version}/$installer
  curl -s $prefix/${terraform_version}/terraform_${terraform_version}_SHA256SUMS \
       | grep windows_amd64.zip > terraform/$installer.sha256
  pushd terraform > /dev/null
  sha256sum -c $installer.sha256
  popd > /dev/null
}

get_virtualbox() {
  mkdir virtualbox
  download_page=https://www.virtualbox.org/wiki/Downloads
  install_url=$(curl $download_page | grep 'Win.exe' | sed -e 's/^.*href="//' -e 's/".*$//')
  installer=$(basename $install_url)
  curl -o virtualbox/$installer $install_url
  version=$(echo $installer | grep -oE '[0-9]+(\.[0-9]+){,2}' | head -n 1)
  curl -s https://www.virtualbox.org/download/hashes/$version/SHA256SUMS \
      | grep 'Win.exe' > virtualbox/$installer.sha256
  pushd virtualbox > /dev/null
  sha256sum -c $installer.sha256
  popd > /dev/null
}
get_inkscape() {
  mkdir inkscape
  download_page=https://inkscape.org/en/download/windows/
  install_url=$(curl $download_page | grep 'win64.7z' | sed -e 's/^.*href="//' -e 's/".*$//')
  installer=$(basename $install_url)
  curl -o inkscape/$installer $install_url
}

get_docker_toolbox() {
  mkdir -p docker
  curl -s -o docker/release.json  https://api.github.com/repos/docker/toolbox/releases/latest
  toolbox_version=$(cat docker/release.json | jq -r '.name|ltrimstr("v")')
  install_url=$(cat docker/release.json | jq -r '.assets[].browser_download_url' | grep exe)
  installer=$(basename $install_url)
  curl -o docker/$installer -L "$install_url"
}

get_gitwin() {
  mkdir -p git
  curl -s -o git/release.json  https://api.github.com/repos/git-for-windows/git/releases/latest
  install_url=$(cat git/release.json | jq -r '.assets[].browser_download_url' | grep '64-bit.exe')
  installer=$(basename $install_url)
  cat git/release.json | jq -r '.body' \
      | awk -F'|' '/64-bit.exe/ { gsub(/ /, "", $2); print $2,$1}' > git/$installer.sha256
  curl -o git/$installer -L "$install_url"
  pushd virtualbox > /dev/null
  sha256sum -c $installer.sha256
  popd > /dev/null
}

get_vagrant() {
  mkdir -p vagrant
  prefix=https://releases.hashicorp.com/vagrant
  curl -o vagrant/release.json $prefix/index.json
  vagrant_version=$(cat vagrant/release.json | jq -r '.versions|keys[-1]')
  install_url=$(cat vagrant/release.json | jq -r '.versions["'$vagrant_version'"].builds[] | .url' | grep 'msi')
  shasums=$(cat vagrant/release.json | jq -r '.versions["'$vagrant_version'"].shasums')
  installer=$(basename $install_url)
  curl -o vagrant/$installer -L $install_url
  curl -s $(dirname $install_url)/$shasums \
       | grep msi > vagrant/$installer.sha256
  pushd vagrant > /dev/null
  sha256sum -c $installer.sha256
  popd > /dev/null
}

get_jq() {
  mkdir -p jq
  curl -o jq/release.json https://api.github.com/repos/stedolan/jq/releases/latest
  jq_version=$(cat jq/release.json | jq -r '.name|ltrimstr("jq ")')
  install_url=$(cat jq/release.json | jq -r '.assets[].browser_download_url' | grep 'win64.exe')
  installer=$(basename $install_url)
  curl -s https://raw.githubusercontent.com/stedolan/jq/master/sig/v$jq_version/sha256sum.txt \
      | grep 'win64.exe' > jq/$installer.sha256
  curl -o jq/$installer -L $install_url
  pushd jq > /dev/null
  sha256sum -c $installer.sha256
  popd > /dev/null
}

get_youtube_dl() {
  mkdir -p youtube-dl
  curl -o youtube-dl/release.json https://api.github.com/repos/rg3/youtube-dl/releases/latest
  install_url=$(cat youtube-dl/release.json | jq -r '[.assets[]|.browser_download_url][]|select(.|endswith("exe"))')
  installer=$(basename $install_url)
  shasum_url=$(cat youtube-dl/release.json | jq -r '[.assets[]|.browser_download_url][]|select(.|endswith("256SUMS"))')
  curl -s -L $shasum_url \
      | grep '.exe' > youtube-dl/$installer.sha256
  curl -o youtube-dl/$installer -L $install_url
  pushd youtube-dl > /dev/null
  sha256sum -c $installer.sha256
  popd > /dev/null
}

get_redis() {
  mkdir -p redis
  curl -o redis/release.json https://api.github.com/repos/MSOpenTech/redis/releases/latest
  install_url=$(cat redis/release.json | jq -r '[.assets[]|.browser_download_url][]|select(.|endswith("zip"))')
  installer=$(basename $install_url)
  curl -o redis/$installer -L $install_url
  pushd redis > /dev/null
  sha256sum -c $installer.sha256
  popd > /dev/null
}
