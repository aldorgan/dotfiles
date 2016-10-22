
Prepare repository

First we install some system packages and set up the repository:

apt-get install git build-essential devscripts equivs
git clone https://github.com/mpv-player/mpv-build.git
cd mpv-build
./update

Dependencies and features

Features in mpv are enabled depending on what libraries you have available when compiling the application. The below instructions will install "most" libraries, if you are missing a feature after compiling you need to read the documentation and find out what library is required then recompile.

mk-build-deps
dpkg -i mpv-build-deps*.deb
apt-get install -f -y

Compiling mpv

Finally time to compile mpv:

debuild -us -uc -b -j$(nproc)

The -j flag specifies number of threads for compiling, a rule of thumb is to not set it higher than the number of available CPU cores which nproc should return. If your system does not have nproc you can for instance use -j4.

To install the new package (so that you can run it with the mpv command):

dpkg -i ../mpv_*deb

Recompile newer version

If you would like a newer version later you can reuse the existing directory and just run:

cd mpv-build
./update
rm -f *deb
mk-build-deps
dpkg -i mpv-build-deps*deb
apt-get install -f -y
debuild -us -uc -b -j$(nproc)
dpkg -i ../mpv_*deb

You might have to uninstall your current mpv package before installing the new one.

