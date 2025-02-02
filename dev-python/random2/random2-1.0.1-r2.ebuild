# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="Python-2.7 random module ported to python-3"
HOMEPAGE="https://pypi.org/project/random2/"
SRC_URI="$(pypi_sdist_url "${PN}" "${PV}" .zip)"

LICENSE="PSF-2"
SLOT="0"
KEYWORDS="amd64 arm64 ~riscv x86"

BDEPEND="
	app-arch/unzip
"

distutils_enable_tests setup.py

PATCHES=(
	"${FILESDIR}/${P}-py39-tests.patch"
)
