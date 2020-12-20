% GIT-ALL-REBASE(1) v1.0.0 | Git Manual
% Satoshi Ogata
% 2020-12-06

NAME
----

git-all-rebase - Rebase all local unmerged branches to specified branch

SYNOPSIS
--------

***git all-rebase*** &lt;branch&gt;  
***git all-rebase*** --version  
***git all-rebase*** --help

DESCRIPTION
-----------

Rebases all unmerged branches.

Suppose you have a commit tree repository like this:

```
*  (topic3)
| *  (topic5)
| *  (topic7, topic4)
|/
*    (HEAD -> develop)
|\
| | *  (topic2)
| | *
| |/
| *  (topic8, topic1)
|/
*    (main)
|\
| *
|/|
| | *  (topic6)
| |/
| *  (topic0)
|/
*
```

If you merge topic3 into develop from here, it will look like this:

```
*    (HEAD -> develop)
|\
| *  (topic3)
|/
| *  (topic5)
| *  (topic7, topic4)
|/
*
|\
| | *  (topic2)
| | *
| |/
| *  (topic8, topic1)
|/
*    (main)
|\
| *
|/|
| | *  (topic6)
| |/
| *  (topic0)
|/
*
```

Enter the following command for this repository:

`git all-rebase develop`

Then, it will be rebased as follows.

```
*  (topic2)
*
| *  (topic5)
| *  (topic7, topic4)
|/
| *  (topic6)
|/
*    (HEAD -> develop)
|\
| *  (topic3)
|/
*
|\
| *  (topic8, topic1)
|/
*    (main)
|\
| *
|/|
| *  (topic0)
|/
*
```

The process will be interrupted if there is a conflict during rebase, so manually resolve the conflict and re-execute the command.

OPTIONS
-------

**&lt;branch&gt;**:
Rebase target branch.

**\--version**:
Show version.

**\--help**:
Show help.
