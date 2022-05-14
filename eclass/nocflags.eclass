# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# @ECLASS: nocflags.eclass
# @MAINTAINER:
# Daniel Menelkir <dmenelkir@gmaill.com>
# @AUTHOR:
# Daniel Menelkir <dmenelkir@gmaill.com>
# @BLURB: Some cores refuse to build with custom-cflags 
# @DESCRIPTION: 

if [[ ${PN} == "citra-libretro" ]]; then
    inherit flag-o-matic
	IUSE="debug"
fi
