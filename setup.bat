@echo off
REM ============================================
REM Travel Loop - Development Setup Script
REM ============================================

echo.
echo ╔════════════════════════════════════════╗
echo ║  Travel Loop - Full Stack Setup        ║
echo ║  Professional Integration Complete     ║
echo ╚════════════════════════════════════════╝
echo.

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ ERROR: Node.js is not installed!
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

echo ✅ Node.js detected
node --version
echo.

REM Check if npm is installed
npm --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ ERROR: npm is not installed!
    pause
    exit /b 1
)

echo ✅ npm detected
npm --version
echo.

REM Navigate to backend and install dependencies
echo Installing backend dependencies...
cd backend

echo.
echo 🔍 Checking backend folder...
if not exist "package.json" (
    echo ❌ ERROR: package.json not found in backend!
    cd ..
    pause
    exit /b 1
)
echo ✅ Backend package.json found
echo.

echo 📦 Installing npm packages (this may take a few minutes)...
call npm install

if %errorlevel% neq 0 (
    echo ❌ ERROR: npm install failed!
    cd ..
    pause
    exit /b 1
)

cd ..

echo.
echo ╔════════════════════════════════════════╗
echo ║  ✅ Setup Complete!                    ║
echo ╚════════════════════════════════════════╝
echo.
echo 📋 Next Steps:
echo ─────────────
echo.
echo 1. Configure Database Connection:
echo    Edit: backend\.env
echo    Update MONGODB_URI with your MongoDB connection string
echo.
echo 2. Start Backend Server:
echo    Run: cd backend
echo    Then: npm start
echo    Backend will run on: http://localhost:5000
echo.
echo 3. Start Frontend:
echo    Option A: Use VS Code Live Server extension on index.html
echo    Option B: Run: python -m http.server 8000
echo    Option C: Open index.html directly in browser
echo.
echo 4. Verify Connection:
echo    Open: http://localhost:5000/
echo    You should see: "Traveloop Backend is Flying High!"
echo.
echo 📚 Documentation:
echo    - README.md - Full project documentation
echo    - QUICK_START.md - Quick start guide
echo    - INTEGRATION_REPORT.md - Integration summary
echo.
echo 🚀 Project is ready for development!
echo.
pause
