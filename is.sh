
#!/bin/bash

# Set default action (install package maintainer's version)
SSHD_CONFIG_ACTION="install"

# Check if environment variable is set to keep local version
if [ "$SSHD_CONFIG_ACTION" == "keep" ]; then
    echo "Keeping local version of sshd_config."
else
    # Otherwise, install package maintainer's version
    echo "Installing package maintainer's version of sshd_config."
    sudo apt-get install --reinstall -o Dpkg::Options::="--force-confnew" openssh-server -y
fi
