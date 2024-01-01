# GNOME Extension Backup And Restore
Because there is no good way to save extensions, I created a couple of scripts to help backup and restore my commonly used GNOME extensions.

## Backing Up Extensions
All of the extensions I use will be stored in this repository in the `./backups` directory as zip files. To perform the backup, run the `./backup_extension.sh` script.

## Restoring Extensions
To perform the restore, run the `./restore_extensions.sh`. This will take the backup files from `./backups`, decompress them, and move them to their appropriate directories