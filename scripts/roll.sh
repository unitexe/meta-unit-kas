#!/bin/bash

# Usage: ./roll.sh ../include/layers

set -e

target_files=("main.yml" "walnascar.yml")

# For each layer directory...
for dir in $1*/ ; do
    layer_name=$(basename $dir)

    # Extract remote url
    if [ -f "${dir}remote.yml" ]; then
        remote=$(yq --arg layer "$layer_name" '.repos.[$layer].url' ${dir}remote.yml | tr -d '"')
    fi

    # For each target file in layer directory...
    for file in "${target_files[@]}"; do

        # If target file exists...
        if [ -f "$dir$file" ]; then
            # Extract branch        
            branch=$(yq --arg layer "$layer_name" '.repos.[$layer].branch' $dir$file | tr -d '"')
            
            # Extract current commit
            commit=$(yq --arg layer "$layer_name" '.repos.[$layer].commit' $dir$file | tr -d '"')

            # Determine latest commit for given branch
            latest_commit=$(git ls-remote $remote refs/heads/$branch | cut -f 1)

            # Update commit if newer commit available.
            if [[ "$commit" != "$latest_commit" ]]; then
                echo Updating $layer_name...
                echo -e "\tBranch: $branch"
                echo -e "\tOld commit: $commit"
                echo -e "\tNew commit: $latest_commit"
                echo -e "\tRemote: $remote"
                sed -i "s|$commit|$latest_commit|g" $dir$file
            fi    
        fi
    done
    echo "---"
done
