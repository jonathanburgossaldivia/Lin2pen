display alert "Lin2pen (Linux to pendrive) simplifies the installation of a Linux distribution to a USB storage device.

Instructions: Select an ISO, select the volume to install, grant permission to dd, wait a few minutes.

Created by Jonathan Burgos Saldivia
https://github.com/jonathanburgossaldivia
"set f to (choose file with prompt "Please, select a Linux iso:" of type {"iso", "img"})set iso to POSIX path of fset isoPath to quoted form of isotell application "Finder" to get name of fset theName to the resultset fileName to quoted form of theNamelist folder "/Volumes" without invisibleschoose from list (result) with title "Volumes" with prompt "Select a storage device:"if the result is not false then	set storage to item 1 of the result	set storagePath to quoted form of storageend ifset disk to (do shell script "diskutil list | grep " & storagePath & " | sed 's/.*disk/disk/g;s/s[0-9].*//g'")set desmontar to "diskutil unmountDisk /dev/" & disk & ""set quemar to "sudo dd if=" & isoPath & " of=/dev/" & disk & " bs=1m"display dialog "Do you want to burn the iso:
" & fileName & "
on the storage device:
" & storagePath & "?
 
Confirm with the accept button." buttons {"Cancel", "Accept"} default button 2 with title "Lin2pen" with icon {"/Applications/Utilities/Migration Assistant.app/Contents/Resources/MigrateAsst.icns"}if the button returned of the result is "Accept" then	tell application "Terminal"		activate		do script " clear && echo 'Lin2pen notice: After giving permission, press 'Control + T' keys  to see the progress, this could take a few minutes...
		' && " & desmontar & "  && " & quemar & " && osascript -e 'display notification  with title \"Lin2pen\" subtitle \"Tasks completed successfully\" sound name \"default\"'"	end tellend if