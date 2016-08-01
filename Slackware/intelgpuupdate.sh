wget -r -nH --no-parent --reject="index.html*" --cut-dirs=5 https://slackbuilds.org/mirror/slackware/slackware64-14.2/source/x/x11/
cd x11/src/driver
rm xf86-video-intel-git_20160601_b617f80.tar.xz
sh ../get-xf86-video-intel.sh
cd ../..
sh x11.SlackBuild driver xf86-video-intel
upgradepkg /tmp/xf86-video-intel*.txz
