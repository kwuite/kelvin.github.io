#!/usr/bin/env bash

find "$ASSETS" \( -iname \*.jpg -o -iname \*.png -o -iname \*.webp -o -iname \*.svg \) -print0 | while read -r -d $'\0' file; do
  FILE_NAME=$(basename "$file")
  DIR=$(dirname "$file")
  DIR_TO_ARRAY=(`echo $DIR | tr '/' ' '`)
  LAST_FOLDER_NAME=${DIR_TO_ARRAY[-1]}

  printf "Uploading $file\n"
  printf "Filename=$FILE_NAME\n"
  printf "Directory=$DIR\n"
  printf "Tag=$LAST_FOLDER_NAME\n"
  printf $IMAGEKIT_PRIVATE_KEY
  printf "\n"

  # Upload
  curl -X POST "https://upload.imagekit.io/api/v1/files/upload" \
  -u ${IMAGEKIT_PRIVATE_KEY}: \
  -F "file=@${file}" \
  -F "fileName=$FILE_NAME" \
  -F "tags=$LAST_FOLDER_NAME" \
  -F "useUniqueFileName=false" \
  -F "overwriteFile=true" \
  -F "folder=/assets/$LAST_FOLDER_NAME"
done
