#!/bin/sh

###############################################################################
# Git Auto-Completion
###############################################################################

echo "Downloading git-completion script"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash

###############################################################################
# Git Config & SSH Key Generation
###############################################################################

echo "Setting up Git Config and SSH Key Gen"

ssh-keygen -t rsa -C "me@robertwpearce.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub

echo "Now go online to GitHub.com > Settings > SSH & GPG Keys > New SSH Key and paste in the copied public key"
echo "***************"
echo "Make sure to create a new GitHub token, as well, and use that as your CLI GitHub Password"
