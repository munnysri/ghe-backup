#!/usr/bin/env bash
# http://redsymbol.net/articles/unofficial-bash-strict-mode/
set -euo pipefail
IFS=$'\n\t'

python3 /delete-instuck-backups/delete-instuck-progress.py
/kms/convert-kms-private-ssh-key.sh
cron
tail -F /var/log/ghe-prod-backup.log