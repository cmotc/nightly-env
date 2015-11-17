Project recovery/Build Setup
============================
I've got one big folder where I keep all the projects I generate .debs for when
I build from source. Sometimes I reformat, and I can't seem to touch a portable
hard drive without it exploding. This lets me build, clean, and regenerate my
projects folder whenever I need to without a bunch of hassle. This is not likely
to be useful to anybody else unless they adapt it to use their own projects.
It's simple enough to find out where.

usage
=====

###Old way(still kinda works):

These will be removed once all of their functionality is subsumed, duplicated,
or obviated by helper.sh

  * ./make: just a list of scripts to run and an optional flag to call ./push

        ./make		#run all build scripts
        ./make push 	#run all build scripts and push the packages

  * ./clean: delete all previously generated files, tar.gz, .dsc, .build,
.changes, and .deb. When ./clean deletes all folders ending in a numeric date,
so will helper.sh->clean

         ./clean

  * ./push: push all the built packages up to the binary repository. In this
case I use my own little hack to make it possible to host packages on github.
I'd like to also support things like aptly and launchpad eventually, but this
folder is basically my scratch paper.

  * ./cloneify: descends into all the subfolders, extracts their git remote
push destinations, and puts them into a file at the root of the projects
directory called "./clone" which it then makes executable. Every project with
a remote git resource is assumed to be recoverable from the push destination.
Thus, ./clone can be used to regenerate any broken repositories or to duplicate
the build environment.

  * ./clone: generated by cloneify, run this to recall a list of remote
repositories.

New way(better, still working on it):
-------------------------------------

  * Source in helper.sh to load the helper functions. Minor functionality has
changed as noted, otherwise, these are used the same way as the old scripts.

#### #!/bin/bash

        source helper.sh

#### #!/bin/dash

        . helper.sh

  * build: Calls all the files in ./.makescripts/ ending in sh. There is no
longer a static list of projects to build. Any project with a ./.makescripts/
file is automatically detected. The ./.makescripts folder will also be obsolete
soon. For now, it's left in to accomodate partial builds(chmod -x any scripts
you don't want to run.)

  * clean: delete all previously generated files, tar.gz, .dsc, .build .changes,
and .deb. When ./clean deletes all folders ending in a numeric date, so will
helper.sh->clean

  * upload: push all the built packages up to the binary repository. In this
case I use my own little hack to make it possible to host packages on github.
I'd like to also support things like aptly and launchpad eventually, but this
folder is basically my scratch paper.

  * genclone: descends into all the subfolders, extracts their git remote
push destinations, and puts them into a file at the root of the projects
directory called "./clone" which it then makes executable. Every project with
a remote git resource is assumed to be recoverable from the push destination.
Thus, ./clone can be used to regenerate any broken repositories or to duplicate
the build environment.

  * ./clone: generated by cloneify, run this to recall a list of remote
repositories.

Issues
------
This is essentially just a backup for me right now. If I can make it more
portable maybe I can make some kind of project management tool or something. The
only interesting part is cloneify, and it's not even very interesting.

Debian Specific for now. Might support RPM in the future. Arch and Gentoo people
can do what they want if they need it. They know what's up. I just don't care to
learn a dozen packaging systems at once when like, 3 is the most I have the
energy for.

I don't need the makescripts folder anymore, I can just call all the debian.sh
scripts in all the subprojects using helper.sh->build. ./.makescripts/ needs to
be carefully obviated as soon as possible, it's a moving part that's taking up
space and it's unnecessary.

Support for SSH keys, or for converting between git@github.com:*/*.git remotes
and https://github.com/*/*.git remotes in the absence of a working SSH key for
the repository.