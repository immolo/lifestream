# Copyright 2019-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="user for Lifestream"
ACCT_USER_ID=1000
ACCT_USER_GROUPS=( "lifestream" "wheel"  )
ACCT_USER_HOME=/home/lifestream
ACCT_USER_SHELL="/bin/bash"

acct-user_add_deps
