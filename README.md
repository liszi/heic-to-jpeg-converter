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

1. Clone this repo on a linux machine: `git clone https://github.com/liszi/heic-to-jpeg-converter.git`
2. Install dependencies. If you have Ubuntu 18.04, run `sudo apt install libheif-examples`
3. In command line, enter target directory, where you want to store the jpeg files.
4. Start conversion: `<path-to-git-repo>/heic-to-jpeg-convert.sh <path-to-heic-files>`


## Example run

If you have `hiec` files in `/home/jimmy/programs/heic-to-jpeg-converters` folder, and you cloned the repo to `/home/jimmy/programs/heic-to-jpeg-converter` folder,
and you want to save your images to `/home/jimmy/converted_images` folder do the next:

1. `cd /home/jimmy/converted_images`
2. `/home/jimmy/programs/heic-to-jpeg-converter /home/jimmy/programs/heic-to-jpeg-converter/*.HEIC`

## Arguments

Script takes one or multiple heic files as an argument. So you can use wildcards as an argument for converting multiple files at a time.
