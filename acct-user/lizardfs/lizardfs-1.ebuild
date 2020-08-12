# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit acct-user

DESCRIPTION="A user for LizardFS - Open Source Distributed File System"
ACCT_USER_ID=197
ACCT_USER_ENFORCE_ID=true
ACCT_USER_HOME=/var/lib/lizardfs
ACCT_USER_HOME_PERMS=0750
ACCT_USER_GROUPS=( lizardfs )

acct-user_add_deps

src_install() {
	acct-user_src_install

	insinto /etc/security/limits.d
	newins "${FILESDIR}/${PV}-limits.conf" 10-lizardfs.conf

	insinto /etc/pam.d
	echo "session  required  pam_limits.so" > lizardfs-pam
	newins lizardfs-pam lizardfs
}
