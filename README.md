# Installs #

## Common ##

### Install First ###

1. Password Manager ~~[KeepassX](https://www.keepassx.org/)~~ is discontinuted so move to [KeePassXC](https://keepassxc.org)
2. Browser [qutebrowser](https://qutebrowser.org/)
3. [tmux](https://tmux.github.io/) Terminal multiplexer
4. [VS Code](https://code.visualstudio.com/)


### Fonts ###

- Big list of programming fonts https://www.programmingfonts.org/
- Find your favourite programming font gamified https://www.codingfont.com/

1. [Bitstream Vera Sans Mono](http://www.dafont.com/bitstream-vera-mono.font)
2. [DejaVu Sans Mono](http://dejavu-fonts.org/wiki/Main_Page)
3. [Fira Code](https://github.com/tonsky/FiraCode)
4. [Inconsolata](http://www.levien.com/type/myfonts/inconsolata.html)
5. [Office Code Pro](https://github.com/nathco/Office-Code-Pro)
6. [Overpass Mono](http://overpassfont.org/)
7. [Source Code Pro](http://adobe-fonts.github.io/source-code-pro/)

### Emacs ###

Windows binaries where not available so, you had to download from ~~[here](https://sourceforge.net/projects/emacsbinw64/)~~ but, now available from [GNU main site](http://www.gnu.org/software/emacs/download.html#nonfree)

1. [yasnippet](https://github.com/joaotavora/yasnippet)
2. [yasnippet-snippets](https://github.com/AndreaCrotti/yasnippet-snippets)
3. [go-mode](https://github.com/dominikh/go-mode.el)
    - Install [goimports](https://github.com/bradfitz/goimports)
    - Install [godef](github.com/rogpeppe/godef)
    - Setup to use these tools

      ``` lisp
      (setq go-home "/usr/local/go")
      (setq go-path (expand-file-name "go" (getenv "HOME")))
      (setq godef-command (expand-file-name "bin/godef" go-path))
      (setq gofmt-command (expand-file-name "bin/goimports" go-path))
      (setq godoc-command (expand-file-name "bin/godoc" go-home))
      (setq go-command (expand-file-name "bin/go" go-home))
      ```

### Shell Utilities ###

1. [ark](https://github.com/alexellis/arkade)
	CLI tool to install commonly used kubernetes CLI utilities as well as applications

	```sh
	curl -sLS https://get.arkade.dev | sh
	# once the arkade binary is downloaded move it somewhere in the path
	# additionally add a symlink to it as ark to simplify usage
	echo 'export PATH=$PATH:$HOME/.arkade/bin' >> ~/.bashrc
 	```

2. [bat](https://github.com/sharkdp/bat) cat with syntax highlighting
3. [caddy](https://caddyserver.com/) http server
4. [colordiff](https://www.colordiff.org/) diff with colors
5. [direnv](https://github.com/direnv/direnv/)
	Change environment variables per directory by adding `.envrc` eg.

	 ```sh
	 export JAVA_HOME=$JAVA8_HOME
	 ```

6. [fzf](https://github.com/junegunn/fzf) Command line fuzzy finder
7. [jq - Command Line JSON Processor](https://stedolan.github.io/jq/)
8. [nvm](https://github.com/nvm-sh/nvm)
	Manage multiple [NodeJS](https://nodejs.org/en/) versions
9. [sdk](https://sdkman.io)
	CLI tool for managing several SDK versions like maven, gradle, and even JDKs
10. [stow](https://www.gnu.org/software/stow/) symlink manager
11. [yq - Command Line YAML Processor](https://github.com/mikefarah/yq)

### Language/Data Runtimes ###

1. [Go Programming Language](https://golang.org/dl/)
   1. [golang-migrate](https://github.com/golang-migrate/migrate) for managing db migrations
2. [MongoDB](https://www.mongodb.com/download-center#community)
3. [Neo4j](https://neo4j.com/download/other-releases/)
4. [NodeJS](https://nodejs.org/en/download/)

   See [node-gyp](https://github.com/nodejs/node-gyp) for compiling native libraries for npm

   ```sh
   npm i -g --production windows-build-tools
   ```

5. [Python](https://www.python.org/downloads/)
6. [Redis](http://redis.io/)

### Graphics ###

1. [Gimp](https://www.gimp.org/downloads/)
2. [Inkscape](https://inkscape.org/en/download/windows/)
3. [PlantUML](https://github.com/plantuml/plantuml)
4. [GraphViz - Dot Command Line](http://www.graphviz.org/Download.php)
5. [ImageMagik](https://www.imagemagick.org/script/download.php)

	For the awesome convert tool to create pdfs from images and vice-versa

6. [drawio](https://github.com/jgraph/drawio-desktop)

### VMs/Containers/Networking ###

1. [Docker Toolbox](https://www.docker.com/docker-toolbox)
   1. [Docker Credential Helpers](https://github.com/docker/docker-credential-helpers)
2. [Minikube](https://minikube.sigs.k8s.io/docs/)
3. [Terraform](https://terraform.io)
4. [Vagrant](http://vagrantup.com/)
5. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
6. [WireShark](https://www.wireshark.org/#download)
7. [aria2](https://aria2.github.io/) downloader supporting >1 parallel connections to download same file
8. [nmap](https://nmap.org/) Port scanning utility
9. [youtube-dl](https://rg3.github.io/youtube-dl/)

## Browser Extensions ##

### Firefox ###
- [Firefox Multi-Account Containers](https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/)
- [Ghostery – Privacy Ad Blocker](https://addons.mozilla.org/en-US/firefox/addon/ghostery/)
- [Privacy Badger](https://addons.mozilla.org/en-US/firefox/addon/privacy-badger17/)
- [React Developer Tools](https://addons.mozilla.org/en-US/firefox/addon/react-devtools/)
- [Redux DevTools](https://addons.mozilla.org/en-US/firefox/addon/reduxdevtools/)
- [Snooze Tabs](https://addons.mozilla.org/en-US/firefox/addon/snoozetabs)
- [org-link](https://addons.mozilla.org/en-US/firefox/addon/org-link/)

### Chrome ###
- [React Developer Tools](https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi)
- [Redux DevTools](https://chrome.google.com/webstore/detail/redux-devtools/lmhkpmbekcpmknklioeibfkpmmfibljd)

### Edge ###
- [React Developer Tools](https://microsoftedge.microsoft.com/addons/detail/react-developer-tools/gpphkfbcpidddadnkolkpfckpihlkkil)


## OSX Only ##

1. [Homebrew](https://brew.sh)
2. [Secretive](https://github.com/maxgoedjen/secretive) - storing and managing SSH keys in the Secure Enclave

## Windows Only ##


1. [7-Zip](http://www.7-zip.org/)
2. [CamStudio](http://camstudio.org/)
    OpenSource desktop screen recorder
3. [Chocolatey](https://chocolatey.org/)
    OpenSource package manager for windows. Add the following lines to
    the installer to use the proxy and install in a custom location

	```powershell
	$env:chocolateyProxyLocation = 'http://localhost:3128'
	$env:ChocolateyInstall = "e:\software\chocolatey"
	```

4. [ConEmu](http://conemu.github.io/en/index.html) (or alternatively [cmdr](https://cmder.net/))
    Tabbed command line support for git-bash
5. [Eclipse IDE](https://www.eclipse.org/downloads/eclipse-packages/)
6. [Figlet in Go for Windows](https://github.com/lukesampson/figlet)
    ASCII art from the command line
7. [Git for Windows](https://git-scm.com/download/)
8. [IrfanView](http://www.irfanview.com/)
9. [JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
10. [PuTTY](http://www.putty.org/), [PuTTY-64](https://blog.splunk.net/64bit-putty/)
11. [TreeSize Free](http://www.jam-software.com/treesize_free/)
12. [WinMerge](http://winmerge.org/downloads/?lang=en)
13. [wget for Windows](http://gnuwin32.sourceforge.net/packages/wget.htm)
