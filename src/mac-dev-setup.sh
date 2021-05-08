#!/bin/bash

# Create a folder who contains downloaded things for the setup
INSTALL_FOLDER=~/.macsetup
mkdir -p $INSTALL_FOLDER
MAC_SETUP_PROFILE=$INSTALL_FOLDER/macsetup_profile

# install brew
if ! hash brew
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
else
  printf "\e[93m%s\e[m\n" "You already have brew installed."
fi

# CURL / WGET
brew install curl
brew install wget

{
  # shellcheck disable=SC2016
  echo 'export PATH="/usr/local/opt/curl/bin:$PATH"'
  # shellcheck disable=SC2016
  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"'
  # shellcheck disable=SC2016
  echo 'export PATH="/usr/local/opt/sqlite/bin:$PATH"'
}>>$MAC_SETUP_PROFILE

# git
brew install git                                                                                      # https://formulae.brew.sh/formula/git
# Adding git aliases (https://github.com/thomaspoignant/gitalias)
git clone https://github.com/thomaspoignant/gitalias.git $INSTALL_FOLDER/gitalias && echo -e "[include]\n    path = $INSTALL_FOLDER/gitalias/.gitalias\n$(cat ~/.gitconfig)" > ~/.gitconfig

brew install git-secrets                                                                              # git hook to check if you are pushing aws secret (https://github.com/awslabs/git-secrets)
git secrets --register-aws --global
git secrets --install ~/.git-templates/git-secrets
git config --global init.templateDir ~/.git-templates/git-secrets

# ZSH
brew install zsh zsh-completions                                                                      # Install zsh and zsh completions
{
  echo "if type brew &>/dev/null; then"
  echo "  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH"
  echo "  autoload -Uz compinit"
  echo "  compinit"
  echo "fi"
} >>$MAC_SETUP_PROFILE

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"# Install oh-my-zsh on top of zsh to getting additional functionality
# Terminal replacement https://www.iterm2.com
brew install --cask  iterm2
# Pimp command line
brew install micro                                                                                    # replacement for nano/vi
brew install lsd                                                                                      # replacement for ls
{
  echo "alias ls='lsd'"
  echo "alias l='ls -l'"
  echo "alias la='ls -a'"
  echo "alias lla='ls -la'"
  echo "alias lt='ls --tree'"
} >>$MAC_SETUP_PROFILE

brew install tree
brew install ack
brew install bash-completion
brew install jq
brew install htop
brew install tldr
brew install coreutils
brew install watch

brew install z
touch ~/.z
echo '. /usr/local/etc/profile.d/z.sh' >> $MAC_SETUP_PROFILE

brew install ctop

# fonts (https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)
brew tap homebrew/cask-fonts
brew install  --cask  font-jetbrains-mono
brew install  --cask  font-hack-nerd-font

## Browser
#brew cask install google-chrome
#brew cask install brave-browser

# Music / Video
brew install  --cask  spotify
brew install  --cask  vlc

# Productivity
brew install  --cask  kap                                                                                 # video screenshot
brew install  --cask  rectangle                                                                           # manage windows

# Communication
brew install  --cask  whatsapp
brew install --cask   telegram

# Dev tools
brew install --cask   ngrok                                                                               # tunnel localhost over internet.
brew install --cask  postman                                                                             # Postman makes sending API requests simple.

# IDE
#brew install --cask  jetbrains-toolbox
brew install --cask  visual-studio-code

# Language
## Node / Javascript
mkdir ~/.nvm
brew install nvm                                                                                     # choose your version of npm
nvm install node                                                                                     # "node" is an alias for the latest version
{
  echo "export NVM_DIR=\"$HOME/.nvm\""
  echo '[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm'
  echo '[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion'
}>>$MAC_SETUP_PROFILE

## Java
brew install java
#brew install maven # do not want to use maven
brew install gradle

## golang
{
  echo "# Go development"
  echo "export GOPATH=\"\${HOME}/.go\""
  echo "export GOROOT=\"\$(brew --prefix golang)/libexec\""
  echo "export PATH=\"\$PATH:\${GOPATH}/bin:\${GOROOT}/bin\""
}>>$MAC_SETUP_PROFILE
brew install go

## python
echo "export PATH=\"/usr/local/opt/python/libexec/bin:\$PATH\"" >> $MAC_SETUP_PROFILE
brew install python
pip install --user pipenv
pip install --upgrade setuptools
pip install --upgrade pip
brew install pyenv
# shellcheck disable=SC2016
echo 'eval "$(pyenv init -)"' >> $MAC_SETUP_PROFILE


## terraform
brew install tfenv
tfenv install latest
tfenv use latest 

# Databases
brew install  --cask dbeaver-community # db viewer
brew install libpq                  # postgre command line
brew link --force libpq
# shellcheck disable=SC2016
echo 'export PATH="/usr/local/opt/libpq/bin:$PATH"' >> $MAC_SETUP_PROFILE

# SFTP
brew install  --cask cyberduck

# Docker
brew install --cask docker
brew install bash-completion
brew install docker-completion
brew install docker-compose-completion
brew install docker-machine-completion

# AWS command line
brew install awscli # Official command line
# pip3 install saws    # A supercharged AWS command line interface (CLI).

# reload profile files.
{
  echo "source $MAC_SETUP_PROFILE # alias and things added by mac_setup script"
}>>"$HOME/.zsh_profile"

{
  echo "source $MAC_SETUP_PROFILE # alias and things added by mac_setup script"
}>>"$HOME/.zshrc"
# shellcheck disable=SC1090
source "$HOME/.zsh_profile"
source "$HOME/.zshrc"

{
  echo "source $MAC_SETUP_PROFILE # alias and things added by mac_setup script"
}>>~/.bash_profile
# shellcheck disable=SC1090
source ~/.bash_profile

## Frontend development
npm install -g @angular/cli

## Development folder setup
mkdir -p ~/Documents/development

### For Dotnet
#brew install  --cask dotnet-sdk

### Need to set the visual studio code font to be 

### For the DejaVu, use "DejaVuSansMono Nerd Font"
###  "terminal.integrated.fontFamily": "DejaVuSansMono Nerd Font"
### Download from https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete.ttf


## For github Desktop
#brew  install --cask --appdir="/Applications" github


# Install video conference, webex, microsoft team,zoom
#brew install --cask webex-meetings
brew  install --cask microsoft-teams
brew install --cask zoom

## install vmfusion and virtual box
## Follow from https://gist.github.com/tomysmile/0618f1aa16341706940ed36b423b431c
brew install --cask vmware-fusion
brew install --cask virtualbox
brew install --cask vagrant
brew install --cask vagrant-manager


## For video editing
#brew --cask uninstall camtasia

### For AZURE
brew --cask azure-cli

### For google drive back up
#brew install --cask google-backup-and-sync


## Install android studio for mobile development
brew install --cask android-studio

## Flutter
git clone https://github.com/flutter/flutter.git -b stable --depth 1

mkdir ~/src 
mv flutter ~/src

echo 'export PATH="$PATH:${HOME}/src/flutter/bin"' >> $MAC_SETUP_PROFILE
