#!/bin/sh

chown -R root:root desktop SQLBuddy ui
chmod -R 444 *
chmod -R a+X *
chmod -R u+rw *
tar -czf package.tgz -X exclude.txt desktop SQLBuddy ui

chown -R root:root scripts CHANGELOG LICENSE INFO package.tgz PACKAGE_ICON.PNG PACKAGE_ICON_120.PNG
chmod -R 755 *
tar -cvf ../SQLBuddy-1.3.3-002.spk -X exclude.txt scripts CHANGELOG LICENSE INFO package.tgz PACKAGE_ICON.PNG PACKAGE_ICON_120.PNG

exit 0