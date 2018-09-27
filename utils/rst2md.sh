#!/usr/bin/env bash
# Convert markdown to reStructruredText

for f in $(ls *.rst)
do
    filename=$(cut -d'.' -f1 <<< ${f})
    pandoc --from=rst --to=markdown --output=.${filename}.md ${filename}.rst
    echo "Convert ${filename}.rst -> .${filename}.md..."
done
echo "Done"

