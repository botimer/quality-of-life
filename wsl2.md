WSL2 setup from scratch
=======================

Preamble
--------

It's almost unbelievable how easy this is now, and how well it works. I've
recently set up a physical machine on Fedora 43 (as an upgrade from an earlier
version, installed to check out PipeWire and left to sit on a spare partition).
Anyway, that was a good time to review the choices of the desktop environment,
editor config and so on.

I tried a few things, but the default GNOME desktop was immediately usable. I
turned my attention to the terminal and Vim configuration. Since that install
went dormant, I have switched to using Neovim almost exclusively, and I wanted
to review that setup from scratch, since the plugin and LSP spaces have moved
quite quickly.

I've also tended to like having a dedicated desktop window with gVim or
MacVim/VimR -- for those long-term editing sessions where I'm switching between
a lot of files in a given project/context. I think Neovide will probably do
what I want, but first, I turned my attention to the terminal.


The default gnome-terminal is pretty great, but I've heard a lot about some of
the alternatives, and was curious what the story was. This was primarily
prompted by trying out Hyprland, where the immediate suggestion was to install
kitty (I think, on the assumption that you don't have the GNOME tools and don't
want them). It was fine, but the config was involved. I'd also been tracking
Ghostty development a little bit, partially because of the buzz it's getting
for being written in Zig (and by the notable Mitchell Hashimoto).

The short story is: I really like the simplicity of the install and the config,
and the general ethos around its development, so I'm running Ghostty for now.
I also went looking for fonts. I've used quite a few as my "main" font over the
years, with just a few as a sample:

 - Consolas
 - Inconsolata
 - Source Code Pro
 - MesloLG

I've enjoyed the webdev-icons in nvim-tree, so I've been using the Nerd Font
variants for everything lately. I landed on Martian Mono because it's a little
bit bulkier in the Medium weight, and looked like the ligatures were pretty
good to my eye and I'm willing to try them (whereas, for most fonts, I am not).

So, with Ghostty, Neovim 0.11, and Martian Mono, we're ready to go...


What a twist!
-------------

Since I had just gone through setting up a Neovim config from scratch I thought
it was a good time to reactive this repository and lay down a mile marker. With
it in Github, I had the thought: could I set this all up on a Windows machine?

Short answer: Yes! Pretty easily, too.

As a long-time Debian/Ubuntu user, I'm admittedly more comfortable with APT
than I am with dnf, but the Fedora release cycle seems pretty good and I've
been happy with the desktop experience, so I thought to give it a try on WSL.
It turns out, they are in the list of default distributions now, so it's very
easy to get started.

```
wsl --install Fedora-Linux43
```

Boom, you have a new WSL environment on Fedora 43, in almost no time. So, it's
time to get a couple of essentials.

```
sudo dnf install git neovim
```

After cloning this repository, dropping a symlink in for `~/.config/nvim`, and
running `nvim`, Lazy picked up its autoinstall and the rest of the plugins. It
was almost magical.

But it was kind of ugly.

I'm actually quite impressed with the Windows Terminal team. It's a great
showing and it's nice to have something built in after all the hacky solutions
I have had to try over the years.

Anyway, it was time to see if I could configure it or get Ghostty or Alacritty
or something else going. It turns out: there is no Windows build for Ghostty,
but it does use GTK, and the Windows-WSL-GTK integration is pretty great now.
Someone had a tutorial for how to build it on Ubuntu, so I had to improvise.

I guess the Zig version in the main repository is not new enough, so it was
suggested to use the snap. Then, I guess the Ubuntu GTK packages have a bit
more stuff in them, so I had to install some extras. There was also a weird
delay between installing snapd and having it ready. This is approximately it:


```
sudo dnf install snapd
sudo systemctl daemon-reload
sudo ln -s /var/lib/snapd/snap /snap

sudo snap install zig --beta --classic

sudo dnf install \
    gtk4-devel \
    gtk4-layer-shell-devel \
    libadawaita-devel \
    blueprint-compiler \

git clone https://github.com/ghostty-org/ghosty
cd ghostty
sudo zig build -p /usr -Doptimize=ReleaseFast
```

With that, you can run ghostty from the shell and it pops up (with all of the
stdout you would expect). However, the desktop app integration autodetected it
(I guess through XDG conventions?) and it's now in the start menu. Incredible.

Downloading the Nerd Font zip and unzipping it under `~/.local/share/fonts`,
and then running `fc-cache -v` on the directory registers the font and
relaunching makes it available to Ghostty.

All told, this was pretty fast and easy to figure out. With a script, everything
after `wsl --install` could be automated and, even with the downloads and build,
be ready to go probably within 2 minutes on "any" Windows machine.

I'm impressed.
