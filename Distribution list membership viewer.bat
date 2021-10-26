@echo off

setlocal enabledelayedexpansion

cls

:start

rem Creating the start of the distribution list array. DLSI is starting at slot 1 (skipping 0 so it lines up with how people normally count)
set "DLSI=1"

rem Creating the end of the distribution list array. DLEI is the end of the distribution list array and is determined by what the user puts in
set /P DLEI="How many distribution lists/security groups do you want to view membership of? "

Rem To populate the DLArray
for /L %%i in (%DLSI%,1,%DLEI%) do (

	rem adds entry to distribution list array
	set /p DLArray[%%i]="Enter distribution list/security group: "

)

Rem Loop to go through distribution lists
For /L %%i in (%DLSI%,1,%DLEI%) do (

	rem displays the employee id and display name of those in the group
	rem check readme file for more options on what can be displayed
	dsquery group -samid "!DLArray[%%i]!" | dsget group -members | dsget user -empid -display

	rem creating two blank lines to seperate out different groups
	echo.

	echo.

)

rem prompt to ask if the user wants to clear the screen (only triggers on y)
set /P clsscreen="Clear screen? (y/n) "

rem clears screen if the previous prompt was answered with y
if "%clsscreen%"=="y" (cls)

rem loops back to start to allow for repeated viewings of group memberships.
goto :start
