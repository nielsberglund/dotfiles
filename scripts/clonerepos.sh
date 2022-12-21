#! /usr/bin/env sh

reset_color=$(tput sgr 0)

info() {
  printf "%s[*] %s%s\n" "$(tput setaf 4)" "$1" "$reset_color"
}

success() {
  printf "%s[*] %s%s\n" "$(tput setaf 2)" "$1" "$reset_color"
}

err() {
  printf "%s[*] %s%s\n" "$(tput setaf 1)" "$1" "$reset_color"
}

warn() {
  printf "%s[*] %s%s\n" "$(tput setaf 3)" "$1" "$reset_color"
}

DIR=$(dirname "$0")
cd "$DIR"

COMMENT=\#*

REPO_PATH="$HOME/repos/"

cd ~/repos/dotfiles/gitrepos

clone_repos() {

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
}