@echo off
REM ABC Aloha Crew - Git Setup Script for Windows
REM This script initializes git, configures it, and prepares your project for GitHub

echo.
echo ================================
echo ABC ALOHA CREW - GIT SETUP
echo ================================
echo.

REM Get current directory
set CURRENT_DIR=%cd%

echo Setting up git repository in: %CURRENT_DIR%
echo.

REM Initialize git repository
echo [1/5] Initializing git repository...
git init
if errorlevel 1 goto error_git_not_installed

echo [2/5] Configuring git user...
git config user.name "ABC Aloha Crew"
git config user.email "abcalohacrew@gmail.com"

echo [3/5] Adding all files...
git add .

echo [4/5] Creating initial commit...
git commit -m "Initial commit: ABC Aloha Crew website - Premium AI business site"

echo [5/5] Checking git status...
git status

echo.
echo ================================
echo SETUP COMPLETE! ✓
echo ================================
echo.
echo Next steps:
echo.
echo 1. Go to https://github.com and create a new repository:
echo    - Name: abc-aloha-crew
echo    - Visibility: Public
echo    - DO NOT initialize with README, .gitignore, or license
echo.
echo 2. After creating the repo, copy the commands below and run them:
echo.
echo    git remote add origin https://github.com/YOUR-USERNAME/abc-aloha-crew.git
echo    git branch -M main
echo    git push -u origin main
echo.
echo 3. Then go to Settings > Pages and enable GitHub Pages
echo.
echo 4. Your site will be live at:
echo    https://YOUR-USERNAME.github.io/abc-aloha-crew/
echo.
echo For detailed instructions, see: GITHUB_SETUP.md
echo.
pause
goto end

:error_git_not_installed
echo.
echo ERROR: Git is not installed or not in your PATH
echo.
echo Please install Git from: https://git-scm.com/download/win
echo Then run this script again.
echo.
pause

:end