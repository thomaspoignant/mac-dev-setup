# From https://gist.github.com/jexchan/5754956

# For mac screenshot setting



echo "Where do you want screenshots to be stored? (hit ENTER if you want ~/Desktop as default)"
read screenshot_location
if  [[ -z "${screenshot_location}" ]];
then
    echo "Setting location to ~/Desktop"
    defaults write com.apple.screencapture location -string "$HOME/Desktop"
else
    echo "Setting location to ~/$screenshot_location"
    defaults write com.apple.screencapture location -string "$HOME/$screenshot_location"
fi
  
echo "What format should screenshots be saved as? (options: BMP, GIF, JPG, PDF, TIFF) "
read screenshot_format
if  [[ -z "${screenshot_format}" ]];
then
    echo "Setting screenshot format to PNG"
    defaults write com.apple.screencapture type -string "png"
else
    echo "Setting screenshot format to $screenshot_format"
    defaults write com.apple.screencapture type -string "$screenshot_format"
fi