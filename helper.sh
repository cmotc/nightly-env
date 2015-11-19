#! /bin/sh

clean(){
	rm *.build *.dsc *.tar.xz *.deb *.*.tar.xz *.changes
	rm log
}

build(){
	clean
        alias dh_make="dh_make --yes"
	for d in *; do
		if [ -f "$d/debian.sh" ]; then
#			echo $d
			. "$d/debian.sh" && echo "<<<Built $DEBFOLDERNAME>>>" && rm -rf $DEBFOLDERNAME
		fi
        done
#	for SCRIPT in ./.makescripts/*
#	do
#		if [ -f $SCRIPT -a -x $SCRIPT ]
#		then
#			$SCRIPT
#		fi
#	done
	if [ "$1" = "upload" ] ; then
		upload
	fi
}

upload(){
	rm -rf ../repository/packages/
	mkdir -p ../repository/packages/
	cp *.build *.changes *.tar.xz *.dsc *.deb ../repository/packages/
	cd ../repository/
	rm -rf debian
	./apt-git --check
}

genclone(){
	GLOBIGNORE=.
	echo "#! /bin/sh" > ./.clone
	for subdir in *; do
	  test -d "$subdir" || continue
	  cd "$subdir"
	  remote=$(git remote -v)
	  for word in $remote; do
	    if [ `echo "$word" | grep 'git@' ` ]; then
	      echo "git clone $word" >> ../.clone
	    fi
	  done
	  cd -
	done
	awk '!seen[$0]++' ./.clone > ./clone
	rm ./.clone
	chmod a+x ./clone
}