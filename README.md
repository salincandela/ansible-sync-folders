## Ansible Sync Folders

- Requires Ansible 1.2 or newer
- Expects CentOS/RHEL 6 or 7 hosts

These playbooks get a git repo folder strucires and syncs only specified folders to target hosts. 
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

	dirs_list:
	 - "folder_1/folder1_1/"
	 - "folder_2/folder_2_1/"

	files_list:
	 - "folder_1/folder1_1/folder_1_1_2.anotherexample"
	 - "folder_2/folder_2_1/folder_2_1_1.example"


User these parameters to filter which folders you want to copy on target machines. 