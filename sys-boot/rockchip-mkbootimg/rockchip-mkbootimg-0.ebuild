# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

inherit flag-o-matic git

DESCRIPTION="Tools to create firmware/bootimages for Rockchip devices"
HOMEPAGE="https://github.com/neo-technologies/rockchip-mkbootimg"
SRC_URI=""

LICENSE="GPL"
SLOT="0"
KEYWORDS="x86-host"
IUSE=""

DEPEND="dev-libs/openssl"
RDEPEND="${DEPEND}"

# Use hardcoded URL
EGIT_PARTNER_URI="https://github.com/neo-technologies/rockchip-mkbootimg.git"
: ${EGIT_BRANCH:="master"}

src_compile() {
	append-cppflags -Wall
	append-ldflags -lcrypto
	emake || die "emake failed"
}

src_install() {
	emake PREFIX=/usr DESTDIR="${D}" install || die "emake install failed"
}
