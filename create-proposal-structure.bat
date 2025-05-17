@echo off
:: Script created by: Md. Zahirul Islam
:: Contact: zahirul.islam.spa@gmail.com, Cell: +8801711792629
:: Description: This script creates a proposal folder structure with specified subfolders and generates a README file with folder details.

set /p mainFolderPath=Enter the main folder path (e.g., C:\Users\RASEL\Downloads): 
set /p projectName=Enter Project Name: 
set /p creatorName=Enter Your Name: 
set "mainFolder=%mainFolderPath%\%projectName%"  
mkdir "%mainFolder%"

:: Create specified folders for the proposal within the main project folder
mkdir "%mainFolder%\01_ToR"
mkdir "%mainFolder%\02_Draft_Proposal"
mkdir "%mainFolder%\03_Final_Proposal"
mkdir "%mainFolder%\04_Attachment"
mkdir "%mainFolder%\05_Team_CV"
mkdir "%mainFolder%\06_Documents"
mkdir "%mainFolder%\07_Email"

:: Get the current date in a formatted way (e.g., YYYY-MM-DD)
for /f "tokens=1-3 delims=/ " %%a in ('echo %date%') do set curDate=%%c-%%a-%%b

:: Get the current time in HH:MM format
for /f "tokens=1-2 delims=: " %%a in ('time /t') do set curTime=%%a:%%b

:: Create the README.txt file with folder creation details in the main project folder
(
    echo Project Name: %projectName%
    echo Created By: %creatorName%
    echo Date Created: %curDate%
    echo Time Created: %curTime%
    echo.
    echo Folder Structure:
    echo %projectName%\
    echo ├── 01_ToR
    echo ├── 02_Draft_Proposal
    echo ├── 03_Final_Proposal
    echo ├── 04_Attachment
    echo ├── 05_Team_CV
    echo ├── 06_Documents
    echo └── 07_Email
) > "%mainFolder%\README.txt"

echo Folder structure for "%projectName%" created successfully in "%mainFolderPath%"!
pause