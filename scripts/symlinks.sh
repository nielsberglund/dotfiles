create_symlinks() {

  info "iTerm plist"
  rm -f /Users/niels/Library/Preferences/com.googlecode.iterm2.plist
  ln -s /Users/niels/repos/dotfiles/iterm2/com.googlecode.iterm2.plist /Users/niels/Library/Preferences/com.googlecode.iterm2.plist
  chflags nouchg /Users/niels/Library/Preferences/com.googlecode.iterm2.plist
  success "Finished iTerm plist"

  info "OneNote plist"
  rm -f /Users/niels/Library/Containers/com.microsoft.onenote.mac/Data/Library/Preferences/com.microsoft.onenote.mac.plist
  mkdir -p /Users/niels/Library/Containers/com.microsoft.onenote.mac/Data/Library/Preferences
  ln -s /Users/niels/repos/dotfiles/onenote/com.microsoft.onenote.mac.plist /Users/niels/Library/Containers/com.microsoft.onenote.mac/Data/Library/Preferences/com.microsoft.onenote.mac.plist
  chflags nouchg /Users/niels/Library/Containers/com.microsoft.onenote.mac/Data/Library/Preferences/com.microsoft.onenote.mac.plist
  success "Finished OneNote plist"

  info "PowerPoint plist"
  rm -f /Users/niels/Library/Containers/com.microsoft.PowerPoint/Data/Library/Preferences/com.microsoft.PowerPoint.plist
  mkdir -p /Users/niels/Library/Containers/com.microsoft.PowerPoint/Data/Library/Preferences
  ln -s /Users/niels/repos/dotfiles/powerpoint/com.microsoft.PowerPoint.plist /Users/niels/Library/Containers/com.microsoft.PowerPoint/Data/Library/Preferences/com.microsoft.PowerPoint.plist
  chflags nouchg /Users/niels/Library/Containers/com.microsoft.PowerPoint/Data/Library/Preferences/com.microsoft.PowerPoint.plist
  success "Finished PowerPoint plist"

  info "Excel plist"
  rm -f /Users/niels/Library/Containers/com.microsoft.Excel/Data/Library/Preferences/com.microsoft.Excel.plist
  mkdir -p /Users/niels/Library/Containers/com.microsoft.Excel/Data/Library/Preferences
  ln -s /Users/niels/repos/dotfiles/excel/com.microsoft.Excel.plist /Users/niels/Library/Containers/com.microsoft.Excel/Data/Library/Preferences/com.microsoft.Excel.plist
  chflags nouchg /Users/niels/Library/Containers/com.microsoft.Excel/Data/Library/Preferences/com.microsoft.Excel.plist
  success "Finished Excel plist"

  info "Word plist"
  rm -f /Users/niels/Library/Containers/com.microsoft.Word/Data/Library/Preferences/com.microsoft.Word.plist
  mkdir -p /Users/niels/Library/Containers/com.microsoft.Word/Data/Library/Preferences/
  ln -s /Users/niels/repos/dotfiles/word/com.microsoft.Word.plist /Users/niels/Library/Containers/com.microsoft.Word/Data/Library/Preferences/com.microsoft.Word.plist
  chflags nouchg /Users/niels/Library/Containers/com.microsoft.Word/Data/Library/Preferences/com.microsoft.Word.plist
  success "Finished Word plist"

  info "Azure Data Studio settings"
  rm -f /Users/niels/Library/Application\ Support/azuredatastudio/User/keybindings.json
  mkdir -p /Users/niels/Library/Application\ Support/azuredatastudio/User
  ln -s /Users/niels/repos/dotfiles/ads/keybindings.json /Users/niels/Library/Application\ Support/azuredatastudio/User/keybindings.json
  chflags nouchg /Users/niels/Library/Application\ Support/azuredatastudio/User/keybindings.json

  rm -f /Users/niels/Library/Application\ Support/azuredatastudio/User/settings.json
  mkdir -p Users/niels/Library/Application\ Support/azuredatastudio/User
  ln -s /Users/niels/repos/dotfiles/ads/settings.json /Users/niels/Library/Application\ Support/azuredatastudio/User/settings.json
  chflags nouchg /Users/niels/Library/Application\ Support/azuredatastudio/User/settings.json
  success "Finished Azure Data Studio settings"

  info "VSCode settings"
  rm -f /Users/niels/Library/Application\ Support/Code/User/settings.json
  mkdir -p /Users/niels/Library/Application\ Support/Code/User
  ln -s /Users/niels/repos/dotfiles/vscode/settings.json /Users/niels/Library/Application\ Support/Code/User/settings.json
  chflags nouchg /Users/niels/Library/Application\ Support/Code/User/settings.json
  
  rm -f /Users/niels/Library/Application\ Support/Code/User/syncLocalSettings.json
  mkdir -p /Users/niels/Library/Application\ Support/Code/User
  ln -s /Users/niels/repos/dotfiles/vscode/syncLocalSettings.json /Users/niels/Library/Application\ Support/Code/User/syncLocalSettings.json
  chflags nouchg /Users/niels/Library/Application\ Support/Code/User/syncLocalSettings.json
  success "Finished VSCode settings"

  info "Git config"
  rm -f /Users/niels/.gitconfig
  ln -s /Users/niels/repos/dotfiles/git/.gitconfig /Users/niels/.gitconfig
  chflags nouchg /Users/niels/.gitconfig

  rm -f /Users/niels/.gitignore_global
  ln -s /Users/niels/repos/dotfiles/git/.gitignore_global /Users/niels/.gitignore_global
  chflags nouchg /Users/niels/.gitignore_global
  success "Git config"

  info "zshrc"
  rm -f /Users/niels/.zshrc
  ln -s /Users/niels/repos/dotfiles/zsh/.zshrc /Users/niels/.zshrc
  chflags nouchg /Users/niels/.zshrc
  success "Finished zshrc"


  info "Sublime Text"
  rm -rf /Users/niels/Library/Application\ Support/Sublime\ Text
  ln -s /Users/niels/repos/dotfiles/sublime/Sublime\ Text   /Users/niels/Library/Application\ Support/Sublime\ Text
  success "Finished Sublime Text"

  info "Pandoc"
  rm -rf /Users/niels/.local/share/pandoc
  mkdir -p /Users/niels/.local
  mkdir -p /Users/niels/.local/share
  ln -s /Users/niels/repos/dotfiles/pandocsrc/pandoc /Users/niels/.local/share/pandoc
  success "Finished Pandoc"
}

