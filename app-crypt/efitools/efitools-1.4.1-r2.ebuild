# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-crypt/efitools/efitools-1.4.1-r2.ebuild,v 1.1 2013/09/01 22:19:56 gregkh Exp $

EAPI="4"
inherit eutils

DESCRIPTION="Tools for manipulating UEFI secure boot platforms"
HOMEPAGE="git://git.kernel.org/pub/scm/linux/kernel/git/jejb/efitools.git"
SRC_URI="https://build.opensuse.org/package/rawsourcefile/home:jejb1:UEFI/efitools/efitools-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-libs/openssl
	sys-apps/util-linux"
DEPEND="${RDEPEND}
	sys-apps/help2man
	sys-boot/gnu-efi
	dev-perl/File-Slurp
	app-crypt/sbsigntool
	virtual/pkgconfig"

src_prepare() {
	epatch "${FILESDIR}"/xxdi.patch
	chmod 755 ${WORKDIR}/${P}/xxdi.pl
}