This is just a basic template of my Rails Vagrant configuration.

## Include in this template

- RVM
- Ruby 2.1.3
- PostgreSQL
- Redis

## Requirement

- [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [Puppet](http://puppetlabs.com/)

## Install

Clone this repository in a Folder next to a folder named `data` which will be mounted to the Vagrant instance has `/home/vragrant/data`.

Go to the folder and run `vagrant up` to download the box if require and create a new instance based on the configuration.

Run `vagrant provision` to run the Puppet script again if you need to add some modifications

## Default configuration

- the `../data` folder is mounted as `/home/vagrant/data`
- the TCP port 3000 is mapped to the local host
- the default database credentials are `rails/secret` (a sample database named `myrailsapp_dev` is created during the provisioning)