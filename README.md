# base-os-setup-containerized
Sets up host OS for accomodating containers ran by podman

## Features

- Configures network by using linux-system-roles.network (`--tags network`)
- Configures timesync by using linux-system-roles.timesync on RedHat family OS and uses custom task on other systems (`--tags ntp`)
- Add package repositories (yum, zypper)
- Installs packages
- Disables swap (`--tags noswap`)
- Installs and configures podman, including SELinux where applicable (`--tags podman`)
