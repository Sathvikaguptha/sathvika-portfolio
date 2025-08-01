@echo off
echo ========================================
echo    Portfolio Deployment Script
echo ========================================
echo.

echo Checking if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed!
    echo.
    echo Please install Git first:
    echo 1. Go to https://git-scm.com/download/win
    echo 2. Download and install Git
    echo 3. Restart this script
    echo.
    pause
    exit /b 1
)

echo Git is installed! Proceeding with deployment...
echo.

echo Initializing Git repository...
git init

echo Adding all files to Git...
git add .

echo Creating initial commit...
git commit -m "Initial commit: Personal portfolio website"

echo.
echo ========================================
echo    NEXT STEPS:
echo ========================================
echo 1. Create a GitHub repository at https://github.com
echo 2. Copy your repository URL
echo 3. Run: git remote add origin YOUR_REPOSITORY_URL
echo 4. Run: git push -u origin main
echo.
echo Example:
echo git remote add origin https://github.com/yourusername/sathvika-portfolio.git
echo git push -u origin main
echo.

pause 