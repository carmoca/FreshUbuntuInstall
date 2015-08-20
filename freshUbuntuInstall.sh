#!/bin/bash

# Set the old style scroll bars (Removes the single pixel-width crap Unity uses.)
gsettings set com.canonical.desktop.interface scrollbar-mode normal

# Installs the following:
# pandoc (...to make PDFs, docx, pptx, and many more document types from simple text files)
# Latex (for support for Markdown),
# fvwm  (...and associated display manager/xsession tools), 
# certain command line tools I prefer (htop, vim ranger)
# build essentials (...and git and SVN)
# gimp, imagemagick
sudo apt-get install pandoc texlive-base texlive-binaries texlive-extra-utils texlive-font-utils texlive-generic-recommended texlive-latex-base texlive-latex-base-doc texlive-latex-extra texlive-latex-extra-doc texlive-latex-recommended texlive-latex-recommended-doc texlive-luatex texlive-pictures texlive-pictures-doc texlive-pstricks texlive-pstricks-doc texlive-xetex texlive-fonts-extra texlive-full

# This installed components for FVWM
# I removed xcompmgr because it was causing the background to be covered over
#sudo apt-get install fvwm stalonetray rxvt xcompmgr imagemagick 
sudo apt-get install fvwm stalonetray rxvt imagemagick 

# These are some very handy tools to have supporting development and basic system navigation and configuration
sudo apt-get install htop ranger gimp virtualbox build-essential subversion git vim curl rxvt-unicode

# Extra 32bit installers - useful for where 32 bit development occurs
sudo apt-get install libglib2.0-0:i386 libfontconfig1:i386 libXrender1:i386 libsm6:i386 libfreetype6:i386 libxext6:i386 

# If ibus-daemon and ibus-setup gives you any crap see this excellent writeup:
# www.pinyinjoe.com/faq/ubuntu-1404-chinese-ime-problems-faq.htm
sudo apt-get remove ibus-pinyin
sudo apt-get install ibus-libpinyin

# Sets the default editor
sudo update-alternatives --config editor
sudo update-alternatives --config x-terminal-emulator

echo "HISTFILESIZE=" >> ~/.bashrc
echo "HISTSIZE=" >> ~/.bashrc
echo "export JAVA_HOME=~/jdk1.8.0_25" >> ~/.bashrc
echo "export SDK_HOME=~/android/android-sdk-linux" >> ~/.bashrc
echo "export PATH=$PATH:$JAVA_HOME/bin:$SDK_HOME/tools:$SDK_HOME" >> ~/.bashrc

mkdir ~/android

sudo apt-get remove unity-lens-shopping
gsettings set com.canonical.Unity.Lenses disabled-scopes "['more_suggestions-amazon.scope', 'more_suggestions-u1ms.scope', 'more_suggestions-populartracks.scope', 'music-musicstore.scope', 'more_suggestions-ebay.scope', 'more_suggestions-ubuntushop.scope', 'more_suggestions-skimlinks.scope']"

cd ~ /.vim/bundle && git clone https://github.com/scrooloose/syntastic.git
mkdir -p ~/.vim/autoload ~/.vim/bundle && wget -O ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
