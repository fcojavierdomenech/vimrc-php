cd ~/.vim

# VIM-PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#now, open vim and run :PlugInstall

# CTAGS
# this gets a patched ctags improoved for php
mkdir tmp_ctags
cd tmp_ctags
wget "https://github.com/shawncplus/phpcomplete.vim/raw/master/misc/ctags-5.8_better_php_parser.tar.gz" -O ctags-5.8_better_php_parser.tar.gz
tar xvf ctags-5.8_better_php_parser.tar.gz
./configure
make
sudo make install
cd ..
rm -rf tmp_ctags
ctags --version

#IDE-HELPER
# ide-helper for composer projects (vendor libs autocomplete)
composer require barryvdh/laravel-ide-helper
#now from the framework-project root run: `php artisan ide-helper:generate`
#also, it'll help if you extend your models to \Eloquent instead of \Model

#ECLIM
# install eclipse: https://eclipse.org/downloads/
# don't use eclipse installer, better untar directly

# install eclim, use eclim installer: http://sourceforge.net/projects/eclim/files/eclim/
