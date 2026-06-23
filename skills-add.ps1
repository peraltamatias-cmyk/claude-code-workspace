param(
    [Parameter(Mandatory=$true)]
    [string]$Skill
)

$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH","User")

Write-Host "Instalando skill: $Skill" -ForegroundColor Cyan

npx skills add $Skill

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error al instalar el skill." -ForegroundColor Red
    exit 1
}

Write-Host "Sincronizando con GitHub..." -ForegroundColor Cyan

git -C "C:\Users\MATPPER\Documents\Claude_Code" add .agents/
git -C "C:\Users\MATPPER\Documents\Claude_Code" commit -m "skill: add $Skill"
git -C "C:\Users\MATPPER\Documents\Claude_Code" push

Write-Host "Listo! Skill '$Skill' instalado y sincronizado." -ForegroundColor Green
