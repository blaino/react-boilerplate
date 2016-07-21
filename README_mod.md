README (Modified)
=============================
This fork of mxstbr's react-boilerplate makes the following modifications:
* adds material-ui, chart.js,
* removes loading of webfont from Google and configures a local font instead
* adds a config.js file for easy manipulation of config parameters in deployment

To generate the 'detached' boilerplate, first be sure that a node LTS
environment is loaded in the current shell and that npm is v 3.x
```
git clone --depth=1 https://github.com/arw180/react-boilerplate.git
# we don't need to run the setup script like the doc says
rm internals/scripts/setup.js
npm install
# remove encrypted file (causes problems elsewhere)
rm node_modules/tar/test/cb-never-called-1.0.1.tgz
npm run clean
rm -Rf .git/
rm -rF .github/
tar czf mxstbr-react-boilerplate-mod-`date +"%m-%d-%Y"`.tar.gz .
```
