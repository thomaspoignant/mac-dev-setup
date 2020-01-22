#!/bin/bash

installable=(
  'oh_my_zsh'
  'docker'
  'fonts'
  'git'
  #'iTerm2'\
  #'aws_cli'\
  #'git_secrets'\
  #'webstorm'\
  #'cyberduck'\
  #'slack'\
  #'pip'
)

# OH MY ZSH
declare description_oh_my_zsh="Oh My Zsh is an open source, community-driven framework for managing your zsh configuration."
declare title_oh_my_zsh="Oh My Zsh"
declare link_oh_my_zsh="https://github.com/ohmyzsh/ohmyzsh"

declare title_git="GIT"
declare description_git="Should I really present GIT?"
declare link_git=""

# DOCKER
declare title_docker="Docker"
declare description_docker="Container runtime"
declare link_docker="https://www.docker.com/"

# DEV FONTS
declare title_fonts="Development fonts"
declare description_fonts="It will install development fonts (fira-code, jetbrains-mono)"
declare link_fonts=""
