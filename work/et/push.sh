#!/bin/bash
cd /home/et/Liberty_savannah

{
    git fetch origin
    echo
    for branch in $(git branch -r | cut -c3- | grep ^origin/ | grep -v HEAD | cut -c8-); do
        git checkout $branch
        echo
        git merge --ff-only origin/$branch
        git push github $branch:$branch
    done
<<<<<<< HEAD
} 2> pull.err > ../pull.out
=======
    git push --tags github :
} 2> ../pull.err > ../pull.out
>>>>>>> 9fbc0077bcd1bd24a6475b7b701254f9c0c83757
