set -e

rm -rf .next/ out/;
rm -f extension.zip;

yarn next build;
yarn next export;

mv out/_next out/assets && sed -i 's,/_next/,/assets/,g' out/**.html;
cp manifest.json ./out;

cd out
zip -r -FS ../extension.zip *;