#!/bin/bash
readonly INSTALL_PHRASE='Do you want to install'
readonly BASH_CMD='/bin/bash'
readonly GITHUB_URL='https://raw.githubusercontent.com/thomaspoignant/mac-dev-setup/dev'
readonly INSTALL_SCRIPTS_URL="$GITHUB_URL/install_scripts/"

# Import list of available apps.
#source /dev/stdin <<<"$(curl -fsSL "$GITHUB_URL/install_list.sh")"
source ./install_list.sh
source ./util.sh

function echoG() {
  printf "\e[0;32m%s\e[m\n" "$1"
}
function lineBreak() {
  printf "\n"
}

function loadFile() {
  #  $BASH_CMD <(curl -fsSL "$INSTALL_SCRIPTS_URL"/$1)
  $BASH_CMD install_scripts/$1
}

printf "\e[0;32m"
cat <<EOF
------------------------------------------------
    ____               _____      __
   / __ \___ _   __   / ___/___  / /___  ______
  / / / / _ \ | / /   \__ \/ _ \/ __/ / / / __ \\
 / /_/ /  __/ |/ /   ___/ /  __/ /_/ /_/ / /_/ /
/_____/\___/|___/   /____/\___/\__/\__,_/ .___/
                                       /_/
------------------------------------------------
Dev Setup will help you to configure your development environement.
We will ask you a few questions of what do you want to install in
your computer, and the script will download it and install it for you.

You can quit the installation at any moment by writing "quit" to any questions.


EOF
printf "\e[m"

declare -a installList

# Propose list of things to install.
for i in "${installable[@]}"; do
  title=$(printf "title_%s" "$i")
  description=$(printf "description_%s" "$i")
  link=$(printf "link_%s" "$i")
  printf "\e[0;32m%s\e[m\n%s\n%s\n" "${!title}" "${!description}" "${!link}"
  if yesNoQuestion "Do you want to install ${!title}? (yes or no) "; then
    installList+=("$i")
  fi
  printf "\n"
done

# Confirm install.
if [ ${#installList[@]} -eq 0 ]; then
  printf "\e[0;31m%s\e[m\n" "You have select nothing to install"
  exit 0
fi

echo "We will install all this components:"
for i in "${installList[@]}"; do
  title=$(printf "title_%s" "$i")
  printf "\e[1m\e[31m  - %s\e[m\n" "${!title}"
done

# Launch installation.
if yesNoQuestion "Starting the installation? (yes or no) "; then
  # Install prerequisites
  echoG "Installing prerequisites"
  lineBreak

  #$BASH_CMD <(curl -fsSL "$INSTALL_SCRIPTS_URL"/prerequisites.sh)
  loadFile 'prerequisites.sh'
  # Install what is need by the user
  for i in "${installList[@]}"; do
    title=$(printf "title_%s" "$i")
    echoG "Installing ${!title}"
    loadFile "$i".sh
    #$BASH_CMD <(curl -fsSL "$INSTALL_SCRIPTS_URL"/"$i".sh)
    lineBreak
  done
fi

echo 'END'
