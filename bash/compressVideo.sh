#!/bin/bash

# Requirements
# - A Linux command line terminal.
#   - Install WSL on windows 10 if you are not a Linux user: https://youtu.be/5RTSlby-l9w
# - Install ffmpeg video tool for Linux command line: https://youtu.be/Ke8Rc_h_7Ys
# - Give this script permission to execute with this command (run this command from the containing folder of this script):
#     chmod 744 compressVideo.sh

# Description
# This script compresses a given video file.
# Creates a compressed version of the given video file, inside the same directory as the original file.
# You may call this script from a ssh session, it doesn't shut down on losing connection to the ssh session.

# Usage
# In a Linux command line terminal type this command (run this command from the containing folder of this script):
#   bash compressVideo.sh /path/to/input/video.mkv

# Example
# Simple use.
#   - The video file is /mnt/d/videos/video.mkv
#   - The script is in /home/user_name/scripts/compressVideo.sh
# Commands:
# cd /home/user_name/scripts/
# bash compressVideo.sh /mnt/d/videos/video.mkv

# Author: jorge.ricardo.escobar@gmail.com
# Created: 2022-07-31 16:38:22
# Last Modified: 2022-07-31 19:10:58

# make the script run even if you close the terminal window or session.
$0 < /dev/null &> /dev/null & disown
# exit 0

# do stuff here

LINE="$1"
INPUTFILE="$(basename -- "$LINE")" # Video file to compress.
OUTPUTFILE="compressed_$(basename "$INPUTFILE")" # Compressed video file.
DIRECTORY="$(readlink -f "$LINE")" # Full path and name to input video file.
DIRECTORY="$(dirname "$DIRECTORY")" # Path to input video file.

function usage () { # Function: Print a help message.
  echo "Usage: $0 /input/video.mkv" 1>&2 
}

function exit_abnormal () { # Function: Exit with error.
  usage
  exit 1
}

function compressVideo () { # Compresses video file.
    ffmpeg -hide_banner -loglevel error -nostdin -n -i "${DIRECTORY}/${INPUTFILE}" -vcodec libx265 -x265-params log-level=error -crf 24 "${DIRECTORY}/${OUTPUTFILE}" >> results.log &   
}

compressVideo
