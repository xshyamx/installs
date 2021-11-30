# Installs #

1. [Emacs](https://sourceforge.net/projects/emacsbinw64/)
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
2. Fonts
   1. [Inconsolata](http://www.levien.com/type/myfonts/inconsolata.html)
   2. [Office Code Pro](https://github.com/nathco/Office-Code-Pro)
   3. [Source Code Pro](http://adobe-fonts.github.io/source-code-pro/)
   4. [Bitstream Vera Sans Mono](http://www.dafont.com/bitstream-vera-mono.font)
   5. [DejaVu Sans Mono](http://dejavu-fonts.org/wiki/Main_Page)
   6. [Overpass Mono](http://overpassfont.org/)
   7. [Fira Code](https://github.com/tonsky/FiraCode)

3. Shell Utilities
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

4. [Terraform](https://terraform.io)
5. [Docker Toolbox](https://www.docker.com/docker-toolbox)
   1. [Docker Credential Helpers](https://github.com/docker/docker-credential-helpers)
6. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
7. [NodeJS](https://nodejs.org/en/download/)

   See [node-gyp](https://github.com/nodejs/node-gyp) for compiling native libraries for npm

   ```sh
   npm i -g --production windows-build-tools
   ```

8. [Go Programming Language](https://golang.org/dl/)
   1. [golang-migrate](https://github.com/golang-migrate/migrate) for managing db migrations
9. [Git for Windows](https://git-scm.com/download/)
10. [Vagrant](http://vagrantup.com/)
11. [jq - Command Line JSON Processor](https://stedolan.github.io/jq/)
12. [yq - Command Line YAML Processor](https://github.com/mikefarah/yq)
13. [JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
14. [PuTTY](http://www.putty.org/), [PuTTY-64](https://blog.splunk.net/64bit-putty/)
15. [WireShark](https://www.wireshark.org/#download)
16. [WinMerge](http://winmerge.org/downloads/?lang=en)
17. [Python](https://www.python.org/downloads/)
18. [TreeSize Free](http://www.jam-software.com/treesize_free/)
19. [IrfanView](http://www.irfanview.com/)
20. [Gimp](https://www.gimp.org/downloads/)
21. [Inkscape](https://inkscape.org/en/download/windows/)
22. [PlantUML](https://github.com/plantuml/plantuml) 
23. [GraphViz - Dot Command Line](http://www.graphviz.org/Download.php)
24. [wget for Windows](http://gnuwin32.sourceforge.net/packages/wget.htm)
25. [7-Zip](http://www.7-zip.org/)
26. [Eclipse IDE](https://www.eclipse.org/downloads/eclipse-packages/)
27. [youtube-dl](https://rg3.github.io/youtube-dl/)
28. [Redis](http://redis.io/)
29. [Neo4j](https://neo4j.com/download/other-releases/)
30. [MongoDB](https://www.mongodb.com/download-center#community)
31. [ConEmu](http://conemu.github.io/en/index.html)

    Tabbed command line support for git-bash

32. [Figlet in Go for Windows](https://github.com/lukesampson/figlet)

    ASCII art from the command line

33. [CamStudio](http://camstudio.org/)

    OpenSource desktop screen recorder

34. [Chocolatey](https://chocolatey.org/)

    OpenSource package manager for windows. Add the following lines to
    the installer to use the proxy and install in a custom location

	```powershell
	$env:chocolateyProxyLocation = 'http://localhost:3128'
	$env:ChocolateyInstall = "e:\software\chocolatey"
	```

35. [ImageMagik](https://www.imagemagick.org/script/download.php)

	For the awesome convert tool to create pdfs from images and vice-versa

36. ~~[KeepassX](https://www.keepassx.org/)~~ is discontinuted so move to [KeePassXC](https://keepassxc.org)
