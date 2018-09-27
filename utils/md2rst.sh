#!/usr/bin/env bash
# Convert markdown to reStructruredText

for f in $(ls *.md)
do
    filename=$(cut -d'.' -f1 <<< ${f})
    pandoc --from=markdown --to=rst --output=${filename}.rst ${filename}.md
    echo "Convert ${filename}.rst -> ${filename}.md..."
done
echo "Done"

