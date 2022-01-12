podman
======

Installs and configures podman on host OS level.

Requirements
------------

None.

Role Variables
--------------

storage_root: "/srv/containers"
podman_storage: "{{ storage_root }}/storage"
container_conf_dir_bind_src: "{{ storage_root }}/config"
container_data_dir_bind_src: "{{ storage_root }}/volume"

container_conf_dir: "/var/srv/containers/config" 
container_data_dir: "/var/srv/containers/volume"

packages_containers:
  - podman
  - buildah

Dependencies
------------

Collections:
  - community.general

Example Playbook
----------------

---
- name: Install and configure podman to host OS
  hosts: all
  remote_user: root
  become: yes
  become_method: sudo
  roles:
    - {role: podman}

License
-------

Apache-2.0

Author Information
------------------

balagetech.com
