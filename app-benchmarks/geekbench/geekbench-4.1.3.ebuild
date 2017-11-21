# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="6"

DESCRIPTION="Cross-platform processor benchmark"
HOMEPAGE="http://www.primatelabs.com/"
SRC_URI="http://cdn.primatelabs.com/Geekbench-${PV}-Linux.tar.gz"

LICENSE="geekbench"
SLOT="4"
KEYWORDS="-* ~amd64 ~x86"

RESTRICT="installsources fetch mirror strip"

S="${WORKDIR}/build.pulse/dist/Geekbench-${PV}-Linux"

QA_FLAGS_IGNORED="opt/geekbench4/geekbench_x86_32
				opt/geekbench4/geekbench_x86_64"
QA_PRESTRIPPED=${QA_FLAGS_IGNORED}

pkg_nofetch() {
	elog "Please download ${A}"
	elog "from ${HOMEPAGE}geekbench/ and place this"
	elog "file in ${DISTDIR}"
}

src_install() {
	insinto /opt/geekbench4
	doins geekbench.plar

	exeinto /opt/geekbench4
	doexe geekbench4 geekbench_x86_32 geekbench_x86_64

	dodir /opt/bin
	dosym ../geekbench4/geekbench4 /opt/bin/geekbench4
}
