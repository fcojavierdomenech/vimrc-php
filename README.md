### VIMRC-PHP

Vim settings for php environments (also frameworks). I switched to neovim, so some plugin might not work on Vim.

To install just clone this repo from your .vim folder and change the vimrc file to:
`source ~/.vim/vimrc-php/vimrc`

There is also an install.sh file where all the extra libraries needed to complete the settings are listed, and their commands to do it.

The install.sh should set up everything, but I suggest you to execute each command separatelly on your own.

This vimrc requires vim-plug, so better to install all the extras in install.sh before launching vim.

I'm used to start vim from the project root directory.


### BEFORE GOING ON WITH THE install.sh:

Donwload a patched font of your like for coding, this is mine: https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/SourceCodePro/Medium/complete/Sauce%20Code%20Pro%20Medium%20Nerd%20Font%20Complete%20Mono.ttf and place it at the $HOME dir

For laravel projects code-intellisense:
    ide-helper for composer projects (vendor libs autocomplete)
    `composer require barryvdh/laravel-ide-helper`

    Now from the framework-project root run: `php artisan ide-helper:generate`
    also, it'll help if you extend your models to \Eloquent instead of \Model

For debugging capabilities, Vdebug it's used, see github for installation/usage instructions: https://github.com/joonty/vdebug
Xdebug installation: https://xdebug.org/wizard.php

Optionally install these syntax checkers:
composer global require friendsofphp/php-cs-fixer
composer global require "phpmd/phpmd=*"
composer global require "squizlabs/php_codesniffer=*"
