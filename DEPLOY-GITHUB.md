# 🚀 DEPLOY NO GITHUB - GUIA RÁPIDO

Siga estes passos para colocar seu sistema online em 15 minutos!

## 📋 CHECKLIST PRÉ-DEPLOY

✅ **Firebase configurado** - ✓ Já está pronto!  
✅ **Portais atualizados** - ✓ Hierarquia implementada!  
✅ **Arquivos organizados** - ✓ Vamos organizar agora!  

---

## 🎯 PASSO 1: Preparar Arquivos

### 1.1 Renomear Arquivo Principal
- **Renomeie:** `index (2).html` → `index.html`
- **Motivo:** GitHub Pages precisa do arquivo principal como `index.html`

### 1.2 Verificar Lista de Arquivos
```
📁 Arquivos para GitHub:
├── index.html                 ← Arquivo principal (renomeado)
├── portal-advogado.html      ← Portal Nível 11
├── portal-promotor.html      ← Portal Níveis 5-8  
├── portal-juiz-estadual.html ← Portal Níveis 3-4
├── portal-juiz-federal.html  ← Portal Níveis 1-2
├── README.md                 ← Documentação
├── firebase.json             ← Config Firebase
├── firestore.rules           ← Regras segurança
├── GUIA-GITHUB.md           ← Guia completo
└── INSTALACAO.md            ← Instruções
```

---

## 🌐 PASSO 2: Criar Repositório GitHub

### 2.1 Acesse GitHub
1. **Vá para:** https://github.com
2. **Faça login** ou **crie conta**

### 2.2 Novo Repositório
1. **Clique:** Botão verde **"New"** ou **"+"**
2. **Preencha:**
   - **Repository name:** `sistema-juridico-portal`
   - **Description:** `Sistema de Portal Jurídico com hierarquia completa para Brasilândia RP`
   - **✅ Public** (para GitHub Pages gratuito)
   - **✅ Add README file**
3. **Clique:** **"Create repository"**

---

## 📤 PASSO 3: Upload dos Arquivos

### Option A: Interface Web (Mais Fácil)
1. **No repositório criado, clique:** "uploading an existing file"
2. **Arraste TODOS os arquivos** da pasta Downloads
3. **Escreva commit:** "Sistema jurídico hierárquico completo"
4. **Clique:** "Commit changes"

### Option B: GitHub Desktop (Recomendado)
1. **Baixe:** https://desktop.github.com
2. **Instale e faça login**
3. **Clone repositório:**
   - File → Clone Repository
   - Escolha: `sistema-juridico-portal`
   - Escolha pasta local
4. **Copie arquivos** para pasta clonada
5. **No GitHub Desktop:**
   - Veja mudanças na esquerda
   - Commit message: "Sistema jurídico completo"
   - **"Commit to main"**
   - **"Push origin"**

---

## 🌍 PASSO 4: Ativar GitHub Pages

### 4.1 Configurar Pages
1. **No repositório → Settings** (aba superior)
2. **Menu lateral → Pages**
3. **Source:** Deploy from a branch
4. **Branch:** main
5. **Folder:** / (root)
6. **Save**

### 4.2 Aguardar Deploy
- ⏱️ **Tempo:** 2-5 minutos
- 🌐 **URL será:** `https://seu-usuario.github.io/sistema-juridico-portal`
- ✅ **Status:** Verde = Pronto!

---

## 🔧 PASSO 5: Configurar Firebase

### 5.1 Adicionar Domínio Autorizado
1. **Firebase Console:** https://console.firebase.google.com
2. **Projeto:** `sistema-juridico-brasila-7c777`
3. **Authentication → Settings → Authorized domains**
4. **Adicionar:** `seu-usuario.github.io`
5. **Save**

### 5.2 Atualizar Regras Firestore
1. **Firestore Database → Rules**
2. **Copiar todo conteúdo** do arquivo `firestore.rules`
3. **Colar** substituindo tudo
4. **Publish**

---

## ✅ PASSO 6: Testar Sistema

### 6.1 Acessar Site
- **URL:** `https://seu-usuario.github.io/sistema-juridico-portal`
- **Deve carregar:** Portal principal com login

### 6.2 Testar Login
1. **Criar conta** ou usar existente
2. **Login deve funcionar**
3. **Redirecionamento** para portal específico

### 6.3 Testar Portais
- ✅ Portal Advogado (Nível 11)
- ✅ Portal Promotor (Níveis 5-8)  
- ✅ Portal Juiz Estadual (Níveis 3-4)
- ✅ Portal Juiz Federal (Níveis 1-2)

---

## 🎯 RESULTADO FINAL

### 🌐 **Seu sistema estará online em:**
```
https://seu-usuario.github.io/sistema-juridico-portal
```

### ⚡ **Funcionalidades Ativas:**
✅ **Login/Logout** funcionando  
✅ **Hierarquia completa** implementada  
✅ **4 portais específicos** por nível  
✅ **Firebase integrado** salvando dados  
✅ **Responsivo** para mobile/desktop  
✅ **Segurança** com regras Firestore  

---

## 🆘 SOLUÇÕES RÁPIDAS

### ❌ "Site não carrega"
**Solução:** Aguarde 5-10 minutos, GitHub Pages demora para propagar

### ❌ "Firebase error"
**Solução:** Verifique se adicionou domínio em "Authorized domains"

### ❌ "Login não funciona"
**Solução:** 
1. Teste em aba anônima
2. Verifique console F12 para erros
3. Confirme regras Firestore foram atualizadas

### ❌ "Portal não redireciona"
**Solução:** Verifique se todos os arquivos `.html` foram enviados

---

## 🎊 PRÓXIMOS PASSOS

1. ✅ **Criar usuários teste** em cada nível
2. ✅ **Testar hierarquia** completa
3. ✅ **Divulgar sistema** para comunidade
4. 🔄 **Desenvolver documentos** (próxima fase)
5. 🔄 **Adicionar notificações** 
6. 🔄 **Sistema de processos**

---

## 📞 PRECISA DE AJUDA?

**Se algo der errado, me chame!** 
- ✅ Problemas no GitHub
- ✅ Erros do Firebase  
- ✅ Configurações
- ✅ Melhorias

**🚀 Em 15 minutos seu sistema jurídico estará online e funcionando!**
