#!/usr/bin/env bash

. ./utils.sh

info "Prompting for sudo pwd"
if sudo -v; then
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
  success "Sudo credentials updated."
else
  error "Could not get sudo credentials."
fi


DIR=$(dirname "$0")
cd "$DIR"

COMMENT=\#*

REPO_PATH="$HOME/repos/"

cd ~/repos/dotfiles/gitrepos



  # loop through files with a specific extension and read them line by line
  for file in $(find . -type f -name "*.list"); do
    # get the filename without the extension
    folder=$(basename "$file" | cut -d. -f1)
    info "Making folder $folder and cloning repositories..."
    mkdir -p "$REPO_PATH$folder"
    while read -r repo; do
      # do something with the line
      if [[ $repo == $COMMENT ]];
      then
        continue; else
        pushd "$REPO_PATH/$folder" &> /dev/null
        info "About to clone $repo"
        git clone $repo &> /dev/null
        if [ $? -eq 128 ]; then
          warn "Repo: $repo already exists. Skipping..."
          continue
        else
          success "Cloned $repo"
        fi
        popd &> /dev/null
      fi
    done < "$file"
    success "Finished cloning repositories in file $file"
    cd ~/repos/dotfiles/gitrepos
  done

