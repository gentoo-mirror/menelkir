# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rpm autotools

MY_PN=${PN%_*}-${PN##*_}

DESCRIPTION="Epson drivers for L1xx, L2xx, L3xx and L4xx printers"

HOMEPAGE="http://download.ebz.epson.net/dsc/search/01/search/?OSC=LX
	http://www.openprinting.org/driver/epson-201207w"
# SRC_URI="http://download.ebz.epson.net/dsc/op/stable/SRPMS/${MY_PN}-${PV}-1lsb3.2.src.rpm"
SRC_URI="https://download3.ebz.epson.net/dsc/f/03/00/03/45/41/92e9c9254f0ee4230a069545ba27ec2858a2c457/${MY_PN}-${PV}-1lsb3.2.src.rpm"

LICENSE="LGPL-2 EPSON"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="net-print/cups"
DEPEND="${RDEPEND}"

S="${WORKDIR}/epson-inkjet-printer-filter-${PV}"

src_prepare() {
	eautoreconf
	chmod +x configure
}

src_configure() {
	econf LDFLAGS="$LDFLAGS -Wl,--no-as-needed" --prefix=/opt/${MY_PN}
	# if you have runtime problems:
	# add "--enable-debug" and look into /tmp/epson-inkjet-printer-filter.txt
}

src_install() {
	insinto /opt/${MY_PN}/cups/lib/filter
	doins src/epson_inkjet_printer_filter
	chmod 755 "${D}"/opt/"${MY_PN}"/cups/lib/filter/epson_inkjet_printer_filter

	use amd64 && X86LIB=64

	insinto /opt/${MY_PN}
	for folder in lib"${X86LIB}" resource watermark; do
		doins -r ../${MY_PN}-${PV}/$folder
	done

	insinto /usr/share/cups/model/${MY_PN}
	doins ../${MY_PN}-${PV}/ppds/*

	dodoc AUTHORS COPYING.LIB COPYING.EPSON
	dodoc ../${MY_PN}-${PV}/{Manual.txt,README}
}
