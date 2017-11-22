#! /bin/sh

git filter-branch -f --env-filter "GIT_AUTHOR_NAME='tatsuroro'; GIT_AUTHOR_EMAIL='me@tatsuroro.com'; GIT_COMMITTER_NAME='tatsuroro'; GIT_COMMITTER_EMAIL='me@tatsuroro.com';" HEAD
