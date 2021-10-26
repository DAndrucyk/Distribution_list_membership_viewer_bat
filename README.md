# [Distribution_list_membership_viewer_bat](https://github.com/DAndrucyk/Distribution_list_membership_viewer_bat/releases)
Batch scrip to view the members of distribution/security groups.

## Known issues
- dsquery shows at the start and end of each query

## Installation
- Download the batch file to a location of your choice.
- Run the stand alone bat file to run the script. All prompts will be brought up in a command prompt window.

## Default directories
- Requires connecting to check distirubtion/security groups, so those will need to be available on the network.

## Configuration
- Additonal configuration may be required.
- You can add or remove the parameters as needed for your situation.
- By defaul, the script will show you both the display name and the user's ID for each person in the group.
- If you want to change that see table below. Source of Parameters and Descriptions [https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/cc732535(v=ws.11)]

| Parameter | Description |
|---|---|
| -dn | Displays the distinguished names of the users. | 
| -samid | Displays the Security Account Manager (SAM) account names of the users. |
| -sid | Displays the user security identifiers (SIDs). |
| -upn | Displays the user principal names (UPNs) of the users. |
| -fn | Displays the first names of the users. |
| -mi | Displays the middle initials of the users. |
| -ln | Displays the last names of the users. |
| -display | Displays the display names of the users. |
| -empid | Displays the employee IDs of the users. |
| -desc | Displays the descriptions of the users. |
| -full | Displays the full names of the users. |
| -office | Displays the office locations of the users. |
| -tel | Displays the telephone numbers of the users. |
| -email | Displays the e-mail addresses of the users. |
| -hometel | Displays the home telephone numbers of the users. |
| -pager | Displays the pager numbers of the users. |
| -mobile | Displays the mobile phone numbers of the users. |
| -fax | Displays the fax numbers of the users. |
| -iptel | Displays the user IP phone numbers. |
| -webpg | Displays the user Web page URLs. |
| -title | Displays the titles of the users. |
| -dept | Displays the departments of the users. |
| -company | Displays the company information of the users. |
| -mgr | Displays the managers of the users. |
| -hmdir | Displays the drive letter to which the home directory of the user is mapped to if the home directory path is a UNC path. |
| -hmdrv | Displays the user's home drive letter if home directory is a UNC path. |
| -profile | Displays the user profile paths. |
| -loscr | Displays the user logon script paths. |
| -mustchpwd | Displays whether users must change their passwords at the time of next logon (yes) or not (no). |
| -canchpwd | Displays whether users can change their password (yes) or not (no). |
| -pwdneverexpires | Displays whether the user passwords never expires (yes) or not (no). |
| -disabled | Displays whether user accounts are disabled for logon (yes) or not (no). |
| -acctexpires | Displays the dates when user accounts expire. If the accounts never expire, this command returns never. |
| -reversiblepwd | Displays whether the user passwords are allowed to be stored using reversible encryption (yes) or not (no). |
| -memberof | Displays the immediate list of groups of which the user is a member. |
| -expand | Displays the recursively expanded list of groups of which the user is a member. This option takes the immediate group membership list of the user, and then recursively expands each group in this list to determine its group memberships as well to arrive at a complete closure set of the groups. |

## Development notes
- Currently investigating the dsquery text showing at the start and end of the information. Will attempt to remove that.


## Usage
### Steps
1) When prompted enter the number of distribution/security groups you want to check
2) When prompted enter the names for these groups
3) View the output
4) Answer the prompt if you want to clear the screen (clears all the text in the command prompt window)
5) Repeat steps 1-4 as needed (script will loop back to the start after the clear screeen portion)
