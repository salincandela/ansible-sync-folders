## Ansible Sync Folders

- Requires Ansible 1.2 or newer
- Expects CentOS/RHEL 6 or 7 hosts

These playbooks get a git repo folder structure and syncs only specified filter to target hosts.
To use them, first edit the "hosts" inventory file to contain the
hostnames of the machines on which you want sync, and edit the
group_vars/all.yml file to set any parameters you need.

Then run the playbook, like this:

	ansible-playbook -i hosts sync-folders.yml --extra-vars "bastion_host=YOUR_BASTION_HOST destination_folder=YOUR_DESTINATION_FOLDER"

When the playbook run completes, you should be able to see the folders on target hosts on the target machines.

## Configuration

The playbook is based on a example repo and configuration.

The example repo to get is:

	git_repo: 'https://github.com/salincandela/ansible-sync-folders-template.git'

The basic parameters are:

include_vars:

	- '--include=*.example'
	#- '--include=*.newfile'

User these parameters to filter which folders you want to copy on target machines.

	ansible-playbook -i hosts sync-folders.yml --extra-vars "destination_folder=/tmp/ansible-test-dest"

How to run the test Docker container

Execute the following command inside "docker" folder:

	./container_build.sh
	./container_start.sh 
   
