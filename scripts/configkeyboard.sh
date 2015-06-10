#!/bin/sh 
#Some  personal keyboard settings
function load_stickey {  
echo -e "Loading stickykey?? [y/n]"
read INPUT 
if [[ $INPUT == y ]]; then
  loadkeys ~/Dotfile/scripts/stickykey
  kbdrate -r 800 -d 500
  echo loadkeys stickykey
fi
}
load_stickey;

