# MacStand
A lightweight alternative for docker for mac.

## Requires:
* Vagrant - https://www.vagrantup.com/
* Virtual Box - https://www.virtualbox.org/

## Process:
1. Clone this repo. 
2. `cd` into directory
3. Run `vagrant up`

## Once done, run the following commands
1. `vagrant ssh`
2. `sudo usermod -aG docker ${USER}`
3. `exit` and you are ready to use docker on your mac!

## Background
Since Docker for Mac uses a virtual machine. MacStand is a pre-set development environment that runs docker inside a Linux VirtualBox leveraging an NFS mount.

## General Commands
* `vagrant up` - spins up the VirtualBox
* `vagrant ssh` - allows you to SSH into the VirtualBox. You will want to cd into the `var/www/html` this is directory that is mounted with your hosts. This is where you will run the DrupalStand commands.
* `vagrant suspend` - will stop your environment. 

More information about vagrant commands can be found here - https://www.vagrantup.com/docs/cli/

## Other Notes
Sometimes when you start and restart vagrant you will need to run the `docker start` command in order to turn on docker.

For macOS 10.15 (Catalina) requires explicit paths for NFS Sync, for the time being you will need to add `/System/Volumes/Data/Users/[USERNAME]/[PROJECT-PATH]` to line `5` of the vagrant file.
