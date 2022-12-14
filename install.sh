installed_dir="$HOME/.x"
rm -rf "$installed_dir"
git clone git@github.com:krist7599555/x.git "$installed_dir"

if [[ :$PATH: == *:"$installed_dir":* ]] ; then
    echo "PATH ~/.x already exists"
else
    echo "Adding PATH $installed_dir to .zshrc"
    export PATH="$installed_dir:$PATH"
    echo "export PATH=\"$installed_dir:\$PATH\"" >> ~/.zshrc
    echo "Adding PATH Done"
fi 

chmod -R +x "$installed_dir"
x version
