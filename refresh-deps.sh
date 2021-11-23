#!/bin/bash

set -o nounset

ansible-galaxy collection install --force -r collections/requirements.yml
ansible-galaxy role install --force -r roles/requirements.yml
