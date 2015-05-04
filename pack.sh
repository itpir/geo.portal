#!/bin/bash

# used for breaking down development files into build assets

# github repo
out=$1

# directory of this file (should be same as development files)
dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# general
cp "$dir"/README.md "$out"/
cp "$dir"/setup.md "$out"/
cp "$dir"/pack.sh "$out"/
cp "$dir"/build.sh "$out"/
# cp "$dir"/.gitignore "$out"/

# usr
mkdir -p "$out"/usr
cp -r "$dir"/tmp "$out"/usr/tmp
cp "$dir"/toolbox.json "$out"/usr
cp "$dir"/nav.php "$out"/usr

# build
mkdir -p "$out"/dist
cp -r "$dir"/libs "$out"/dist/libs
cp "$dir"/edit.php "$out"/dist
cp "$dir"/edit.css "$out"/dist
cp "$dir"/edit.js "$out"/dist
cp "$dir"/index.php "$out"/dist
cp "$dir"/maps-style.css "$out"/dist
cp "$dir"/map_layers.js "$out"/dist
cp "$dir"/process.php "$out"/dist
cp "$dir"/schema.json "$out"/dist
