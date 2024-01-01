# Variables for the local extension directory
LED_ROOT="$HOME/.local/share/gnome-shell/extensions"
LED_WORKING="./backups/local_extensions"
LED_TAR="$LED_WORKING.tar.gz"

# Variables for the system extension directory
SED_ROOT="/usr/share/gnome-shell/extensions"
SED_WORKING="./backups/system_extensions"
SED_TAR="$SED_WORKING.tar.gz"

# Variables for git commit message
CURRENT_DATETIME=$(date "+%Y-%m-%d %H:%M:%S")
BACKUP_SUCCESS_MESSAGE="Backup completed at $CURRENT_DATETIME"
RESTORE_SUCCESS_MESSAGE="Restore completed at $CURRENT_DATETIME"