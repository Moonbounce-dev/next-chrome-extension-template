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
sed -i 's,/_next/,/assets/,g' $(find out/ -type f -name "**.js" -o -name "**.html");

# Ensure `zip` is available.
if ! command -v zip &> /dev/null
then
    echo "zip command could not be found. Skipping."
    exit
fi

# Build extension.zip.
cd out;
zip -r -FS ../extension.zip *;