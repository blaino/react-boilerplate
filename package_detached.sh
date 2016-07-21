#/bin/bash

PKG_DIR="/tmp/mxstbr-package"

# do this after clone the repo via:
#   git clone --depth=1 https://github.com/arw180/react-boilerplate.git

# Ensure your current shell is loaded with node LTS and npm 3.x. Run
# from top level of project

# we don't need to run the setup script like the doc says
rm internals/scripts/setup.js
npm install
# remove encrypted file (causes problems elsewhere)
rm node_modules/tar/test/cb-never-called-1.0.1.tgz
npm run clean
rm -Rf .git/
rm -Rf .github/
mkdir -p $PKG_DIR
rm -Rf $PKG_DIR/*
cp -r . $PKG_DIR/
tar czfC mxstbr-react-boilerplate-mod-`date +"%m-%d-%Y"`.tar.gz /tmp mxstbr-package
echo "Created boilerplate tarball"
