---
layout: default
title: Page/Post Title
---
# Git stuff

### Git sync Fork with Main line

See: [https://help.github.com/articles/syncing-a-fork](https://help.github.com/articles/syncing-a-fork "https://help.github.com/articles/syncing-a-fork") 

### **Reconnect with Detached head**

When git status notifies you that you have a detached head:
	
	git checkout master
	git pull

### **Force your fork to current upstream state**
This will discard all changes from your current fork and resync to the upstream master

	git fetch upstream
	git checkout master
	git reset --hard upstream/master  
	git push origin master --force 

### **Rebase to capture upstream changes**

If changes have occurred on the main line and you want to keep what you have been working on, you need to rebase your work to what is up there.

**First commit or stash your work:**

	commit 
	or
	stash


**Then rebase to what is in remotes:**

	git fetch 
	git rebase origin/master
	git fetch upstream 
	git rebase upstream/master
	
or
	
	git merge upstream/master



### Discard changes in your local copy and re-establish your fork

To get back to the state of your fork:

	git fetch origin
	git reset --hard origin/master