#!/bin/bash
# PrestaShop 9.1 Post-Installation Theme Activation
# This script is automatically called by the official /tmp/docker_run.sh hook
# It relies on the official, documented PrestaShop console command.

set -e # Exit immediately if a command fails

TARGET_THEME="hummingbird-child"
THEME_PATH="/var/www/html/themes/$TARGET_THEME"

echo "Post-Install: Activating theme '$TARGET_THEME'..."

# Pre-create the child theme asset cache directory with permissive local-dev
# permissions because the theme folder is bind-mounted from the host and
# Apache's www-data user must be able to write generated assets there.
install -d -m 0777 "$THEME_PATH/assets/cache"

# Enable the child theme using the documented console command
# This command must run as www-data so generated cache files stay writable
# for the Apache worker processes serving Front Office requests.
runuser -g www-data -u www-data -- php bin/console prestashop:theme:enable "$TARGET_THEME"

echo "Post-Install: Theme activation successfully completed."
