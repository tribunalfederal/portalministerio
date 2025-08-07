# 🚀 SCRIPT DE AUTOMAÇÃO - DEPLOY GITHUB
# Execute este arquivo no PowerShell para automatizar o deploy

Write-Host "🎯 INICIANDO DEPLOY AUTOMÁTICO DO SISTEMA JURÍDICO" -ForegroundColor Green
Write-Host "================================================" -ForegroundColor Yellow

# Verificar se Git está instalado
Write-Host "🔍 Verificando Git..." -ForegroundColor Cyan
if (Get-Command git -ErrorAction SilentlyContinue) {
    Write-Host "✅ Git encontrado!" -ForegroundColor Green
} else {
    Write-Host "❌ Git não encontrado. Instale em: https://git-scm.com" -ForegroundColor Red
    exit
}

# Verificar se GitHub CLI está instalado (opcional)
Write-Host "🔍 Verificando GitHub CLI..." -ForegroundColor Cyan
if (Get-Command gh -ErrorAction SilentlyContinue) {
    Write-Host "✅ GitHub CLI encontrado!" -ForegroundColor Green
    $useGithubCLI = $true
} else {
    Write-Host "⚠️ GitHub CLI não encontrado. Usaremos método manual." -ForegroundColor Yellow
    $useGithubCLI = $false
}

# Solicitar informações do usuário
Write-Host "`n📝 CONFIGURAÇÃO INICIAL" -ForegroundColor Yellow
$githubUsername = Read-Host "Digite seu username do GitHub"
$repositoryName = Read-Host "Digite o nome do repositório (padrão: sistema-juridico-portal)"
if ([string]::IsNullOrEmpty($repositoryName)) {
    $repositoryName = "sistema-juridico-portal"
}

# Criar pasta do projeto
$projectPath = "C:\sistema-juridico-deploy"
Write-Host "`n📁 Criando pasta do projeto em: $projectPath" -ForegroundColor Cyan

if (Test-Path $projectPath) {
    Write-Host "⚠️ Pasta já existe. Removendo..." -ForegroundColor Yellow
    Remove-Item $projectPath -Recurse -Force
}

New-Item -Path $projectPath -ItemType Directory -Force | Out-Null
Set-Location $projectPath

# Inicializar repositório Git
Write-Host "🔧 Inicializando repositório Git..." -ForegroundColor Cyan
git init
git branch -M main

# Criar README.md
Write-Host "📝 Criando README.md..." -ForegroundColor Cyan
@"
# 🏛️ Sistema Jurídico Portal - Brasilândia RP

Sistema completo de portal jurídico com hierarquia de acesso para diferentes níveis do judiciário.

## 🎯 Funcionalidades

- 👨‍💼 **Portal do Advogado** (Nível 11) - Acesso básico
- 🏛️ **Portal do Ministério Público** (Níveis 5-8) - Acesso intermediário  
- 👨‍⚖️ **Portal da Justiça Estadual** (Níveis 3-4) - Acesso avançado
- 👑 **Portal da Suprema Autoridade Federal** (Níveis 1-2) - Acesso total

## 🔥 Tecnologias

- HTML5 + TailwindCSS
- Firebase Authentication
- Firebase Firestore
- JavaScript ES6+

## 🚀 Acesso

**Site:** https://$githubUsername.github.io/$repositoryName

## 📋 Hierarquia Completa

### Nível 1-2: Suprema Autoridade Federal
- 👑 1º Juiz Federal (Máxima Autoridade)
- ⚖️ 2º/3º Juiz Federal

### Nível 3-4: Justiça Estadual  
- 🏛️ Desembargadores TJ
- 👨‍⚖️ Juízes Estaduais

### Nível 5-8: Ministério Público
- 🏛️ Procurador Geral da República
- ⚖️ Procuradores Gerais de Justiça
- 👨‍💼 Promotores de Justiça

### Nível 11: Advocacia
- 👨‍💼 Advogados (Criminal, Civil, Trabalhista, Tributário)

## 🛡️ Segurança

Sistema implementa controle de acesso baseado em hierarquia com regras Firebase Firestore.

---

**Desenvolvido para Brasilândia RP** 🎮
"@ | Out-File -FilePath "README.md" -Encoding UTF8

# Instruções para o usuário
Write-Host "`n📋 PRÓXIMOS PASSOS MANUAIS:" -ForegroundColor Yellow
Write-Host "1. Copie TODOS os arquivos HTML da pasta Downloads para: $projectPath" -ForegroundColor White
Write-Host "2. Renomeie 'index (2).html' para 'index.html'" -ForegroundColor White
Write-Host "3. Execute este comando para continuar:" -ForegroundColor White
Write-Host "   cd `"$projectPath`"" -ForegroundColor Green

Write-Host "`n⏸️ PAUSADO - Execute as ações acima e pressione qualquer tecla para continuar..." -ForegroundColor Yellow
Read-Host

# Verificar se arquivos foram copiados
Write-Host "`n🔍 Verificando arquivos..." -ForegroundColor Cyan
$requiredFiles = @("index.html", "portal-advogado.html", "portal-promotor.html", "portal-juiz-estadual.html", "portal-juiz-federal.html")
$missingFiles = @()

foreach ($file in $requiredFiles) {
    if (-not (Test-Path $file)) {
        $missingFiles += $file
    }
}

if ($missingFiles.Count -gt 0) {
    Write-Host "❌ Arquivos faltando:" -ForegroundColor Red
    $missingFiles | ForEach-Object { Write-Host "  - $_" -ForegroundColor Red }
    Write-Host "Copie os arquivos e execute o script novamente." -ForegroundColor Yellow
    exit
} else {
    Write-Host "✅ Todos os arquivos encontrados!" -ForegroundColor Green
}

# Adicionar arquivos ao Git
Write-Host "`n📤 Adicionando arquivos ao Git..." -ForegroundColor Cyan
git add .
git commit -m "Sistema jurídico hierárquico completo - Deploy inicial"

# Instruções para criar repositório no GitHub
if ($useGithubCLI) {
    Write-Host "`n🚀 Criando repositório no GitHub..." -ForegroundColor Cyan
    try {
        gh repo create $repositoryName --public --description "Sistema de Portal Jurídico com hierarquia completa para Brasilândia RP"
        git remote add origin "https://github.com/$githubUsername/$repositoryName.git"
        git push -u origin main
        Write-Host "✅ Repositório criado e arquivos enviados!" -ForegroundColor Green
    } catch {
        Write-Host "❌ Erro ao criar repositório via CLI. Use método manual." -ForegroundColor Red
        $useGithubCLI = $false
    }
}

if (-not $useGithubCLI) {
    Write-Host "`n📝 CRIAR REPOSITÓRIO MANUALMENTE:" -ForegroundColor Yellow
    Write-Host "1. Acesse: https://github.com/new" -ForegroundColor White
    Write-Host "2. Repository name: $repositoryName" -ForegroundColor White
    Write-Host "3. Description: Sistema de Portal Jurídico com hierarquia completa" -ForegroundColor White
    Write-Host "4. Marque: Public" -ForegroundColor White
    Write-Host "5. NÃO marque: Add README (já temos)" -ForegroundColor White
    Write-Host "6. Clique: Create repository" -ForegroundColor White
    Write-Host "`n7. Execute estes comandos:" -ForegroundColor White
    Write-Host "   git remote add origin https://github.com/$githubUsername/$repositoryName.git" -ForegroundColor Green
    Write-Host "   git push -u origin main" -ForegroundColor Green
}

# Instruções para GitHub Pages
Write-Host "`n🌐 ATIVAR GITHUB PAGES:" -ForegroundColor Yellow
Write-Host "1. Vá para: https://github.com/$githubUsername/$repositoryName/settings/pages" -ForegroundColor White
Write-Host "2. Source: Deploy from a branch" -ForegroundColor White
Write-Host "3. Branch: main" -ForegroundColor White
Write-Host "4. Folder: / (root)" -ForegroundColor White
Write-Host "5. Save" -ForegroundColor White

# Instruções Firebase
Write-Host "`n🔥 CONFIGURAR FIREBASE:" -ForegroundColor Yellow
Write-Host "1. Acesse: https://console.firebase.google.com" -ForegroundColor White
Write-Host "2. Projeto: sistema-juridico-brasila-7c777" -ForegroundColor White
Write-Host "3. Authentication → Settings → Authorized domains" -ForegroundColor White
Write-Host "4. Adicionar: $githubUsername.github.io" -ForegroundColor White
Write-Host "5. Firestore → Rules → Copiar conteúdo do arquivo firestore.rules" -ForegroundColor White

# Resultado final
Write-Host "`n🎊 DEPLOY CONCLUÍDO!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Yellow
Write-Host "🌐 Seu site estará em: https://$githubUsername.github.io/$repositoryName" -ForegroundColor Cyan
Write-Host "⏱️ Aguarde 5-10 minutos para propagação" -ForegroundColor Yellow
Write-Host "✅ Sistema jurídico hierárquico online!" -ForegroundColor Green

Write-Host "`nPressione qualquer tecla para finalizar..." -ForegroundColor White
Read-Host
