#!/bin/bash

# Define a temporary directory
TMP_DIR=$(mktemp -d)

# Take a screenshot of the selected area and save it as temp.png in the temporary directory
gnome-screenshot -a -f "$TMP_DIR/temp.png"

# Extract text from the screenshot using Tesseract and save it as temp.txt in the temporary directory
tesseract "$TMP_DIR/temp.png" "$TMP_DIR/temp"

# Open the extracted text file with the default text editor
head -n -1 "$TMP_DIR/temp.txt" | xclip -sel clip
