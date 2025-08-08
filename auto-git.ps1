# Script de automação de commit e push para Windows (PowerShell)
# Salve este arquivo como auto-git.ps1 na raiz do seu projeto
# Execute no PowerShell: ./auto-git.ps1

while ($true) {
    git add -A
    if (git diff --cached --quiet) {
        # Nenhuma alteração para commitar
        Start-Sleep -Seconds 30
        continue
    }
    $msg = "Auto: commit e push automático em $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git commit -m $msg
    git push
    Write-Host "[AutoGit] Commit e push realizados em $(Get-Date)"
    Start-Sleep -Seconds 30
}
