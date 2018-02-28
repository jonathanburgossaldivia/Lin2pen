display alert "Lin2pen (Linux to pendrive) simplifies the installation of a Linux distribution to a USB storage device.

Instructions: Select an ISO, select the volume to install, grant permission to dd, wait a few minutes.

Created by Jonathan Burgos Saldivia
https://github.com/jonathanburgossaldivia
"
" & fileName & "
on the storage device:
" & storagePath & "?
 
Confirm with the accept button." buttons {"Cancel", "Accept"} default button 2 with title "Lin2pen" with icon {"/Applications/Utilities/Migration Assistant.app/Contents/Resources/MigrateAsst.icns"}
		' && " & desmontar & "  && " & quemar & " && osascript -e 'display notification  with title \"Lin2pen\" subtitle \"Tasks completed successfully\" sound name \"default\"'"