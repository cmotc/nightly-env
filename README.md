Project recovery/Build Setup
============================
I've got one big folder where I keep all the projects I generate .debs for when
I build from source. Sometimes I reformat, and I can't seem to touch a portable
hard drive without it exploding. This lets me build, clean, and regenerate my
projects folder whenever I need to without a bunch of hassle. This is not likely
to be useful to anybody else unless they adapt it to use their own projects.
It's simple enough to find out where, but I'll document how as it becomes more
solid if I don't adapt it for general use myself in the process.

For a more detailed list of the projects I sometimes build with this script,
look at (remotes.md)[https://github.com/cmotc/nightly-env/blob/master/remotes.md]

usage
=====

  * Source in helper.sh to load the helper functions. Minor functionality has
changed as noted, otherwise, these are used the same way as the old scripts.

#### #!/bin/bash

        source helper.sh

#### #!/bin/dash

        . helper.sh

  * build: Calls all the files in all the subfolders which are named either
debian.sh or rpm.sh. This file is something the user should create for now.
Eventually, it will recognize standard package characteristics and run itself
as well, but for for now, if it's as simple as typing debuild, just put it in
a ./project/debian.sh file for now. I mean, technically, it'll make a copy of
the folder and it'll run

        debuild -us -uc >> ../log

in that copy. If all the information you want is already in the debian folder
then it should be cool. But I had a bunch of wierdly packaged python scripts or
something when I started this so I had to generate the scripts as I went and
this made work faster as I was learning. And I'm leaving support for it in. If
you want to disable it, source helper.sh with no-scripts as a parameter:

        . helper.sh no-scripts

or set 

        USE_DEBSH_SCRIPTS="N"
        USE_RPMSH_SCRIPTS="N"

in your terminal. It's right at the top of the file too.

        #After sourcing in helper.sh
        build		#run all build scripts
        build upload 	#run all build scripts and push the packages

  * clean: delete all previously generated files, tar.gz, .dsc, .build .changes,
and .deb. When ./clean deletes all folders ending in a numeric date, so will
helper.sh->clean

  * dustup: delete all generated temporary folders(dated folders) but leave
logs and built packages.

  * clobber: runs clean, but also deletes any subfolders ending in a date(i.e.
generated subfolders.)

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

  * genrepo: generates a repository for you to use. unfinished functionality,
requires modification.

  * force\_update: goes into every subdirectory and pulls down updates from
master repository.

  * force\_sub\_update: goes into every subdirectory and commits all current
changes.

  * clone calls ./.clone subscript.

  * ./.clone: generated by helper.sh>genclone, run this to recall a list of
remote repositories used in a previous version of this nightly build system.
Could have more features.

Issues
------

Debian Specific for now. Experimental support for simple Android projects using
Ant. Gradle and Maven are on the way once that's done. Might support RPM in the
future. Arch and Gentoo people can do what they want if they need it. They know
what's up. I just don't care to learn a dozen packaging systems at once when 
like, 3 is the most I have the energy for.

Support for SSH keys, or for converting between git@github.com:\*/\*.git remotes
and https://github.com/*/*.git remotes in the absence of a working SSH key for
the repository.
