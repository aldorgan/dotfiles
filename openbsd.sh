$ su root -c 'vi /etc/doas.conf'
permit nopass keepenv yourusername
$ doas sed -i 's/rw/rw,softdep,noatime/g' /etc/fstab
$ doas sed -i 's/768M/2048M/g' /etc/login.conf 
$ doas reboot

pkg_add ImageMagick \
    bzip2 \
    git \
    gnupg \
    iridium \
    w3m \
    mpv \
    inconsolata-font \
    mupdf \
    ratpoison \
    rsync \
    rxvt-unicode \
    tor-browser \
    rtorrent \
    unzip

I used to start X from the console, but following a woopsie involving Xorg being setuid, OpenBSD revoked that privilege and now users should use xenodm(1) to start X and their window manager. Let's create our ratpoison session in ~/.xsession:

xset b off
xrdb -merge ~/.Xresources
eval $(ssh-agent)
/usr/local/bin/ratpoison

    The first command stops that awful beeping. As sensitive creatures who sit up late hacking away at something, it's too much.
    The second merges .Xresources with our current X resources.
    The third starts ssh-agent, quite useful if you want to add or use ssh keys.
    Finally, we execute our window manager - ratpoison!

As much as I like the retro/SunOS look of rxvt with a white background, I like to tweak the look slightly in ~/.Xdefaults:

URxvt.loginShell: true
URxvt.scrollBar: false
URxvt.cursorBlink: true
URxvt.foreground: #FFFFFF
URxvt.background: #000000
*visualBell: True

