# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit zserik-minimal

DESCRIPTION="Wait for a host to come up / shut down"
KEYWORDS="amd64 ~arm x86"
# we require fping at build time to be able to hardcode the location
DEPEND="net-analyzer/fping"
RDEPEND="net-analyzer/fping"

src_configure() {
	local guessed_fping="$(./zs-guess-fping)"
	if [ -n "${guessed_fping}" ]; then
		einfo "use fping = '${guessed_fping}'"
	else
		die "unable to guess fping location"
	fi
	for i in zs-wait4host zs-wait4host-inf; do
		echo "patch $i"
		sed -i "s#\$(zs-guess-fping)#${guessed_fping}#g" "$i"
		sed -i "s/\[ \"\$FPING\" \]/\[ -x \"\$FPING\" \]/g" "$i"
	done
}

src_install() {
	for i in zs-wait4host zs-wait4host-inf; do
		echo "install $i"
		dobin $i
	done
}

pkg_postinst() {
	einfo "To run this program as a normal user:"
	einfo "emerge 'net-analyzer/fping' with the 'suid' use flag"
}
