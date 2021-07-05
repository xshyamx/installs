# Installs #

1. [Emacs](https://sourceforge.net/projects/emacsbinw64/)
   1. [yasnippet](https://github.com/joaotavora/yasnippet)
   2. [yasnippet-snippets](https://github.com/AndreaCrotti/yasnippet-snippets)
   3. [go-mode](https://github.com/dominikh/go-mode.el)
       - Install [goimports](https://github.com/bradfitz/goimports)
       - Install [godef](github.com/rogpeppe/godef)
       - Setup to use these tools
         ``` elisp
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
3. [Terraform](https://terraform.io)
4. [Docker Toolbox](https://www.docker.com/docker-toolbox)
   1. [Docker Credential Helpers](https://github.com/docker/docker-credential-helpers)
5. [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
6. [NodeJS](https://nodejs.org/en/download/)  
   See [node-gyp](https://github.com/nodejs/node-gyp) for compiling native libraries for npm  
   `npm i -g --production windows-build-tools`
7. [Go Programming Language](https://golang.org/dl/)
   1. [golang-migrate](https://github.com/golang-migrate/migrate) for managing db migrations
8. [Git for Windows](https://git-scm.com/download/)
9. [Vagrant](http://vagrantup.com/)
10. [jq - Command Line JSON Processor](https://stedolan.github.io/jq/)
11. [JDK](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
12. [PuTTY](http://www.putty.org/), [PuTTY-64](https://blog.splunk.net/64bit-putty/)
13. [WireShark](https://www.wireshark.org/#download)
14. [WinMerge](http://winmerge.org/downloads/?lang=en)
15. [Python](https://www.python.org/downloads/)
16. [TreeSize Free](http://www.jam-software.com/treesize_free/)
17. [IrfanView](http://www.irfanview.com/)
18. [Gimp](https://www.gimp.org/downloads/)
19. [Inkscape](https://inkscape.org/en/download/windows/)
20. [GraphViz - Dot Command Line](http://www.graphviz.org/Download.php)
21. [wget for Windows](http://gnuwin32.sourceforge.net/packages/wget.htm)
22. [7-Zip](http://www.7-zip.org/)
23. [Eclipse IDE](https://www.eclipse.org/downloads/eclipse-packages/)
24. [youtube-dl](https://rg3.github.io/youtube-dl/)
25. [Redis](http://redis.io/)
26. [Neo4j](https://neo4j.com/download/other-releases/)
27. [MongoDB](https://www.mongodb.com/download-center#community)
28. [ConEmu](http://conemu.github.io/en/index.html)  
    Tabbed command line support for git-bash
29. [Figlet in Go for Windows](https://github.com/lukesampson/figlet)  
    ASCII art from the command line
30. [CamStudio](http://camstudio.org/)  
    OpenSource desktop screen recorder
31. [Chocolatey](https://chocolatey.org/)  
    OpenSource package manager for windows. Add the following lines to
    the installer to use the proxy and install in a custom location

        $env:chocolateyProxyLocation = 'http://localhost:3128'
        $env:ChocolateyInstall = "e:\software\chocolatey"

32. [ImageMagik](https://www.imagemagick.org/script/download.php)  
    For the awesome convert tool to create pdfs from images and vice-versa
33. ~~[KeepassX](https://www.keepassx.org/)~~ is discontinuted so move to [KeePassXC](https://keepassxc.org)
