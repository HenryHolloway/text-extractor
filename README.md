# Text Extraction Tool

This tool allows you to select a portion of your screen to screenshot, runs OCR (Optical Character Recognition) on the screenshot, and copies the extracted text to your clipboard for easy pasting.

## Features

- Select a portion of the screen to capture.
- Extract text from the captured image using OCR.
- Automatically copy the extracted text to the clipboard.

## Demo

[DEMO.webm](https://github.com/user-attachments/assets/153f4de5-d491-4009-b867-df39a47e9dc1)

## Dependencies

- GNOME - for taking screenshots.
- `tesseract-ocr` - for performing OCR on the screenshot.
- `xclip` - for copying the extracted text to the clipboard.

## Installation

1. **Install dependencies:**

    On Debian-based systems (e.g., Ubuntu):
    ```bash
    sudo apt-get update
    sudo apt-get install tesseract-ocr xclip
    ```

    On Arch-based systems:
    ```bash
    sudo pacman -S tesseract xclip
    ```

2. **Clone the repository:**
    ```bash
    git clone https://github.com/henryholloway/text-extractor.git
    cd text-extractor 
    ```

3. **Make the script executable:**
    ```bash
    chmod +x textExtractor.sh
    ```

## Usage

Run the script:
```bash
./textExtractor.sh
```

## Setting Up a Keyboard Shortcut (GNOME)

To set up a custom keyboard shortcut (e.g., Win+Shift+T) to run the script, follow these steps:

```bash
# Set the script path, change to location of script
SCRIPT_PATH=~/textExtractor.sh

# Expand the tilde to the full path:
SCRIPT_PATH_EXPANDED=$(eval echo $SCRIPT_PATH)

# Set the custom keyboard shortcut:
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name 'Run textExtractor.sh'
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "/bin/bash $SCRIPT_PATH_EXPANDED"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding '<Shift><Super>T'
```

## Credits

Inspired by Microsoft's PowerToys.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
