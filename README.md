# Dotfiles Configurations

This is my dotfile configurations for Arch-based Linux distro's. It is a Qtile based configuration using Alacritty terminal and sxhkd for keyboard shortcuts.

![Screenshot of Terminal](https://i.imgur.com/GP1jO9V.png)
![Nvim Terminal Editor](https://i.imgur.com/toDam7l.png)
![Notification](https://i.imgur.com/MBvN5wq.png)
# Installation

You may want to download the zip file and extract it or use
> git clone https://github.com/LeonEstrak/dotfiles.git

Extract all the files into your **/home/\<username>** directory and replace/merge the .config directory.

The **.packages.txt** file contains all the packages that are installed in my system. There might exist some conflicts if you already have a preconfigured system but generally there shouldn't be any issues.

Run the following command if you're using **paru** as an AUR helper or replace it with **yay** if you use that.
> cat .packages.txt |xargs paru -S --needed

**Before running the above command, I recommend you go through the text file and remove or replace any packages you might not need. For example, I do GO development so it is present in the text file, you may not have any use for the GO compiler so you may remove it.**

>Nvim Configuration is not included in the above configurations, i recommend using the original install script to install it. Link is down bellow.

If you're not already using a Qtile-based system then create a **qtile.desktop** file in **/usr/share/xsessions/** folder. It should look somewhat like this,

>[Desktop Entry]
>
>Name=Qtile
>
>Comment=Qtile Session
>
>Exec=qtile start
>
>Type=Application
>
>Keywords=wm;tiling

After you're done with all the steps, restart the system, select Qtile in your login manager and login to the system. 

## Post Installation

You may want to tinker with the keyboard shortcuts, all Keyboard shortcuts are present in ***.config/qtile/sxhkd/sxhkdrc***  and all Qtile-WM related Keybindings will be available in ***.config/qtile/config.py***  

I use dunst for my notifications, in case you run into some trouble while using, check out the [Dunst Arch Wiki](https://wiki.archlinux.org/title/Dunst)  or you may replace it with something else entirely.

My shell of choice **zsh** and i use oh-my-zsh along with a few extra plugins, if you want to play around with that, check out ***.zshrc*** and ***.zshrc-personal***

## External Links

Following are the repositories which have been utilised in my configuration : 

 - [NvChad - The NeoVim Configuration](https://github.com/siduck76/NvChad)
 -  [Rofi - Adi1090x](https://github.com/adi1090x/rofi)
 -  [Wallpapers - Derek Taylor](https://gitlab.com/dwt1/wallpapers)

## TroubleShooting

Since these are my personal configurations, you may run into some trouble if you intend to use these. If you do run into some trouble, raise an issue, would be more than happy to help.
