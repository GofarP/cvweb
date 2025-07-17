echo "Building app..."
npm run build

# Move index.html from dist to root
mv dist/index.html .

# Copy remaining dist files
cp -r dist/* .

git add .
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main

echo "✅ Done: Vue app deployed to root of repo!"
