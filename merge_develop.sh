#!/bin/sh

currentBranch=$(git rev-parse --abbrev-ref HEAD)

if [[ $currentBranch == feature/* ]];
	then echo "Merging origin develop branch in current branch";
		git fetch;
		git pull origin develop;
fi