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
sudo apt-get install pandoc texlive-base texlive-binaries texlive-extra-utils texlive-font-utils texlive-generic-recommended texlive-latex-base texlive-latex-base-doc texlive-latex-extra texlive-latex-extra-doc texlive-latex-recommended texlive-latex-recommended-doc texlive-luatex texlive-pictures texlive-pictures-doc texlive-pstricks texlive-pstricks-doc texlive-xetex texlive-fonts-extra texlive-full fvwm stalonetray rxvt xcompmgr imagemagick htop ranger gimp virtualbox build-essential subversion git vim curl rxvt-unicode


# Sets the default editor
sudo update-alternatives --config editor
sudo update-alternatives --config x-terminal-emulator

echo "HISTFILESIZE=" >> ~/.bashrc
echo "HISTSIZE=" >> ~/.bashrc
echo "export JAVA_HOME=~/jdk1.8.0_25" >> ~/.bashrc
echo "export SDK_HOME=~/android/android-sdk-linux" >> ~/.bashrc
echo "export PATH=$PATH:$JAVA_HOME/bin:$SDK_HOME/tools:$SDK_HOME" >> ~/.bashrc

mkdir ~/android

