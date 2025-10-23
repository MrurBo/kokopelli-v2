mkdir logs
cd logs
npx lighthouse --view http://localhost:4000/category/rape --output html --output-dir log.html
cd ..