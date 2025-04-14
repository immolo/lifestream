# Copyright 2019-2024 Gentoo Authors
# Copyright 2024 Stephen M. Reaves
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Setup Lifestream for it's desired task"

#IUSE="containers desktop dev extras laptop games printers virt"

SLOT="0"
KEYWORDS="amd64"

RDEPEND="
	acct-user/lifestream
	app-admin/sudo
	app-portage/gentoolkit
	app-misc/livecd-tools
	gui-libs/display-manager-init
	mate-base/mate-desktop
	mate-base/mate-menus
	mate-base/mate-panel
	mate-base/mate-session-manager
	mate-base/mate-settings-daemon
	mate-base/caja
	mate-extra/mate-power-manager
	mate-extra/mate-system-monitor
	sys-fs/mdadm
	x11-base/xorg-drivers
	x11-misc/lightdm
	x11-terms/alacritty
	x11-wm/marco
"

DEPEND="${RDEPEND}"
BDEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
		mkdir /etc/lightdm.conf.d
		insinto /etc/lightdm.conf.d
		doins "${FILESDIR}"/012-autologin-mate.conf
}
