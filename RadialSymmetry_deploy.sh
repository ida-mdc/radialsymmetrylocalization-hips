#!/bin/bash

# We'll use the standard scijava script for maven deployment
#mvn -Pdeploy-to-imagej deploy --settings settings.xml

echo
echo "====== Generating Fiji installation ======"
sh populate_fiji.sh

echo
echo "====== Uploading to RadialSymmetry update site ======"
cd Fiji.app
chmod a+x ../upload-site.sh
../upload-site.sh RadialSymmetry RadialSymmetry

