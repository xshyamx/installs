# Installs #

## Common ##

### Install First ###

1. Password Manager ~~[KeepassX](https://www.keepassx.org/)~~ is discontinuted so move to [KeePassXC](https://keepassxc.org)
2. Browser [qutebrowser](https://qutebrowser.org/)
3. [tmux](https://tmux.github.io/) Terminal multiplexer
4. [VS Code](https://code.visualstudio.com/)


### Fonts ###

1. [Inconsolata](http://www.levien.com/type/myfonts/inconsolata.html)
2. [Office Code Pro](https://github.com/nathco/Office-Code-Pro)
3. [Source Code Pro](http://adobe-fonts.github.io/source-code-pro/)
4. [Bitstream Vera Sans Mono](http://www.dafont.com/bitstream-vera-mono.font)
5. [DejaVu Sans Mono](http://dejavu-fonts.org/wiki/Main_Page)
6. [Overpass Mono](http://overpassfont.org/)
7. [Fira Code](https://github.com/tonsky/FiraCode)

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

1. [sdk](https://sdkman.io)

	CLI tool for managing several SDK versions like maven, gradle, and even JDKs

2. [direnv](https://github.com/direnv/direnv/)

	Change environment variables per directory by adding `.envrc` eg.

	 ```sh
	 export JAVA_HOME=$JAVA8_HOME
	 ```

3. [nvm](https://github.com/nvm-sh/nvm)

	Manage multiple [NodeJS](https://nodejs.org/en/) versions

4. [ark](https://github.com/alexellis/arkade)

	CLI tool to install commonly used kubernetes CLI utilities as well as applications

	```sh
	curl -sLS https://get.arkade.dev | sh
	# once the arkade binary is downloaded move it somewhere in the path
	# additionally add a symlink to it as ark to simplify usage
	echo 'export PATH=$PATH:$HOME/.arkade/bin' >> ~/.bashrc
 	```

11. [jq - Command Line JSON Processor](https://stedolan.github.io/jq/)
12. [yq - Command Line YAML Processor](https://github.com/mikefarah/yq)
13. [bat](https://github.com/sharkdp/bat) cat with syntax highlighting
14. [caddy](https://caddyserver.com/) http server
15. [colordiff](https://www.colordiff.org/) diff with colors
16. [fzf](https://github.com/junegunn/fzf) Command line fuzzy finder
17. [stow](https://www.gnu.org/software/stow/) symlink manager


### Language/Data Runtimes ###

1. [NodeJS](https://nodejs.org/en/download/)

   See [node-gyp](https://github.com/nodejs/node-gyp) for compiling native libraries for npm

   ```sh
   npm i -g --production windows-build-tools
   ```

2. [Go Programming Language](https://golang.org/dl/)
   1. [golang-migrate](https://github.com/golang-migrate/migrate) for managing db migrations

3. [Python](https://www.python.org/downloads/)
4. [Redis](http://redis.io/)
5. [Neo4j](https://neo4j.com/download/other-releases/)
6. [MongoDB](https://www.mongodb.com/download-center#community)

### Graphics ###

1. [Gimp](https://www.gimp.org/downloads/)
2. [Inkscape](https://inkscape.org/en/download/windows/)
3. [PlantUML](https://github.com/plantuml/plantuml)
4. [GraphViz - Dot Command Line](http://www.graphviz.org/Download.php)
5. [ImageMagik](https://www.imagemagick.org/script/download.php)

	For the awesome convert tool to create pdfs from images and vice-versa

6. [drawio](https://github.com/jgraph/drawio-desktop)

### VMs/Containers/Networking ###

1. [Terraform](https://terraform.io)
2. [Docker Toolbox](https://www.docker.com/docker-toolbox)
   1. [Docker Credential Helpers](https://github.com/docker/docker-credential-helpers)
3. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
4. [Minikube](https://minikube.sigs.k8s.io/docs/)
5. [Vagrant](http://vagrantup.com/)
6. [youtube-dl](https://rg3.github.io/youtube-dl/)
7. [aria2](https://aria2.github.io/) downloader supporting >1 parallel connections to download same file
8. [nmap](https://nmap.org/) Port scanning utility
9. [WireShark](https://www.wireshark.org/#download)

## Windows Only ##

1. [Git for Windows](https://git-scm.com/download/)
2. [JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
3. [PuTTY](http://www.putty.org/), [PuTTY-64](https://blog.splunk.net/64bit-putty/)
4. [WinMerge](http://winmerge.org/downloads/?lang=en)
5. [TreeSize Free](http://www.jam-software.com/treesize_free/)
6. [IrfanView](http://www.irfanview.com/)
7. [wget for Windows](http://gnuwin32.sourceforge.net/packages/wget.htm)
8. [7-Zip](http://www.7-zip.org/)
9. [Eclipse IDE](https://www.eclipse.org/downloads/eclipse-packages/)
10. [ConEmu](http://conemu.github.io/en/index.html) (or alternatively [cmdr](https://cmder.net/))

    Tabbed command line support for git-bash

11. [Figlet in Go for Windows](https://github.com/lukesampson/figlet)

    ASCII art from the command line

12. [CamStudio](http://camstudio.org/)

    OpenSource desktop screen recorder

13. [Chocolatey](https://chocolatey.org/)

    OpenSource package manager for windows. Add the following lines to
    the installer to use the proxy and install in a custom location

	```powershell
	$env:chocolateyProxyLocation = 'http://localhost:3128'
	$env:ChocolateyInstall = "e:\software\chocolatey"
	```

