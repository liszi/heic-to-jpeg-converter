#!/bin/bash
# Script for converting heif images to jpg.
# Dependency: heif-convert command


print_usage() {
    echo "Usage: ./heif-to-jpeg-convert.sh heif_file ..."
    echo "  Where: "
    echo "    heif_file: High Efficiency Image File Format file"
    echo ""
    echo "Example:"
    echo " ./heif-to-jpeg-convert.sh images/*.heif"
    echo "This command will convert all files in image folder, with heif extension to jpg into the working directory."

}

if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    print_usage
    exit 0
fi


if [ "$#" -lt 1 ]; then
    echo "You must provide at least one heif file as argument."
    print_usage
    exit 2
fi

command -v "heif-convert" >/dev/null 2>&1 || { echo "It requires heif-convert, but it is not installed, or not on the path."; exit 1; }

for file in "$@"
do
    filename=$(basename "$file")
    filename_without_extension="${filename%.*}"
    
    jpeg_filename="${filename_without_extension}.jpg"
    
    echo "Converting $file to $jpeg_filename"
    
    heif-convert "$filename" "$jpeg_filename"
done
