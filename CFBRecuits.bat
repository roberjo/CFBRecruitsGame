@echo off
setlocal enabledelayedexpansion

:start
cls
echo Welcome to SEC Football Recruiting Simulator
echo =========================================
echo.

set /p playername=Enter the recruit's name: 

:attributes
set /a "stars=%random% %% 3 + 3"
set /a "speed=%random% %% 41 + 60"
set /a "strength=%random% %% 41 + 60"
set /a "awareness=%random% %% 41 + 60"

echo.
echo %playername%'s Profile:
echo Star Rating: %stars%
echo Speed: %speed%
echo Strength: %strength%
echo Awareness: %awareness%
echo.
pause

:recruiting
cls
set "auburn_nil=0"
set "florida_nil=0"
set "arkansas_nil=0"
set "scarolina_nil=0"

echo Universities are making their offers...
echo.
timeout /t 2 >nul

rem Generate NIL offers
set /a "auburn_nil=%random% %% 500000 + 500000"
set /a "florida_nil=%random% %% 500000 + 500000"
set /a "arkansas_nil=%random% %% 500000 + 500000"
set /a "scarolina_nil=%random% %% 500000 + 500000"

echo Auburn University Offer:
echo - NIL Package: $%auburn_nil%
echo - Conecuh Sausage NIL Deal: $50,000
echo - Guided fishing trips on Lake Martin
echo.

echo University of Florida Offer:
echo - NIL Package: $%florida_nil%
echo - Exclusive fishing charter in the Keys
echo.

echo University of Arkansas Offer:
echo - NIL Package: $%arkansas_nil%
echo - Premium hunting and fishing package
echo - Local BBQ restaurant sponsorship
echo.

echo University of South Carolina Offer:
echo - NIL Package: $%scarolina_nil%
echo - Lake Murray fishing excursions
echo - Local restaurant endorsements
echo.

echo.
echo Which university will %playername% choose?
echo 1. Auburn University
echo 2. University of Florida
echo 3. University of Arkansas
echo 4. University of South Carolina

:choice
set /p choice=Enter your choice (1-4): 

if "%choice%"=="1" (
    set "school=Auburn University"
    goto decision
)
if "%choice%"=="2" (
    set "school=University of Florida"
    goto decision
)
if "%choice%"=="3" (
    set "school=University of Arkansas"
    goto decision
)
if "%choice%"=="4" (
    set "school=University of South Carolina"
    goto decision
)
echo Invalid choice. Please try again.
goto choice

:decision
cls
echo Congratulations! %playername% has committed to %school%!
echo.
echo Press any key to play again or Ctrl+C to exit
pause >nul
goto start
