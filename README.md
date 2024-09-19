# huff does dotfiles
A tool-less dotfiles repo.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read Zach Holman's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Topical

Everything's built around topic areas. If you're adding a new area to your
forked dotfiles — say, "Java" — you can simply add a `java` directory and put
files in there. Anything with an extension of `.zsh` will get automatically
included into your shell. Anything with an extension of `.symlink` will get
symlinked without extension into `$HOME` when you run `script/bootstrap`.

## Components

There's a few special files in the hierarchy.

### **bin/**
Anything in `bin/` will get added to your `$PATH` and be made available everywhere.

### **{topic}/\*.zsh**
Any files ending in `.zsh` get sourced into your environment.

### **{topic}/path.zsh**
Any file named `path.zsh` (or `_path.zsh`) is sourced first. These files are expected
to setup `$PATH` or similar.

### **{topic}/completion.zsh**
Any file named `completion.zsh` is loaded last and is expected to setup autocomplete.

### **topic/install.sh**
Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded automatically,
its extension is `.sh`, not `.zsh`.

### **{topic}/\*.symlink**
Any file ending in `*.symlink` gets symlinked into your `$HOME`. This is so you can keep everything versioned in your
dotfiles repo, but still autoload files in your home directory.

These get symlinked in when you run `script/bootstrap`.

## Install

*Note:* You will need to verify scripts have execute permissions on your system before installing.

Run this:

```sh
git clone https://github.com/holman/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
script/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

You will want to change `zsh/zshrc.symlink` and `git/gitconfig.symlink` right away. `zshrc` 
has some paths that will be different on your particular machine and `gitconfig` contains 
a GitHub username that needs to be updated.

`dot` is a simple script that installs some dependencies, sets sane macOS
defaults, and so on. Tweak this script, and occasionally run `dot` from
time to time to keep your environment fresh and up-to-date. You can find
this script in `bin/`.

## Thanks
I forked [Zach Holman's](https://github.com/holman) excellent [dotfiles](https://github.com/holman/dotfiles).

