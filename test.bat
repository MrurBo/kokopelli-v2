mkdir logs
cd logs
npx lighthouse --view http://localhost:4000/ --output html --output-dir index.html && npx lighthouse --view http://localhost:4000/category/rape --output html --output-dir category/rape.html && cd ..