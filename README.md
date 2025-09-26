# Oxidized

## Scripts
`setup.sh`: Run before docker compose. Creates keys and docker frontend network.
  
`fixpermissions.sh`: Oxidize overwrites permissions in mounted volumes, use script to reset all file permissions to current user.
  
`keypermissions.sh`: Gives key pair correct permissions.

## Deploy Guide

1. Edit `./config/config` file:
     - `password`: Whatever password is used for the switches `backups` account.
     - `email`: Email assigned to commits.
     - `remote_repo`: Change to whatever repo you want to push backup files.
1. Run `setup.sh`.
2. Add newly generated public key to git repo.
3. Save git repo host public key in keys/known_hosts `ssh-keyscan github.com > ./keys/known_hosts`
3. Add public key to devices if using keys for auth. See `group2` in config/config.
4. run `docker compose up -d`.

## Notes
Use a newly created git repo in the config file. Otherwise you will need to force push the local git repo to remote.
  
`setup.sh` uses rsa for compatability with Azure repos. Change to ed25519 for most other repos: `ssh-keygen -t ed25519 -C "user@example.com" -f ./keys/id_ed25519 -q -N ""`
Change references in files to correct for different key name.