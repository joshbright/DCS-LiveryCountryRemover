<h1 align="center"> DCS-LiveryCountryRemover</h1>
<p align="center">PowerShell script for commenting out DCS Liveries' country variables.</p>

## How it works
1. The script recursively searches for a list of all description.lua files in the current directory's sub-folders
2. Once the list is obtained, it filters out any files that don't have a country variable, or have a country variable that is commented out.
3. With each of the resulting lua files, a backup is made called descriptionBackup.luabak.
4. The original description.lua is modified to comment out the country variable.

## Instructions
1. Download the DLCR.ps1 file from the most current release
2. Place the file in the folder that contains your liveries
3. Right-click on the DLCR.ps1 file and 


## Warning!
When you run this script, it will follow the directions exactly as mentioned above. If you happen to run this in C://, it will search the entire drive recursively for any description.lua files that have a country variable. This may cause unknown issues if you are code in lua, or another game happens to have a country varaible for their lua files.

## Future Functionality: 

- Allow user to revert the description.lua to the backups
- Allow user to choose the folder they wish to search through, regardless where the script file is located.
- Allow user to request a prompt for each file
