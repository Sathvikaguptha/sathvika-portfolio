Write-Host "========================================" -ForegroundColor Cyan
Write-Host "    Portfolio Deployment Script" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
try {
    $gitVersion = git --version
    Write-Host "Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Git is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Git first:" -ForegroundColor Yellow
    Write-Host "1. Go to https://git-scm.com/download/win" -ForegroundColor White
    Write-Host "2. Download and install Git" -ForegroundColor White
    Write-Host "3. Restart PowerShell and run this script again" -ForegroundColor White
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

Write-Host "Proceeding with deployment..." -ForegroundColor Green
Write-Host ""

# Initialize Git repository
Write-Host "Initializing Git repository..." -ForegroundColor Yellow
git init

# Add all files
Write-Host "Adding all files to Git..." -ForegroundColor Yellow
git add .

# Create initial commit
Write-Host "Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Personal portfolio website"

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "    NEXT STEPS:" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "1. Create a GitHub repository at https://github.com" -ForegroundColor White
Write-Host "2. Copy your repository URL" -ForegroundColor White
Write-Host "3. Run: git remote add origin YOUR_REPOSITORY_URL" -ForegroundColor White
Write-Host "4. Run: git push -u origin main" -ForegroundColor White
Write-Host ""
Write-Host "Example:" -ForegroundColor Yellow
Write-Host "git remote add origin https://github.com/yourusername/sathvika-portfolio.git" -ForegroundColor Gray
Write-Host "git push -u origin main" -ForegroundColor Gray
Write-Host ""

Read-Host "Press Enter to continue" 