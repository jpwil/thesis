#!/bin/bash
# clear.sh - Delete LaTeX build helper files

# List of common LaTeX temporary extensions
EXTS=(
  mtc* aux bbl bcf maf run.xml blg brf fdb_latexmk fls glo glg gls idx ilg ind
  lof log lot nav out snm synctex.gz toc vrb xdy bbl-SAVE-ERROR
)

echo "Cleaning LaTeX helper files in $(pwd)..."

for ext in "${EXTS[@]}"; do
  find . -type f -name "*.${ext}" -delete
done

echo "Done!"