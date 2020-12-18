% GIT-MAKE-CHANGELOG(1) v1.0.0 | Git Manual
% Satoshi Ogata
% 2020-12-06

NAME
----

git-make-changelog - Make changelog automatically under "Git awesome rebase flow".

SYNOPSIS
--------

***git make-changelog***  [tag-to-be-used-in-the-future [pull-request-number]]  
***git make-changelog*** --version  
***git make-changelog*** --help

DESCRIPTION
-----------

Make changelog automatically by commit log if your repository follow "Git awesome rebase flow".

OPTIONS
-------
**[tag-to-be-used-in-the-future]**:
The change history is created assuming that the current unmerged branch is merged and tagged with the specified tag if a tag name is specified.

**[pull-request-number]**:
The pull request number if exists.

**\--version**:
Show version.

**\--help**:
Show help.
