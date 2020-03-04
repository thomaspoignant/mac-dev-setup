#!/bin/bash

installable=(
  'oh_my_zsh'
  'docker'
  'fonts'
  'git'
  'gitalias'
  'iterm'
  'aws_cli'
  #'git_secrets'\
  #'webstorm'\
  #'cyberduck'\
  #'slack'\
  #'pip'
)
# GIT
declare title_git="GIT"
declare description_git="Should I really present GIT?"
declare link_git="https://git-scm.com/"

# GIT Alias
declare title_gitalias="GIT Alias"
declare description_gitalias="Some great aliases to make your life easier when using GIT command line."
declare link_gitalias="https://github.com/thomaspoignant/gitalias"

# OH MY ZSH
declare description_oh_my_zsh="Oh My Zsh is an open source, community-driven framework for managing your zsh configuration."
declare title_oh_my_zsh="Oh My Zsh"
declare link_oh_my_zsh="https://github.com/ohmyzsh/ohmyzsh"

# DOCKER
declare title_docker="Docker"
declare description_docker="Container runtime"
declare link_docker="https://www.docker.com/"

# DEV FONTS
declare title_fonts="Development fonts"
declare description_fonts="It will install development fonts (fira-code, jetbrains-mono)"
declare link_fonts=""

declare title_iterm="iTerm2"
declare description_iterm="iTerm2 brings the terminal into the modern age with features you never knew you always wanted."
declare link_iterm="https://www.iterm2.com/"
