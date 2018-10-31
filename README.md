# i3wm - A tiling window manager

![desktop](https://raw.githubusercontent.com/yashsriv/i3-config/master/Screenshots/desktop.png)

![fake-busy](https://raw.githubusercontent.com/yashsriv/i3-config/master/Screenshots/fake-busy.png)

![rofi](https://raw.githubusercontent.com/yashsriv/i3-config/master/Screenshots/rofi.png)

This is customized  configuration for `i3wm` a tiling window manager  fork from [yashsriv's config](https://github.com/yashsriv/i3-config")

The description of the different files are given below.


## Pre

You need to install following package to make this config works:

### i3blocks

```sh
git clone https://github.com/vivien/i3blocks
cd i3blocks
./autogen.sh
./configure
make
make install

```

OR

```bash
# for ubuntu
sudo apt install -y i3blocks
# for archlinux
sudo pacman -S i3blocks
```

### i3-gaps

You may need to install the newest i3-gaps to get a better experience.

``` bash
cd /path/where/you/want/the/repository

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.
../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
```

### Rofi



You may use the ppa to get some dependencies [i3]()

```
/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2018.01.30_all.deb keyring.deb SHA256:baa43dbbd7232ea2b5444cae238d53bebb9d34601cc000e82f11111b1889078a


dpkg -i ./keyring.deb

echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list

apt update

apt install libxcb-ewmh-dev librsvg
```

You may need to install the newest `check` to build `rofi`:

```sh
wget https://github.com/libcheck/check/releases/download/0.12.0/check-0.12.0.tar.gz
tar xvf check-0.12.0.tar.gz
cd check-0.12.0
mkdir build
cd build
../configure --disable-subunit
make -j 8
sudo make install
``

You may need to install the newest `rofi` to get a better experience.

```sh
git clone --depth=1 --recursive https://github.com/DaveDavenport/rofi
cd rofi/

# if not debain or ubuntu
./configure 
# if debain and ubuntu

./configure --with-x-locale-root=/usr/share/X11/locale --with-xkb-config-root=/usr/share/X11/xkb

make -j 8
sudo make install
```

### Font-awesome

You may need to install font-awesome with `sudo apt install -y fonts-font-awesome`


## Files

### cmus

Output for i3blocks

### i3lock.sh

My custom lock script which only locks if `mpv` is not running.

### i3nag.sh

Script to nag me on low battery using i3-nag

### i3status[arch].conf

Settings for i3bar itself such as volume display. Different versions for arch and debian.

### i3blocks.conf

Config for i3blocks

### volume*.sh

Scripts to increase or decrease volume for debian and arch.

### config

My main config which contains varied features
