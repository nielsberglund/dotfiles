#!/usr/bin/env bash


. scripts/utils.sh
. scripts/brew.sh
. scripts/osx.sh
. scripts/fonts.sh
. scripts/symlinks.sh
. scripts/clonerepos.sh

cleanup() {
  info "Finishing..."
}

wait_input() {
  read -p "Press enter to continue: "
}


info "Prompting for sudo pwd"
if sudo -v; then
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
  success "Sudo credentials updated."
else
  error "Could not get sudo credentials."
fi

main() {
  info "Installing ..."


  info "Installing Homebrew Packages"
  info "################################################"
  wait_input
  install_brew_packages
  success "Finished installing Homebrew packages"

  info "Installing Fonts"
  info "################################################"
  wait_input
  install_fonts
  success "Finished installing fonts"

  #info "Installing Oh-my-zsh"
  #info "################################################"
  #wait_input
  #install_oh_my_zsh
  #success "Finished installing Oh-my-zsh"

  info "Mac Configuration"
  info "################################################################################"
  wait_input
  setup_osx
  success "Finished configuring MacOS defaults. NOTE: A restart is needed"
  
  info "Symlinks"
  info "################################################################################"
  wait_input
  create_symlinks
  success "Finished creating symlinks"

  info "Clone Git Repos"
  info "################################################################################"
  wait_input
  clone_repos
  success "Finished cloning repos."

  
  success "Done"

  info "System needs to restart. Restart?"

  select yn in "y" "n"; do
    case $yn in
        y ) sudo shutdown -r now; break;;
        n ) exit;;
    esac
  done
}

main
