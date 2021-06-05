# Development Environment

This repository contains configuration files for the software I use and installation scripts to easily setup a new system for my development needs.

You can directly head to the [installation guides](#installation) here:
- [Arch Linux / Manjaro](#arch-linux-/-manjaro)

## Directories Explanation
All configuration files are located in the ``./config`` directory. They are named after the software they configure. The file extensions match those of the original config files to preserve syntax highlighting in code editors.

Additionally the OS-named folders like ``./arch`` contain a list of the software that should be installed on that system (``software``) and a setup script (e.g. ``setup.sh``) to install the software and configure it. 

## Installation

### Prerequisites

You should have [git](https://git-scm.com/) installed in order to clone the repo and track further changes to the configuration.

### Arch Linux / Manjaro
```sh
git clone https://github.com/yannic-bruegger/.my-config.git ~/.my-config
cd  ~/.my-config/arch
chmod +x install.sh install-code-extensions.sh
./setup.sh
```