@echo off
echo ==========================================
echo   Meeting Voice AI - Sistema Completo
echo ==========================================
echo.

echo [1] Iniciar Backend (NestJS)
echo [2] Iniciar Frontend (React)
echo [3] Iniciar Ambos
echo [4] Instalar Dependencias
echo [5] Salir
echo.

set /p choice="Selecciona una opcion: "

if "%choice%"=="1" (
    echo.
    echo Iniciando Backend...
    cd backend
    start cmd /k "npm run start:dev"
    echo Backend iniciado en http://localhost:3001
    pause
)

if "%choice%"=="2" (
    echo.
    echo Iniciando Frontend...
    cd frontend
    start cmd /k "npm run dev"
    echo Frontend iniciado en http://localhost:3000
    pause
)

if "%choice%"=="3" (
    echo.
    echo Iniciando Backend y Frontend...
    start cmd /k "cd backend && npm run start:dev"
    timeout /t 3 >nul
    start cmd /k "cd frontend && npm run dev"
    echo.
    echo Backend: http://localhost:3001
    echo Frontend: http://localhost:3000
    echo.
    echo Presiona cualquier tecla para continuar...
    pause
)

if "%choice%"=="4" (
    echo.
    echo Instalando dependencias del Backend...
    cd backend
    npm install
    echo.
    echo Instalando dependencias del Frontend...
    cd ../frontend
    npm install
    echo.
    echo Dependencias instaladas correctamente!
    pause
)

if "%choice%"=="5" (
    exit
)

echo.
echo Opcion no valida. Intenta de nuevo.
pause
