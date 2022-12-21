create_symlinks() {

  info "iTerm plist"
  rm -f ~/Library/Preferences/com.googlecode.iterm2.plist
  ln -s ~/repos/dotfiles/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
  chflags nouchg ~/Library/Preferences/com.googlecode.iterm2.plist
  success "Finished iTerm plist"

  info "Office Settings"
  rm -f ~/Library/Preferences/com.microsoft.shared.plist
  ln -s ~/repos/dotfiles/office/com.microsoft.shared.plist ~/Library/Preferences/com.microsoft.shared.plist
  chflags nouchg ~/Library/Preferences/com.microsoft.shared.plist

  rm -f ~/Library/Preferences/com.microsoft.office.plist
  ln -s ~/repos/dotfiles/office/com.microsoft.office.plist ~/Library/Preferences/com.microsoft.office.plist
  chflags nouchg ~/Library/Preferences/com.microsoft.office.plist
  success "Finished Office Settings"


  info "Azure Data Studio settings"
  rm -f ~/Library/Application\ Support/azuredatastudio/User/keybindings.json
  mkdir -p ~/Library/Application\ Support/azuredatastudio/User
  ln -s ~/repos/dotfiles/ads/keybindings.json ~/Library/Application\ Support/azuredatastudio/User
  chflags nouchg ~/Library/Application\ Support/azuredatastudio/User/keybindings.json

  rm -f ~/Library/Application\ Support/azuredatastudio/User/settings.json
  mkdir -p ~/Library/Application\ Support/azuredatastudio/User
  ln -s ~/repos/dotfiles/ads/settings.json ~/Library/Application\ Support/azuredatastudio/User/settings.json
  chflags nouchg ~/Library/Application\ Support/azuredatastudio/User/settings.json
  success "Finished Azure Data Studio settings"

  info "VSCode settings"
  rm -f ~/Library/Application\ Support/Code/User/settings.json
  mkdir -p ~/Library/Application\ Support/Code/User
  ln -s  ~/repos/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
  chflags nouchg ~/Library/Application\ Support/Code/User/settings.json
  success "Finished VSCode settings"

  info "Git config"
  rm -f ~/.gitconfig
  ln -s ~/repos/dotfiles/git/.gitconfig ~/
  chflags nouchg ~/.gitconfig

  rm -f ~/.gitignore_global
  ln -s ~/repos/dotfiles/git/.gitignore_global ~/
  chflags nouchg ~/.gitignore_global
  success "Git config"

  info "zshrc"
  rm -f /Users/niels/.zshrc
  ln -s ~/repos/dotfiles/zsh/.zshrc ~/
  chflags nouchg ~/.zshrc
  success "Finished zshrc"

  info "p10k"
  rm -f /Users/niels/.p10k.zsh
  ln -s ~/repos/dotfiles/zsh/.p10k.zsh ~/
  chflags nouchg ~/.p10k.zsh
  success "Finished p10k"


  info "Sublime Text"
  rm -rf /Users/niels/Library/Application\ Support/Sublime\ Text/Packages/User
  mkdir -p /Users/niels/Library/Application\ Support/Sublime\ Text/Packages/User
  ln -s /Users/niels/repos/dotfiles/sublime/Sublime\ Text/Packages/User   /Users/niels/Library/Application\ Support/Sublime\ Text/Packages/
  success "Finished Sublime Text"

  info "Pandoc"
  rm -rf /Users/niels/.local/share/pandoc
  mkdir -p /Users/niels/.local
  mkdir -p /Users/niels/.local/share
  ln -s /Users/niels/repos/dotfiles/pandocsrc/pandoc /Users/niels/.local/share/pandoc
  success "Finished Pandoc"
}

