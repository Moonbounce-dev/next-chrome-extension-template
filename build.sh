# Throw on errors and warnings.
set -e

# Clean up.
rm -rf .next/ out/;
rm -f extension.zip;

# Build with Next and export to static HTML.
yarn next build;
yarn next export;

# Copy the manifest to out/.
cp manifest.json ./out;

# Rename /_next/ dir to /assets/ to prevent Chrome errors.
mv out/_next out/assets;
sed -i 's,/_next/,/assets/,g' out/**.html;
sed -i 's,/_next/,/assets/,g' $(find out/ -type f -name "**.js");

# Build extension ZIP.
cd out
zip -r -FS ../extension.zip *;