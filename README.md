# vimrc-php
Vim settings for php environments (also frameworks, specially laravel)

To install just clone this repo from your .vim folder and change the vimrc file to:
`source ~/.vim/vimrc-php/vimrc`

There is also an install.sh file where all the extra libraries needed to complete the settings are listed,
and their commands to do it.

This vimrc requires vim-plug, so better to install all the extras in install.sh before launching vim.

I'm used to start vim from the project root directory.

To use special fonts for coding (ubuntu):
git clone --depth 1 --branch release https://github.com/adobe-fonts/source-code-pro.git ~/.fonts/adobe-fonts/source-code-pro
sudo fc-cache -f -v
sudo rm -rf /usr/share/fonts/opentype/scp/.git*
