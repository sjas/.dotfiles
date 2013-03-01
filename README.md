.dotfiles
=========

My current set of dotfiles.

Basically it is all the configs of vim, git, bash and zsh in a ordered way.  Tricky thing is accessing all these is shortcutted from withing vim as well as from the shell.  This is to have proper access since all these files are evolving continuously.  Also all this stuff should be cross-platform.

Tested on win7, ubuntu 11.x or 12.x, CentOS 6.x to be working.  Will work on terminals with 16 as well as 256 colors, but there are some hiccups with that.  Things should work fine on Mac, too, but currently i cannot test that.

To achieve this, the *.dotfiles* folder has to be checked out into your ~ folder, and then use the right deployscript in .dotfiles/dotfiles-setup-*.* to get all this to work.

When editing configs through the shortcuts, the deployscript has to be used afterwards currently.  I was not able to resolve this otherwise through symlinks (yet).  This makes me want to drink.  The configs should only be edited from within the .dotfiles folder, so configuration changes can be pushed back to origin easily.


- sjas

Fr,  1. Mrz 2013 15:59:29
