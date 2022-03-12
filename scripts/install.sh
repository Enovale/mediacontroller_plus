 
#!/bin/bash
PLASMOID_DIR='~/.local/share/plasma/plasmoids/'
PACKAGE_NAME=org.kde.mediacontroller_plus

if [ -d "${PLASMOID_DIR}${PACKAGE_NAME}" ]
then
  echo 'Install applet...'
  kpackagetool5 -t Plasma/Applet --install plasmoid
else
  echo 'Update applet...'
  kpackagetool5 -t Plasma/Applet --upgrade plasmoid
fi

echo 'Restart plasma'
killall latte-dock
kstart5 latte-dock
