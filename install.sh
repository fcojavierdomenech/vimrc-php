cd ~/.vim

# VIM-PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#now, open vim and run :PlugInstall

#IDE-HELPER
# ide-helper for composer projects (vendor libs autocomplete)
composer require barryvdh/laravel-ide-helper
#now from the framework-project root run: `php artisan ide-helper:generate`
#also, it'll help if you extend your models to \Eloquent instead of \Model

#PHPCOMPLETE -> phpctags
#curl -Ss http://vim-php.com/phpctags/install/phpctags.phar > phpctags
#chmod +x phpctags
#sudo mv phpctags /usr/bin

#ECLIM
# install eclipse: https://eclipse.org/downloads/
# don't use eclipse installer, better untar directly

# install eclim, use eclim installer: http://sourceforge.net/projects/eclim/files/eclim/

# install patched font for terminal from: https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Medium/complete/Sauce%20Code%20Pro%20Medium%20Nerd%20Font%20Complete%20Mono.ttf (copying to ~/.local/share/fonts  closing all terminal windows and editing settings)

#if doesn't recognize colors at first:   ln -s plugged/vim-colorschemes/colors colors
