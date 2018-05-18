#!/bin/bash

## Loop over all branches and
## calls `git branch -d <branch-name>`
## on every branch except current
function git_branch_cleanup {
  for _br in `git branch | grep '^\ '`
  do
    git branch -d $_br
  done
}
