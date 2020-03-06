#!/bin/bash

# Create a folder who contains downloaded things for the setup
INSTALL_FOLDER=~/.macsetup
mkdir -p $INSTALL_FOLDER
MAC_SETUP_PROFILE=$INSTALL_FOLDER/macsetup_profile

# install brew
hash brew
if [ "$?" -ne "0" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
else
  printf "\e[93m%s\e[m\n" "You already have brew installed."
fi

# CURL / WGET
brew install curl
brew install wget

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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"# Install oh-my-zsh on top of zsh to getting additional functionality
# Terminal replacement https://www.iterm2.com
brew cask install iterm
# Pimp command lin
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

# fonts (https://github.com/tonsky/FiraCode/wiki/Intellij-products-instructions)
brew cask install font-jetbrains-mono-powerline
brew cask install font-jetbrains-mono

# Browser
brew cask install google-chrome
brew cask install firefox
brew cask install microsoft-edge

# Music / Video
brew cask install spotify
brew cask install vlc

# Productivity
brew cask install evernote                                                                            # cloud note
brew cask install kap                                                                                 # video screenshot
brew cask install rectangle                                                                           # manage windows

# Communication
brew cask install slack
brew cask install whatsapp

# Dev tools
brew cask install ngrok                                                                               # tunnel localhost over internet.
brew cask install postman                                                                             # Postman makes sending API requests simple.

# IDE
brew cask install intellij-idea-ce
brew cask install visual-studio-code

# Language
## Node / Javascript
brew install nvm                                                                                     # choose your version of npm
nvm install node                                                                                     # "node" is an alias for the latest version

## Java
brew cask install java

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
echo 'eval "$(pyenv init -)"' >> $MAC_SETUP_PROFILE


## terraform
brew install terraform
terraform -v

# Databases
brew cask install dbeaver-community # db viewer
brew install libpq                  # postgre command line
brew link --force libpq

# SFTP
brew cask install cyberduck

# Docker
brew cask install docker
brew install bash-completion
brew install docker-completion
brew install docker-compose-completion
brew install docker-machine-completion

# AWS command line
brew install awscli # Official command line
pip install saws    # A supercharged AWS command line interface (CLI).

# reload profile files.
{
  echo "source $MAC_SETUP_PROFILE # alias and things added by mac_setup script"
}>>~/.zsh_profile
source ~/.zsh_profile

{
  echo "source $MAC_SETUP_PROFILE # alias and things added by mac_setup script"
}>>~/.bash_profile
source ~/.bash_profile