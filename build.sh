echo "Building app..."
npm run build

rm dist/index.html

cp -r dist/* .

git add .
git commit -m "Deploy: $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main

echo "✅ Done: Vue app deployed to root of repo!"
