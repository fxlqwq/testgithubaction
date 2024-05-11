#!/bin/bash

# Set default action (install package maintainer's version)
SSHD_CONFIG_ACTION="install"

# Set non-interactive environment for apt
export DEBIAN_FRONTEND=noninteractive

# Check if environment variable is set to keep local version
if [ "$SSHD_CONFIG_ACTION" == "keep" ]; then
    echo "Keeping local version of sshd_config."
else
    # Otherwise, automatically choose to install package maintainer's version
    echo "Installing package maintainer's version of sshd_config."
    echo "install" | sudo dpkg --configure openssh-server
fi
