# git-hooks

Collection of scripts I like to use in my git hooks.

I found myself copy pasting these scripts around inside different git hooks so I figured I'd put go DRY and put them in a single location.

## Usage

1. Clone this repo
2. Inside any git hook run `bash <path_to_script>`

## Available scripts

**merge_develop.sh**

This script checks if you're on a `feature/*` branch, if you are it merges the remote develop in the current branch. makes sure you're _nearly_ almost using the newest code. I like putting this in `post-checkout` to make sure I always have the latest changes from `develop`.

**npm_install.sh**

Runs `npm install`, useful whenever you'r working on a front-end project. I like to use it in `post-merge` so I always have the latest packages from remote installed.

**pull.sh**

`Pulls` the latest changes for this branch from the repository. I like to put this in `post-checkout`, makes sure I always have the latest changes from remote in local branches.

**artisan_migrate.sh**

Runs `php artisan migrate`, I like to put this in `post_merge` to keep my database up-to-date.

**composer_install.sh**

Runs `composer install`, I like to put this in `post_merge` to keep my dependencies up-to-date.