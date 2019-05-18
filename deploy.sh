#!/bin/bash -e
# export ANSIBLE_HOST_KEY_CHECKING=False

if [ -f "./site.retry" ]; then
  echo "Retrying..."
  ansible-playbook -i hosts site.yml --limit @./site.retry
  rm ./site.retry
else
  ansible-playbook -i hosts site.yml
fi
