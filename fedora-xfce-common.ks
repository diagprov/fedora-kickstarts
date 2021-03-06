# fedora-livecd-xfce.ks
#
# Description:
# - Fedora Live Spin with the light-weight XFCE Desktop Environment
#
# Maintainer(s):
# - Rahul Sundaram    <sundaram@fedoraproject.org>
# - Christoph Wickert <cwickert@fedoraproject.org>
# - Kevin Fenzi       <kevin@tummy.com>
# - Adam Miller       <maxamillion@fedoraproject.org>


%packages

fedora-release-xfce
@networkmanager-submodules
@xfce-desktop
@xfce-apps
@xfce-extra-plugins
@xfce-media
@xfce-office

# unlock default keyring. FIXME: Should probably be done in comps
gnome-keyring-pam
# Admin tools are handy to have
@admin-tools
# Add some screensavers, people seem to like them
# Note that blank is still default.
xscreensaver-extras
wget
# Better more popular browser
#firefox
system-config-printer

# save some space
-autofs
-acpid
-gimp-help
-desktop-backgrounds-basic
-aspell-*                   # dictionaries are big
-xfce4-sensors-plugin

%end
