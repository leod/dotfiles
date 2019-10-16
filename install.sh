mydir=$(readlink -f "$(dirname $0)")

echo Creating symlinks in '`'$HOME"':"
for i in "$(dirname $0)"/dotfiles/*; do
    echo -n '-> `'$(basename $i)"' "
    if [ ! -e "$HOME/.$(basename $i)" ]; then
        ln -s "$mydir/dotfiles/$(basename $i)" "$HOME/.$(basename $i)"
        echo "done."
    else
        echo "already exists."
    fi
done

echo Installing to '`'$HOME/.bashrc"'"...
grep -F "bashrc.dotfiles" "$HOME/.bashrc" || (echo -e '\n# Added by leod/dotfiles/install.sh\nsource ~/.bashrc.dotfiles' >> "$HOME/.bashrc")

echo Done.
