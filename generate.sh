pushd Homebrew > /dev/null;
bash generate.sh;
popd > /dev/null;

pushd VSCode > /dev/null;
bash generate.sh;
popd > /dev/null;

pushd Bash > /dev/null;
bash generate.sh;
popd > /dev/null;

pushd Zsh > /dev/null;
bash generate.sh;
popd > /dev/null;

pushd Ssh > /dev/null;
bash generate.sh;
popd > /dev/null;

pushd Git > /dev/null;
bash generate.sh;
popd > /dev/null;
