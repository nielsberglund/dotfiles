#!/usr/bin/env bash

. ./utils.sh

info "Test"

# DIR="$HOME/Library/Application Support/Code - Insiders/User"


info "VSCode Insiders settings"
DIR="$HOME/Library/Application Support/Sublime Text/Packages/User"
GITDIR="$HOME/repos/dotfiles/sublime/sublimetext/Packages/User"
# rm -f "$DIR/settings2.json"
mkdir -p "$DIR"
ln -s  "$GITDIR"   /Users/niels/Library/Application\ Support/Sublime\ Text/Packages/
chflags nouchg "$DIR/settings3.json"
success "Finished VSCode Insiders settings"



#if [ -d "$DIR" ]; then
  # Control will enter here if $<app name>.app exists.
  #info "VSCode Insiders exists"
# fi
 
info "Test Finished"