#
#
#
EAPI=1

inherit git

DESCRIPTION="Rob's emacs configuration"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="x86-host"
IUSE=""

DEPEND="app-editors/emacs"
RDEPEND="app-emacs/gentoo-syntax
	app-emacs/auto-complete
	app-emacs/emacs-common-gentoo
	app-emacs/pymacs
	app-emacs/python-mode
	app-emacs/remember
	app-emacs/yasnippet"



