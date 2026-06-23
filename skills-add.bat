@echo off
if "%1"=="" (
    echo Uso: skills-add.bat autor/nombre-skill
    exit /b 1
)

echo Instalando skill: %1
npx skills add %1

if %ERRORLEVEL% neq 0 (
    echo Error al instalar el skill.
    exit /b 1
)

echo Sincronizando con GitHub...
git -C "%~dp0" add .agents/
git -C "%~dp0" commit -m "skill: add %1"
git -C "%~dp0" push

echo Listo! Skill '%1' instalado y sincronizado.
