FreshUbuntuInstall
==================

Run this command to customize a Fresh 14.04 LTS.

WARNING: This script will download and install a **very** large amount of data. >=3,5 GB

    pandoc texlive-base texlive-binaries texlive-extra-utils texlive-font-utils
    texlive-generic-recommended texlive-latex-base texlive-latex-base-doc
    texlive-latex-extra texlive-latex-extra-doc texlive-latex-recommended
    texlive-latex-recommended-doc texlive-luatex texlive-pictures
    texlive-pictures-doc texlive-pstricks texlive-pstricks-doc texlive-xetex
    texlive-fonts-extra texlive-full fvwm stalonetray rxvt xcompmgr imagemagick
    htop ranger gimp virtualbox build-essential subversion git vim curl
    lib32stdc++6 graphviz

* pandoc
* texlive-base
    + texlive-binaries
    + texlive-extra-utils
    + texlive-font-utils
    + texlive-generic-recommended
    + texlive-latex-base
    + texlive-latex-base-doc
    + texlive-latex-extra
    + texlive-latex-extra-doc
    + texlive-latex-recommended
    + texlive-latex-recommended-doc
    + texlive-luatex
    + texlive-pictures
    + texlive-pictures-doc
    + texlive-pstricks
    + texlive-pstricks-doc
    + texlive-xetex
    + texlive-fonts-extra
    + texlive-full
* fvwm
* stalonetray
* rxvt
* xcompmgr
* imagemagick
* htop
* ranger
* gimp
* virtualbox
* build-essential
* subversion
* git
* Vim
* curl
* i386 support 
* graphviz

# Sets the default editor
    sudo update-alternatives --config editor

# Sets the default terminal 

Basically, when a window is resized, the text arranges itself to fit.

    sudo update-alternatives --config x-terminal-emulator

Choose the one correlating to urxvt. Such as:

    Selection    Path                             Priority   Status
    ------------------------------------------------------------
    * 6            /usr/bin/urxvt                    20        manual mode

***(Only the proper entry is shown - others removed for brevity)***

Note:

1. You'll need to be in the sudoers file to run this command.
1. Put the .fvwm folder and .Xresources file in the user's home directory.
1. I removed the .fvwm/icons folder because I wasn't sure of their origin. I don't want a copyright lawsuit so I deleted them. They're available from IcoMoon.io if you're **that** interested. YMMV
1. Added some code to adjust history file settings - currently set to infinite.
