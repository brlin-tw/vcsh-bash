# shellcheck sh=bash
# Bash user profile configuration profile
#
# References:
#
# * Bash Startup Files (Bash Reference Manual)
#   https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html
#
# Copyright 2025 林博仁(Buo-ren Lin) <buo.ren.lin@gmail.com>
# SPDX-License-Identifier: CC-BY-SA-4.0

_script="${BASH_SOURCE[0]}"
_script_filename="${_script##*/}"

# Read the user profile file
user_profile="${HOME}/.profile"
if test -e "${user_profile}"; then
    if ! source "${HOME}/.profile"; then
        printf \
            '%s: Warning: Unable to read the user profile(~/.profile) file.\n' \
            "${_script}" \
            1>&2
    fi
fi
