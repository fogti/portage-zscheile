# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

HOMEPAGE="https://www.jsoftware.com/"
SRC_URI="https://github.com/jsoftware/jsource/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/jsource-${PV}"
DESCRIPTION="terse, high-level programming language 'J', particularly for the mathematical, statistical, and logical analysis of data"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="amd64 ~ia64 x86 amd64-linux x86-linux"

RDEPEND="sys-libs/ncurses:="
DEPEND="${RDEPEND}"
BDEPEND="${RDEPEND}
	dev-build/make
	dev-lang/nasm"

PATCHES=(
	"${FILESDIR}/9.5.1-noexecstack.patch"
)

src_prepare() {
	default

	export jplatform=linux
	export j64x="$(./make2/jplatform64.sh | cut -f2 -d/)"
	# prune pre-compiled binaries
	rm -rf {,jlibrary/}tools/{ftp,regex}
	mkdir -p {,jlibrary/}tools/{ftp,regex}
	# TODO: fix tools build
}

src_configure() {
	:
}

src_compile() {
	pushd make2 || die
	./clean.sh
	# the standard build scripts have a bit weird detection logic,
	# idk if they honor all relevant *FLAGS properly
	./build_jconsole.sh || die
	./build_libj.sh || die
	./build_tsdll.sh || die
	./cpbin.sh || die
	popd || die
	cp "jlibrary/bin/profile.ijs" "bin/${jplatform}/${j64x}/" || die
}

src_test() {
	# TODO: does this really run tests?
	"./bin/${jplatform}/${j64x}/jconsole" ./test/tsu.ijs  || die
}

src_install() {
	mkdir -p "${ED}/usr/$(get_libdir)/ijs/bin" || die
	cp -t "${ED}/usr/$(get_libdir)/ijs/bin" "bin/${jplatform}/${j64x}"/* || die
	cp -RT jlibrary "${ED}/usr/$(get_libdir)/ijs" || die
	dosym -r "/usr/$(get_libdir)/ijs/bin/jconsole" "/usr/bin/ijconsole"
}
