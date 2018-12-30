call pelpub.bat
git add -A
git commit -m "Deploying changes"
pushd output
git add -A
git commit -m "Deploying changes"
git push origin master
popd
