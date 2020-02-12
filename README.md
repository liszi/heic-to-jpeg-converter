# heic-to-jpeg-convert
Shell script for bulk-converting HEIC image files to jpeg. 

New apple phones use HEIC format for images. JPEG is much wiedly supported than HEIC, so heic-to-jpeg conversion is often needed.

HEIC stands for *High Efficiency Image Coding* and it also known as HEIF (High Efficiency Image File Format). See [wiki](https://en.wikipedia.org/wiki/High_Efficiency_Image_File_Format) for more details. 
.
This tool relies on *heif-convert* tool, which is part of the *libheif-examples* package on ubuntu 18.04.

## Dependency:
- linux
- heif-convert command on PATH. Installation on Ubuntu 18.04: `sudo apt install libheif-examples`

## Quickstart
1. Clone this repo on a linux machine
2. Install dependencies: on Ubuntu 18.04: `sudo apt install libheif-examples`
3. In command line, enter target directory, where you want to store the jpeg files.

./hiec-to-jpeg-convert.sh
