mydir=$(readlink -f "$(dirname $0)")

for i in "$(dirname $0)"/dotfiles/*; do
    ln -s "$mydir/dotfiles/$(basename $i)" "$HOME/.$(basename $i)"
done
