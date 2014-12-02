FreshUbuntuInstall
==================

Run this command to customize a Fresh 14.04 LTS.

WARNING: This script will download and install a **very** large amount of data. >=3,5 GB

This script will install the following:
---------------------------------------

1. pandoc
1. texlive-base
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
1. fvwm
1. stalonetray
1. rxvt
1. xcompmgr
1. imagemagick
1. htop
1. ranger
1. gimp
1. virtualbox
1. build-essential
1. subversion
1. git
1. vim

# Sets the default editor
sudo update-alternatives --config editor


Note:

1. You'll need to be in the sudoers file to run this command.
1. Put the .fvwm folder and .Xresources file in the user's home directory.
1. I removed the .fvwm/icons folder because I wasn't sure of their origin. I don't want a copyright lawsuit so I deleted them. They're available from IcoMoon.io if you're **that** interested. YMMV
