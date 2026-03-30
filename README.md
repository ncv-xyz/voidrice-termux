# The Voidrice (fork of Luke Smith <https://lukesmith.xyz>'s dotfiles)

These are the dotfiles deployed by [LARBS](https://larbs.xyz) and as seen on
[Luke Smith's YouTube channel](https://youtube.com/c/lukesmithxyz)
made to work in [Termux](https://github.com/termux/termux-app).

- Very useful scripts are in `~/.local/bin/`
- Settings for:
	- vim/nvim (text editor)
	- zsh (shell)
	- lf (file manager)
	- mpd/ncmpcpp (music)
	- nsxiv (image/gif viewer)
	- mpv (video player)
	- other stuff like xdg default programs, inputrc and more, etc.
- I try to minimize what's directly in `~` so:
	- All configs that can be in `~/.config/` are.
	- Some environmental variables have been set in `~/.zprofile` to move configs into `~/.config/`
- Bookmarks in text files used by various scripts (like `~/.local/bin/shortcuts`)
	- File bookmarks in `~/.config/shell/bm-files`
	- Directory bookmarks in `~/.config/shell/bm-dirs`

## Usage

These dotfiles and installer are intended to be used with a
[pacman install of Termux](https://wiki.termux.com/wiki/Switching_package_manager)
and [API commands](https://github.com/termux/termux-api) available.

- [Termux](https://github.com/termux)
- [Termux Pacman](https://github.com/termux-pacman)
- [Termux:API](https://github.com/termux/termux-api)

I also recommend trying out
[mutt-wizard](https://github.com/lukesmithxyz/mutt-wizard), which additionally
works with this setup. It gives you an easy-to-install terminal-based email
client regardless of your email provider. It is integrated into these dotfiles
as well. See my
[fork to make it work in Termux](https://github.com/ncv-xyz/mutt-wizard).

## Install these dotfiles and all dependencies

Use [LARBS](https://larbs.xyz) to autoinstall everything:

```
curl -LO larbs.xyz/larbs.sh
```

or clone the repo files directly to your home directory and install the
[dependencies](https://ncv.codeberg.page/files/progs.csv).

## Default Desktop Artwork

Thomas Thiemeyer's *The Road to Samarkand* ([fb](https://www.facebook.com/t.thiemeyer/), [insta](https://www.instagram.com/tthiemeyer/), [shop](https://www.redbubble.com/de/people/TThiemeyer/shop))

## Limitations

By default, no x11 packages are installed. I don't usually work outside tty so
I haven't tested LARBS with it in Termux, nor setup everything here to work
right with it. But if you comment out the lines for `SSH_TTY` and `GPG_TTY` in
`~/.zprofile`, everything should work.

Current packages for LARBS which are unavailable in Termux:

- xorg-xinit, xorg-xset, xorg-xbacklight
- otf-libertinus, ttf-font-awesome
- noto-fonts, noto-fonts-emoji
- ueberzugpp
- zathura, zathura-pdf-mupdf
- ~~man-db~~ (replaced by mandoc)
- pipewire-pulse, wireplumber
- ~~exfat-utils~~ (replaced by exfatprogs)
- simple-mtpfs
- polkit
- unclutter
- ~~maim~~ (replaced by scrot)
- slock
- ~~ntp~~ (replaced by chrony)
- ~~urlview~~ (replaced by urlscan)
- youtube-viewer
- libreoffice

Some are unlisted and substituted for by scripts or symlinks to other programs.
