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

On your Konsole go to
    settings-> Edit current profile -> Appearance-> Select Font
and select your new font

For debugging capabilities, [Vdebug](https://github.com/neoclide/coc.nvim) it's used, see github for installation/usage instructions. 
Xdebug installation: https://xdebug.org/wizard.php

Optionally install these syntax checkers:

`composer global require friendsofphp/php-cs-fixer`

`composer global require "phpmd/phpmd=*"`

`composer global require "squizlabs/php_codesniffer=*"`

For code intellisense, [coc](https://github.com/neoclide/coc.nvim) it's used, and some extensions:
* Marketplace, browse all the available coc extensions, in nvim run `:CocInstall coc-marketplace`
* Intelephense, install the [coc-extension](https://github.com/marlonfan/coc-phpls), in your nvim run `:CocInstall coc-phpls`
* These others might be interesting to install:
- coc-sql
- coc-snippets
- coc-yaml
- coc-vetur
- coc-json
- coc-phpactor
