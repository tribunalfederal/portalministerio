# 📋 Guia Completo: Colocando seu Sistema Jurídico no GitHub

Vou te ajudar a configurar seu sistema no GitHub passo a passo. É mais simples do que parece!

## 🚀 Passo 1: Criando a Conta no GitHub

1. **Acesse:** https://github.com
2. **Clique em "Sign up"**
3. **Preencha:**
   - Username (escolha algo profissional como: `seu-nome-advocacia`)
   - Email
   - Senha
4. **Confirme o email**

## 📁 Passo 2: Criando o Repositório

1. **No GitHub, clique no botão verde "New" ou "+" no canto superior direito**
2. **Preencha:**
   - **Repository name:** `sistema-juridico-portal`
   - **Description:** `Sistema de Portal Jurídico com acesso hierárquico para advogados, promotores e juízes`
   - **✅ Marque "Public"** (para usar GitHub Pages gratuito)
   - **✅ Marque "Add README file"**
3. **Clique em "Create repository"**

## 💻 Passo 3: Preparando os Arquivos

### Option A: Via Interface Web (Mais Fácil)

1. **No seu repositório, clique em "uploading an existing file"**
2. **Arraste todos estes arquivos:**
   ```
   📁 Arquivos para upload:
   ├── index (2).html         ← Seu arquivo principal
   ├── portal-advogado.html
   ├── portal-promotor.html  
   ├── portal-juiz-estadual.html
   ├── portal-juiz-federal.html
   ├── README.md             ← Já criamos
   ├── firebase.json         ← Já criamos
   ├── INSTALACAO.md         ← Já criamos
   └── firestore.rules       ← Acabei de criar (regras de segurança)
   ```

### Option B: Via GitHub Desktop (Recomendado)

1. **Baixe GitHub Desktop:** https://desktop.github.com
2. **Instale e faça login**
3. **Clone seu repositório:**
   - File → Clone Repository
   - Escolha seu repositório
   - Escolha uma pasta local
4. **Copie seus arquivos para a pasta local**
5. **No GitHub Desktop:**
   - Veja as mudanças
   - Escreva uma mensagem: "Adicionando sistema portal jurídico"
   - Clique "Commit to main"
   - Clique "Push origin"

## 🔥 Passo 4: Configurando Firebase

### 4.1 Criando Projeto Firebase

1. **Acesse:** https://console.firebase.google.com
2. **Clique "Criar projeto"**
3. **Nome:** `sistema-juridico-portal`
4. **Desabilite Google Analytics** (por enquanto)
5. **Clique "Criar projeto"**

### 4.2 Configurando Authentication

1. **No menu lateral → Authentication**
2. **Aba "Sign-in method"**
3. **Habilite:**
   - ✅ Email/senha
   - ✅ Google (opcional)

### 4.3 Configurando Firestore

1. **No menu lateral → Firestore Database**
2. **Clique "Criar banco de dados"**
3. **Escolha "Iniciar em modo de teste"**
4. **Escolha localização:** `southamerica-east1` (São Paulo)

### 4.4 Copiando Configuração

1. **No menu lateral → Configurações do projeto** (ícone engrenagem)
2. **Role até "Seus aplicativos"**
3. **Clique no ícone `</>`** (Web)
4. **Nome do app:** `Portal Jurídico`
5. **✅ Marque "Configurar Firebase Hosting"**
6. **Copie a configuração que aparece** (vai ser algo assim):

```javascript
const firebaseConfig = {
  apiKey: "AIza...",
  authDomain: "seu-projeto.firebaseapp.com",
  projectId: "seu-projeto",
  storageBucket: "seu-projeto.appspot.com",
  messagingSenderId: "123456789",
  appId: "1:123456789:web:abc123"
};
```

## ⚙️ Passo 5: Atualizando Código

### 5.1 Atualize TODOS os arquivos HTML

Procure por esta linha em cada arquivo:
```javascript
// Configuração Firebase - SUBSTITUA PELOS SEUS DADOS
const firebaseConfig = {
```

**Substitua pela configuração que você copiou do Firebase!**

### 5.2 Renomeando arquivo principal

1. **Renomeie:** `index (2).html` → `index.html`
2. **Motivo:** O arquivo principal precisa se chamar `index.html`

## 🌐 Passo 6: Publicando (GitHub Pages)

### Option A: GitHub Pages (Simples)

1. **No seu repositório → Settings**
2. **Menu lateral → Pages**
3. **Source:** Deploy from a branch
4. **Branch:** main
5. **Folder:** / (root)
6. **Save**

**🎉 Pronto! Seu site estará em:** `https://seu-usuario.github.io/sistema-juridico-portal`

### Option B: Firebase Hosting (Profissional)

1. **Instale Firebase CLI:**
   ```powershell
   npm install -g firebase-tools
   ```

2. **Na pasta do projeto:**
   ```powershell
   firebase login
   firebase init hosting
   ```

3. **Selecione seu projeto**
4. **Configure:**
   - Public directory: `.` (ponto)
   - Single page app: No
   - Overwrite index.html: No

5. **Deploy:**
   ```powershell
   firebase deploy
   ```

## 🔒 Passo 7: Configurando Segurança

### 7.1 Atualizando Regras Firestore

1. **Firebase Console → Firestore → Rules**
2. **Substitua tudo pelo conteúdo do arquivo `firestore.rules`**
3. **Clique "Publicar"**

### 7.2 Configurando Domínios Autorizados

1. **Authentication → Settings**
2. **Aba "Authorized domains"**
3. **Adicione:**
   - `seu-usuario.github.io` (se usando GitHub Pages)
   - `seu-projeto.firebaseapp.com` (se usando Firebase Hosting)

## 👥 Passo 8: Criando Usuários Teste

### 8.1 Primeiro Admin

1. **Acesse seu site**
2. **Faça cadastro normal**
3. **No Firestore Console:**
   - Vá em Firestore Database
   - Procure collection `usuarios`
   - Encontre seu documento
   - Edite e adicione: `isAdmin: true`
   - Adicione: `cargo: "1_juiz_federal"`

### 8.2 Criando Outros Usuários

Agora você pode usar o portal admin para criar outros usuários!

## 📝 Estrutura Final no GitHub

```
seu-repositorio/
├── index.html                 ← Portal principal
├── portal-advogado.html       ← Portal advogados
├── portal-promotor.html       ← Portal promotores  
├── portal-juiz-estadual.html  ← Portal juízes estaduais
├── portal-juiz-federal.html   ← Portal juízes federais
├── README.md                  ← Documentação do projeto
├── INSTALACAO.md              ← Este guia
├── firebase.json              ← Configuração Firebase
└── firestore.rules            ← Regras de segurança
```

## 🆘 Resolução de Problemas

### ❌ "Firebase not defined"
**Solução:** Verifique se colocou a configuração Firebase correta

### ❌ "Permission denied"
**Solução:** Atualize as regras do Firestore com o arquivo `firestore.rules`

### ❌ Site não carrega
**Solução:** Aguarde alguns minutos após o deploy, pode demorar para propagar

### ❌ Login não funciona
**Solução:** 
1. Verifique domínios autorizados no Firebase
2. Teste em aba anônima/privada

## 🎯 Próximos Passos

1. **✅ Configure usuários teste**
2. **✅ Teste todos os portais**
3. **🔄 Desenvolva sistema de documentos**
4. **🔄 Adicione notificações**
5. **🔄 Integre sistema de processos**

---

## 📞 Precisa de Ajuda?

**Me chame com qualquer dúvida!** Posso ajudar com:
- ✅ Configuração Firebase
- ✅ Deploy no GitHub
- ✅ Correção de erros
- ✅ Novos recursos

**🚀 Seu sistema jurídico profissional estará online em menos de 1 hora!**
