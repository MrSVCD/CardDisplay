#!/bin/bash
echo "Rendering models."
cat model-list.txt | parallel {}

echo "Makeing a ZIP archive and removing the STLs after that."
if command -v advzip > /dev/null
then
    advzip -a -4 -i 15 CardDisplay.zip *.stl
else
    zip -v9 CardDisplay.zip *.stl
fi
rm *.stl
