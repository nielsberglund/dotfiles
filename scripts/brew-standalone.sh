
info "Prompting for sudo pwd"
if sudo -v; then
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
  success "Sudo credentials updated."
else
  error "Could not get sudo credentials."
fi

brew bundle --file=~/repos/dotfiles/Brewfile

