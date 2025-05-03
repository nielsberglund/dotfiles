#!/usr/bin/env bash

. ./utils.sh

info "Test"

# DIR="$HOME/Library/Application Support/Code - Insiders/User"

if [ -d "/Users/nielsb/.vscode-insiders" ]; then
    info "VSCode Insiders settings"
    DIR="$HOME/Library/Application Support/Code - Insiders/User"
    rm -f "$DIR/settings2.json"
    mkdir -p "$DIR"
    ln -s  ~/repos/dotfiles/vscodeinsiders/settings2.json "$DIR/settings3.json"
    chflags nouchg "$DIR/settings3.json"
    success "Finished VSCode Insiders settings"
fi



#if [ -d "$DIR" ]; then
  # Control will enter here if $<app name>.app exists.
  #info "VSCode Insiders exists"
# fi
 
info "Test Finished"