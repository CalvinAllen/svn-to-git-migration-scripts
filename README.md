As part of our investment in tooling and developer happiness, we are migrating our code/repositories from SVN to Git.

The bash scripts found in this repo assist in that transition.

These scripts should be ran on a "fresh" svn-to-git repo, and not again once pushed.

---

Use the authors-transform.txt file, located in this repository, when attempting an SVN-to-Git migration

---

With git installed, issue a command similar to this, to perform the initial clone:

```
git svn clone http://source.heuristics.net:81/svn/hs_products/learningbuilder_IntegrationHub --prefix=svn/ --no-minimize-url --ignore-paths="docs|marketing|materials|sandbox" --authors-file "authors-transform.txt" --stdlayout D:\Heuristics\Projects\LB-INTEGRATION-HUB-GIT
```

1. Change the source URL to the repo you want to migrate
2. Modify '--ignore-paths' if you want to skip over any extraneous information you don't want to migrate.
3. Use the proper path for the 'authors-transform.txt' file
4. Modify the final path of the command to be the directory/git repo that you want to create.

This step might take *weeks* to complete, depending on the history in the repo.
