@echo off
cd %~dp0

vagrant plugin install vagrant-cachier
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-vbguest
if exist Vagrantfile (
    vagrant up
) else (
    vagrant box add bento/centos-6.7
	vagrant init bento/centos-6.7
)

pause