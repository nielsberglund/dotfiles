#! /usr/bin/env bash

DIR=$(dirname "$0")
cd "$DIR"

. ./utils.sh

COMMENT=\#*

sudo -v

info "Installing Brewfile packages..."
brew bundle
success "Finished installing Brewfile packages."