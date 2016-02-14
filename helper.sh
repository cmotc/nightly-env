#! /bin/sh

# Use can add any of these variables to ~/.fyrixrc to alter the behavior of the
# script.

USE_APT_GIT="no"
GITHUB_USE_SSH="no"
GITHUB_USERNAME="error_empty_user"

if [ -f "~/.fyrixrc" ]; then
    . "~/.fyrixrc"
fi

if [ -f ".helperc" ]; then
    . ".helperc"
fi

if [ ! $(echo "$USE_ABS_PATH" | grep "yes") ]; then
    USE_ABS_PATH="no"
    echo $USE_ABS_PATH
elif [ "$USE_ABS_PATH" = "no" ]; then
    USE_ABS_PATH="no"
else
    USE_ABS_PATH="yes"
fi

if [ "$USE_APT_GIT" = "yes" ]; then
    if [ "$GITHUB_USERNAME" != "error_empty_user" ]; then
        if [ "$GITHUB_USE_SSH" != "no" ]; then
            GITHUB_URL="git@github.com/$GITHUB_USERNAME"
        else
            GITHUB_URL="https://github.com/$GITHUB_USERNAME"
        fi
    else
        echo "ERROR! Please specify your github username to use apt-git. SSH
keys are also reccommended."
        exit
    fi
fi

USE_DEBSH_SCRIPTS="Y"
USE_RPMSH_SCRIPTS="N"
USE_DROIDSH_SCRIPTS="N"
if [ "$1" = "no-scripts" ]; then
    USE_DEBSH_SCRIPTS="N"
    USE_RPMSH_SCRIPTS="N"
    USE_DROIDSH_SCRIPTS="N"
fi

export WORKDIR=$(pwd)

if [ "$USE_ABS_PATH" = "yes" ]; then
    WORKDIR=$(cd `dirname $0` && pwd)
fi

echo "Loading build helper scripts in $WORKDIR"

#clean up everything but unfinished folders
clean(){
    cd $WORKDIR
    echo -n "Removing "
    rm *.build *.dsc *.deb  *.changes *.tar.gz *.*.tar.gz *.tar.xz *.*.tar.xz *.tar.bz2 *.*.tar.bz2 *.apk 2> /dev/null
    rm log
}

#clean up everything including unfinished folders
clobber(){
    cd $WORKDIR
    clean
    dustup
}

#clean up everything but the built packages
dustup(){
    cd $WORKDIR
    for d in *; do
        day=$(date +%Y%m%d)
        until [ $(echo "$day" | grep "00") ]; do
	    echo "removing $d-$day"
            rm -rf "$d-$day" 2> /dev/null
            day=$((day-1))
        done
    done
}

#Helper for building debian packages with no alterations
deb_nosh(){
    d="$1"
    echo "$d/debian.sh file not found. Attempting to build package automatically."
    DEBFOLDERNAME="$d""_"$(date +%Y%m%d)
    cd "$d" && git pull && cd ..
    cp -Rv "$d" $DEBFOLDERNAME
    tar -czvf $DEBFOLDERNAME.orig $DEBFOLDERNAME
    t="false"
    cd $DEBFOLDERNAME && t="true" && debuild -us -uc >> ../log
    cd $WORKDIR
}
#Helper for building redhat packages with no alterations
rpm_nosh(){
    d="$1"
    echo "I don't know how to build rpm packages yet so $d.rpm does not build. Skipping and proceeding normally."
    cd $WORKDIR
}

#Helper for building android packages with no alterations
droid_nosh(){
    d="$1"
    $DROIDFOLDERNAME="$d""_"$(date +%Y%m%d)
    cd "$d" && git pull && cd ../
    cd "$d" && git pull && cd ..
    cp -Rv "$d" $DROIDFOLDERNAME
#You know what? Fuck it. Might be useful.
    tar -czvf $DROIDFOLDERNAME.orig.tar.gz $DROIDFOLDERNAME
    t="false"
    cd $DROIDFOLDERNAME && ant build && t="true" >> ../log
    if [ ! $t = "true" ]; then
        ant debug
        t="true"
    fi
    if [ $t = "true" ]; then
        cd $WORKDIR
        cp $DROIDFOLDERNAME/bin/*.apk ./
    fi
    cd $WORKDIR
}

#build all packages in all subdirectories
build(){
    cd $WORKDIR
    clean
    alias dh_make="dh_make --yes"
    echo "$1"
    if [ "$1" != "" ]; then
        echo "$1"
        if [ "$1" != "upload" ]; then
            d="$1"
            echo "$d"
            if [ -f "$d/debian.sh" ]; then
                if [ "$USE_DEBSH_SCRIPTS" = "Y" ]; then
                    . "$d/debian.sh" && echo "<<<Built $DEBFOLDERNAME>>>" && rm -rf $DEBFOLDERNAME 
                    cd $WORKDIR
                fi
            else
                if [ -d "$d/debian" ]; then
                    deb_nosh "$d"
                fi
            fi
            if [ -f "$d/rpm.sh" ]; then
                if [ "$USE_RPMSH_SCRIPTS" = "y" ]; then
                    . "$d/rpm.sh" && echo "<<<Built $RPMFOLDERNAME>>>" && rm -rf $RPMFOLDERNAME #&& cd ..
                    cd $WORKDIR
                fi
            else
                if [ -f "$d/*.spec"]; then
                    rpm_nosh "$d"
                fi
            fi
            if [ -f "$d/droid.sh" ]; then
                if [ "$USE_DROIDSH_SCRIPTS" = "y" ]; then
                    . "$d/rpm.sh" && echo "<<<Built $DROIDFOLDERNAME>>>" && rm -rf $DROIDFOLDERNAME #&& cd ..
                    cd $WORKDIR
                fi
            else
                droid_nosh "$d"
            fi
        fi
    else
        for d in *; do
            if [ -f "$d/debian.sh" ]; then
                if [ "$USE_DEBSH_SCRIPTS" = "Y" ]; then
                    . "$d/debian.sh" && echo "<<<Built $DEBFOLDERNAME>>>" && rm -rf $DEBFOLDERNAME 
                    cd $WORKDIR
                fi
            else
                if [ -d "$d/debian" ]; then
                    deb_nosh "$d"
                fi
            fi
            if [ -f "$d/rpm.sh" ]; then
                if [ "$USE_RPMSH_SCRIPTS" = "y" ]; then
                    . "$d/rpm.sh" && echo "<<<Built $RPMFOLDERNAME>>>" && rm -rf $RPMFOLDERNAME #&& cd ..
                    cd $WORKDIR
                fi
            else
                if [ -f "$d/*.spec"]; then
                    rpm_nosh "$d"
                else
                    echo "Not enough information to build .rpm package"
                fi
            fi
            if [ -f "$d/droid.sh" ]; then
                if [ "$USE_DROIDSH_SCRIPTS" = "y" ]; then
                    . "$d/rpm.sh" && echo "<<<Built $DROIDFOLDERNAME>>>" && rm -rf $DROIDFOLDERNAME #&& cd ..
                    cd $WORKDIR
                fi
            else
                droid_nosh "$d"
            fi
        done
    fi
    if [ "$1" = "upload" ] ; then
        upload
    fi
    dustup
}

#Pull down all the updates from the source repositories.
update(){
    cd $WORKDIR
    for d in *; do
        if [ -d "$d/.git" ]; then
            cd $d
            git pull origin master
            cd $WORKDIR
        fi
    done
}

#Sign and update packages in remote repository
upload(){
    cd $WORKDIR
    rm -rf ../repository/packages/
    mkdir -p ../repository/packages/
    cp *.build *.changes *.tar.xz *.dsc *.deb ../repository/packages/
    if [ ! -d ../repository ]; then
        genrepo
    fi
    cd $WORKDIR
    cd ../repository/
    rm -rf debian
    ./apt-git --check
}

#generate regeneration script
genclone(){
    cd $WORKDIR
    GLOBIGNORE=.
    echo "#! /bin/sh" > ./.clone
    for subdir in *; do
        test -d "$subdir" || continue
        cd "$subdir"
        remote=$(git remote -v)
        for word in $remote; do
            if [ `echo "$word" | grep 'git@' ` ]; then
                echo "$word+$subdir" >> ../clone-$(date +%Y%m%d)
            fi
        done
        cd -
    done
    awk '!seen[$0]++' ./clone-$(date +%Y%m%d) > ./.clone
    rm ./clone-$(date +%Y%m%d)
    chmod a+x ./.clone
}

clone(){
    cd $WORKDIR
    for line in $(cat "./.clone"); do
		tmpline=$(echo "$line" | tr "+" " " )
		#git clone " $line" || git clone " "$(echo "$line" | sed 's|git@github.com:|https://github.com/|')
		echo " $tmpline" || echo " "$(echo "$tmpline" | sed 's|git@github.com:|https://github.com/|')
	done
    for d in *; do
        if [ -f "$d/gitrepos.sh" ]; then
            cd $d
            ./gitrepos.sh
            cd $WORKDIR
        fi
    done
}

force_update(){
    cd $WORKDIR
    for d in *; do
        if [ -d "$d/.git" ]; then
            cd $d && git pull
            cd $WORKDIR
        fi
    done
}

force_sub_update(){
    cd $WORKDIR
    for d in *; do
        if [ -d "$d/.git" ]; then
            cd $d && git commit -am "$(date)"
            git push --set-upstream origin master
            cd $WORKDIR
        fi
    done
}

#generate a repository.
genrepo(){ 
#    This command should be able to generate a repository for upload.
#    Right now I'm just using apt-git, which is just a little hack I use to
#    host a few debian packages on github pages. apt-git's probably going to
#    become pkg-git when it can also structure other types of repositories.
#    Besides that, it should also be able to do other things, like with aptly
#    and all the other tools for automatically structuring repositories. This
#    needs to be done in part to remove dependencies on github itself.
#    Bitbucket has a similar setup which is cool, but the fewer proprietary
#    dependencies the better and that means self hosting. Which is easy
#    because they're just https servers which means you can shoehorn one into
#    pretty much anything that'll give you the space to do it. Which makes
#    this all a little daunting, because my whole goal is to make this system
#    even more approachable, customizable, and decentralized and all those
#    options leave the definition of those terms open to interpretation.
    cd $WORKDIR
    if [ "$USE_APT_GIT" = "yes" ]; then
        if [ -d "$WORKDIR/../repository" ]; then
            if [ $(ls "$WORKDIR/*.deb") ]; then
                if [ $(cat "$WORKDIR/../repository/.debian" | grep "1") ]; then
                    git remote add debian "$GITHUB_URL/apt-git/apt-git.git"
                    git pull origin debian
                fi
            fi
            if [ $(ls "$WORKDIR/*.apk") ]; then
                if [ $(cat "$WORKDIR/../repository/.android" | grep "1") ]; then
                    git remote add droid "$GITHUB_URL/apt-git/fdroid-git.git"
                    git pull origin droid
                fi
            fi
            if [ $(ls "$WORKDIR/*.rpm") ]; then
               if [ $(cat "$WORKDIR/../repository/.redhat" | grep "1") ]; then
                   git remote add redhat "$GITHUB_URL/apt-git/rpm-git.git"
                   git pull origin redhat
               fi
            fi
        else
            git clone "$GITHUB_URL"repo-git/repo-git.git
            if [ $(ls "$WORKDIR/*.deb") ]; then
                if [ $(cat "$WORKDIR/../repository/.debian" | grep "1") ]; then
                    git remote add debian "$GITHUB_URL/apt-git/apt-git.git"
                    git pull origin debian
                fi
            fi
            if [ $(ls "$WORKDIR/*.apk") ]; then
                if [ $(cat "$WORKDIR/../repository/.android" | grep "1") ]; then
                    git remote add droid "$GITHUB_URL/apt-git/fdroid-git.git"
                    git pull origin droid
                fi
            fi
            if [ $(ls "$WORKDIR/*.rpm") ]; then
                if [ $(cat "$WORKDIR/../repository/.redhat" | grep "1") ]; then
                    git remote add redhat "$GITHUB_URL/apt-git/rpm-git.git"
                    git pull origin redhat
                fi
            fi
        fi
    fi
}
