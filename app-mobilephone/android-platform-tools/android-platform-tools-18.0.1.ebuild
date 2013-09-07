# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

inherit eutils

DESCRIPTION="Android platform tools (adb and fastboot)"
HOMEPAGE="https://android.googlesource.com/platform/system/core.git/"
SRC_URI="http://dl-ssl.google.com/android/repository/platform-tools_r${PV}-linux.zip"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="!app-mobilephone/andriod-tools
${DEPEND}"

src_install() {
	exeinto /usr/bin
	doexe platform-tools/adb
	doexe platform-tools/fastboot
}
