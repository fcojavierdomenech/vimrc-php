##BEFORE ANYTHING
#Download eclipse and place it at the $HOME dir: https://eclipse.org/downloads/
#Download eclim, use eclim installer, download and place it at the $HOME dir: http://sourceforge.net/projects/eclim/files/eclim/

cd ~/.vim

##first we need to install curl to download vim-plug
sudo apt-get install curl

#VIM-PLUG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Now, open vim and run :PlugInstall

printf "\nNow vim will be automatically launched, execute the command :PlugInstall in vim so all the pluggins start to install.\n\nOnce you exit :q, the rest of this installation will continue.\n\nPress any key..."

read -rsn1

vim

printf "\n\n...finishing...\n\n"

#XCLIP so you can copy paste with ctrl+c ctrl+v
sudo apt-get install xclip

#You probably need also to install vim-nox in order to use YouCompleteMe
sudo apt-get install vim-nox

#IDE-HELPER
#ide-helper for composer projects (vendor libs autocomplete)
composer require barryvdh/laravel-ide-helper

#Now from the framework-project root run: `php artisan ide-helper:generate`
#also, it'll help if you extend your models to \Eloquent instead of \Model

##PHPCOMPLETE -> phpctags
curl -Ss http://vim-php.com/phpctags/install/phpctags.phar > phpctags

chmod +x phpctags

sudo mv phpctags /usr/bin

cd ~/

##ECLIM
#don't use eclipse installer, better untar directly
tar -xvzf ~/eclipse*.gz

#to install the downloaded jar:
java -jar eclim_2.6.0.jar

#install patched font for terminal (copying to ~/.local/share/fonts  closing all terminal windows and editing settings)
mkdir ~/.local/share/fonts

mv ~/Sauce*ttf ~/.local/share/fonts/

#If doesn't recognize colors at first:   

ln -s ~/.vim/plugged/vim-colorschemes/colors ~/.vim/colors

#ending

printf "\nFinished :-) Now you need to open a new terminal.\n\nOh, and remember to set the Source Code Pro font from the terminal settings.\n\nPress any key..."

read -rsn1
