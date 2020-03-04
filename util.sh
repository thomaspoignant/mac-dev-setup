function yesNoQuestion() {
  while true; do
    read -p "$1" yn
    case $yn in
    [Yy]*) return 0 ;;
    [Nn]*) return 1 ;;
    [Qq]*) exit ;;
    *) printf "Please answer yes or no." ;;
    esac
  done
}
