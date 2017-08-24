cd ~/.vim

#composer is required
pt-get install curl php5-cli git
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer


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

cd ~/

#install patched font for terminal (copying to ~/.local/share/fonts  closing all terminal windows and editing settings)
mkdir ~/.local/share/fonts

mv ~/Sauce*ttf ~/.local/share/fonts/

#If doesn't recognize colors at first:   

ln -s ~/.vim/plugged/vim-colorschemes/colors ~/.vim/colors

#ending

printf "\nFinished :-) Now you need to open a new terminal.\n\nOh, and remember to set the Source Code Pro font from the terminal settings.\n\nPress any key..."

read -rsn1
