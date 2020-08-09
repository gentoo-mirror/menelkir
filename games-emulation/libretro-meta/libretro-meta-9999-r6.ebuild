# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Meta package for various libretro implementations"
HOMEPAGE="http://www.libretro.com/"
LICENSE="metapackage"
SLOT="0"
IUSE="2048 3dengine 81 atari800 bk bluemsx bnes boom3 bsnes bsnes-mercury cannonball cap32 citra craft \
	crocods desmume dinothawr dosbox fbalpha fbalpha2012 fbneo fceumm fceu-next flycast \
	fmsx freechaf freeintv fuse gambatte gearboy genesus_plus_gx gme gpsp gw handy hatari lutro mame mame2000 \
	mame2003 mame2010 mame2015 mame2016 mednafen-bsnes mednafen-gba mednafen-lynx mednafen-ngp \
	mednafen-pce-fast mednafen-pcfx mednafen-psx mednafen-saturn mednafen-supergrafx \
	mednafen-vb mednafen-wswan melonds meowpc98 mesen meteor mgba mrboom nekop2 np2kai nestopia nxengine \
	o2em oberon openlara parallel-n64 pcsx-rearmed picodrive pocketcdg pokemini prboom \
	prosystem puae px68k quicknes quasi88 redream reminiscence sameboy scummvm snes9x \
	snes9x2002 snes9x2010 stella2014 tgbdual theodore tyrquake uzem vba-next vbam vecx vice-x128
	vice-x64 vice-x64sc vice-xcbm2 vice-xcbm5x0 vice-xpet vice-xplus4 vice-xscpu64 \
	vice-xvic virtualjaguar xrick yabause"

KEYWORDS="amd64 x86"

RDEPEND="2048? ( games-emulation/libretro-twentyfortyeight )
	3dengine? ( games-emulation/3dengine-libretro )
	81? ( games-emulation/81-libretro )
	atari800? ( games-emulation/atari800-libretro )
	bk? ( games-emulation/bk-libretro )
	bluemsx? ( games-emulation/bluemsx-libretro )
	bnes? ( games-emulation/libretro-bnes )
	bsnes? ( games-emulation/bsnes-libretro )
	bsnes-mercury? ( games-emulation/bsnes-mercury-libretro )
	boom3? ( games-emulation/boom3-libretro )
	cannonball? ( games-emulation/cannonball-libretro )
	cap32? ( games-emulation/cap32-libretro )
	citra? ( games-emulation/citra-libretro )
	craft? ( games-emulation/craft-libretro )
	crocods? ( games-emulation/crocods-libretro )
	desmume? ( games-emulation/desmume-libretro )
	dinothawr? ( games-emulation/dinothawr-libretro )
	dosbox? ( games-emulation/libretro-dosbox )
	fbalpha? ( games-emulation/fbalpha-libretro )
	fbalpha2012? ( games-emulation/fbalpha2012-libretro )
	fbneo? ( games-emulation/fbneo-libretro )
	fceumm? ( games-emulation/libretro-fceumm )
	fceu-next? ( games-emulation/libretro-fceu-next )
	flycast? ( games-emulation/flycast-libretro )
	fmsx? ( games-emulation/fmsx-libretro )
	freechaf? ( games-emulation/freechaf-libretro )
	freeintv? ( games-emulation/freeintv-libretro )
	fuse? ( games-emulation/fuse-libretro )
	gambatte? ( games-emulation/gambatte-libretro )
	gearboy? ( games-emulation/gearboy-libretro )
	genesis_plus_gx? ( games-emulation/genesis_plus_gx-libretro )
	gme? ( games-emulation/gme-libretro )
	gpsp? ( games-emulation/gpsp-libretro )
	gw? ( games-emulation/gw-libretro )
	handy? ( games-emulation/handy-libretro )
	hatari? ( games-emulation/hatari-libretro )
	lutro? ( games-emulation/lutro-libretro )
	mame? ( games-emulation/mame-libretro )
	mame2000? ( games-emulation/mame2000-libretro )
	mame2003? ( games-emulation/mame2003-libretro )
	mame2010? ( games-emulation/mame2010-libretro )
	mame2015? ( games-emulation/mame2015-libretro )
	mame2016? ( games-emulation/mame2016-libretro )
	mednafen-bsnes? ( games-emulation/mednafen-bsnes-libretro )
	mednafen-gba? ( games-emulation/mednafen-gba-libretro )
	mednafen-lynx? ( games-emulation/mednafen-lynx-libretro )
	mednafen-ngp? ( games-emulation/mednafen-ngp-libretro )
	mednafen-pce-fast? ( games-emulation/mednafen-pce-fast-libretro )
	mednafen-pcfx? ( games-emulation/mednafen-pcfx-libretro )
	mednafen-psx? ( games-emulation/mednafen-psx-libretro )
	mednafen-saturn? ( games-emulation/mednafen-saturn-libretro )
	mednafen-supergrafx? ( games-emulation/mednafen-supergrafx-libretro )
	mednafen-vb? ( games-emulation/mednafen-vb-libretro )
	mednafen-wswan? ( games-emulation/mednafen-wswan-libretro )
	melonds? ( games-emulation/melonds-libretro )
	meowpc98? ( games-emulation/meowpc98-libretro )
	mesen? ( games-emulation/mesen-libretro )
	meteor? ( games-emulation/meteor-libretro )
	mgba? ( games-emulation/mgba-libretro )
	mrboom? ( games-emulation/mrboom-libretro )
	nestopia? ( games-emulation/nestopia-libretro )
	nekop2? ( games-emulation/nekop2-libretro )
	np2kai? ( games-emulation/np2kai-libretro )
	nxengine? ( games-emulation/nxengine-libretro )
	o2em? ( games-emulation/o2em-libretro )
	oberon? ( games-emulation/oberon-libretro )
	openlara? ( games-emulation/openlara-libretro )
	parallel-n64? ( games-emulation/parallel-n64-libretro )
	pcsx-rearmed? ( games-emulation/pcsx-rearmed-libretro )
	picodrive? ( games-emulation/picodrive-libretro )
	pocketcdg? ( games-emulation/pocketcdg-libretro )
	pokemini? ( games-emulation/pokemini-libretro )
	prboom? ( games-emulation/prboom-libretro )
	prosystem? ( games-emulation/prosystem-libretro )
	puae? ( games-emulation/puae-libretro )
	px68k? ( games-emulation/px68k-libretro )
	quasi88? ( games-emulation/quasi88-libretro )
	quicknes? ( games-emulation/quicknes-libretro )
	redream? ( games-emulation/redream-libretro )
	reminiscence? ( games-emulation/reminiscence-libretro )
	sameboy? ( games-emulation/sameboy-libretro )
	scummvm? ( games-emulation/scummvm-libretro )
	snes9x? ( games-emulation/snes9x-libretro )
	snes9x2002? ( games-emulation/snes9x2002-libretro )
	snes9x2010? ( games-emulation/snes9x2010-libretro )
	stella2014? ( games-emulation/stella2014-libretro )
	tgbdual? ( games-emulation/tgbdual-libretro )
	theodore? ( games-emulation/theodore-libretro )
	tyrquake? ( games-emulation/tyrquake-libretro )
	uzem? ( games-emulation/uzem-libretro )
	vba-next? ( games-emulation/vba-next-libretro )
	vbam? ( games-emulation/vbam-libretro )
	vecx?  ( games-emulation/vecx-libretro )
	vice-x128? ( games-emulation/vice-x128-libretro )
	vice-x64? ( games-emulation/vice-x64-libretro )
	vice-x64sc? ( games-emulation/vice-x64sc-libretro )
	vice-xcbm2? ( games-emulation/vice-xcbm2-libretro )
	vice-xcbm5x0 ( games-emulation/vice-xcbm5x0-libretro )
	vice-xpet? ( games-emulation/vice-xpet-libretro )
	vice-xplus4? ( games-emulation/vice-xplus4-libretro )
	vice-xscpu64? ( games-emulation/vice-xscpu64-libretro )
	vice-xvic? ( games-emulation/vice-xvic-libretro )
	virtualjaguar? ( games-emulation/virtualjaguar-libretro )
	xrick? ( games-emulation/xrick-libretro )
	yabause? ( games-emulation/yabause-libretro )"
DEPEND=""
