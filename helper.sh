#! /bin/sh

clean(){
	rm *.build *.dsc *.tar.xz *.deb *.*.tar.xz *.changes
	rm log
}

build(){
	clean
	for SCRIPT in ./.makescripts/*
	do
		if [ -f $SCRIPT -a -x $SCRIPT ]
		then
			$SCRIPT
		fi
	done
	if [ "$1" = "push" ] ; then
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
	rm ./clone
	for subdir in *; do
	  test -d "$subdir" || continue
	  cd "$subdir"
	  remote=$(git remote -v)
	  for word in $remote; do
	    if [ `echo "$word" | grep 'git@' ` ]; then
	      echo "git clone $word" >> ../clone
	    fi
	  done
	  cd -
	done
	awk '!seen[$0]++' ./clone
	chmod a+x ./clone
}