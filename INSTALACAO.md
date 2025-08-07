# 📦 **Instalação do Sistema Jurídico Brasileiro**

## 🔧 **Pré-requisitos**

- Node.js 16+ instalado
- Conta no Firebase
- Git instalado
- Editor de código (VS Code recomendado)

## 🚀 **Passo a Passo Detalhado**

### **1. Configuração do Ambiente**

```bash
# Instalar Firebase CLI globalmente
npm install -g firebase-tools

# Verificar instalação
firebase --version
```

### **2. Clone e Configuração**

```bash
# Clonar o repositório
git clone https://github.com/SEU-USUARIO/sistema-juridico-brasileiro.git
cd sistema-juridico-brasileiro

# Fazer login no Firebase
firebase login

# Inicializar projeto Firebase
firebase init
```

### **3. Configuração do Firebase**

Durante o `firebase init`, selecione:
- ✅ Firestore: Configure Firestore for your project
- ✅ Hosting: Configure Firebase Hosting
- ✅ Storage: Configure Cloud Storage

**Configurações importantes:**
- **Public directory:** `public`
- **Single-page app:** `Yes`
- **Overwrite index.html:** `No`

### **4. Configurar Credenciais**

Edite o arquivo `public/js/firebase-config.js`:

```javascript
// Substitua pelas suas credenciais do Firebase Console
const firebaseConfig = {
  apiKey: "AIzaSy...", // Sua API Key
  authDomain: "seu-projeto.firebaseapp.com",
  projectId: "seu-projeto-id",
  storageBucket: "seu-projeto.appspot.com",
  messagingSenderId: "123456789",
  appId: "1:123456789:web:abcdef123456"
};
```

### **5. Configurar Regras do Firestore**

Arquivo `firestore.rules`:
```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Usuários podem ler/escrever apenas seus próprios dados
    match /usuarios/{userId} {
      allow read, write: if request.auth != null && request.auth.uid == userId;
    }
    
    // Logs apenas para usuários autenticados
    match /logs/{document} {
      allow read, write: if request.auth != null;
    }
    
    // Dados públicos (estrutura hierárquica)
    match /estrutura/{document} {
      allow read: if request.auth != null;
    }
  }
}
```

### **6. Estrutura de Pastas**

Organize os arquivos na pasta `public/`:

```
public/
├── index.html (renomear de "index (2).html")
├── portal-advogado.html
├── portal-promotor.html  
├── portal-juiz-estadual.html
├── portal-juiz-federal.html
├── portal-admin.html (renomear de "portal.index.html")
├── css/
│   └── custom.css
├── js/
│   ├── firebase-config.js
│   ├── auth.js
│   └── utils.js
└── assets/
    └── images/
```

### **7. Deploy**

```bash
# Fazer deploy para Firebase Hosting
firebase deploy

# Deploy apenas hosting
firebase deploy --only hosting

# Deploy apenas Firestore rules
firebase deploy --only firestore:rules
```

### **8. Configurar Domínio Personalizado (Opcional)**

No Firebase Console:
1. Hosting → Add custom domain
2. Digite seu domínio: `sistemajuridico.com.br`
3. Siga as instruções de verificação DNS

## 🔐 **Configuração de Segurança**

### **Authentication Rules:**

1. No Firebase Console → Authentication
2. Sign-in method → Enable Email/Password
3. Authorized domains → Add your domain

### **Firestore Security:**

```javascript
// Regras mais restritivas
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // Apenas usuários específicos podem acessar dados sensíveis
    match /usuarios_cadastrados/{document} {
      allow read, write: if request.auth != null && 
        get(/databases/$(database)/documents/usuarios/$(request.auth.uid)).data.isAdmin == true;
    }
    
    // Logs com controle por cargo
    match /logs/{document} {
      allow read: if request.auth != null;
      allow write: if request.auth != null && 
        get(/databases/$(database)/documents/usuarios/$(request.auth.uid)).data.cargo != null;
    }
  }
}
```

## 🚨 **Solução de Problemas**

### **Erro: "Firebase project not found"**
```bash
firebase use --add
# Selecione seu projeto
```

### **Erro: "Permission denied"**
```bash
firebase login --reauth
```

### **Erro de CORS**
Configure no Firebase Console → Storage → Rules:
```javascript
rules_version = '2';
service firebase.storage {
  match /b/{bucket}/o {
    match /{allPaths=**} {
      allow read, write: if request.auth != null;
    }
  }
}
```

### **CSS não carregando**
Verifique se o TailwindCSS está sendo carregado via CDN:
```html
<script src="https://cdn.tailwindcss.com"></script>
```

## 📊 **Monitoramento**

### **Analytics (Opcional):**
```javascript
// Adicionar ao firebase-config.js
import { getAnalytics } from "firebase/analytics";
const analytics = getAnalytics(app);
```

### **Performance:**
```javascript
// Adicionar monitoring
import { getPerformance } from "firebase/performance";
const perf = getPerformance(app);
```

## 🔄 **Atualizações**

```bash
# Atualizar Firebase CLI
npm update -g firebase-tools

# Atualizar dependências do projeto
firebase use seu-projeto-id
firebase deploy
```

## 🎯 **Próximos Passos**

1. ✅ Deploy inicial concluído
2. 🔧 Configurar usuário administrador
3. 👥 Cadastrar usuários de teste
4. 📋 Testar todos os portais
5. 📱 Configurar PWA (opcional)
6. 🔔 Implementar notificações
7. 📊 Configurar analytics

## 📞 **Suporte Técnico**

Se encontrar problemas:
1. Verifique os logs: `firebase logs`
2. Console do navegador: F12 → Console
3. Firebase Console → Project Overview → Usage
4. Abra uma issue no GitHub com detalhes do erro

---

**✅ Seu sistema estará online em: `https://seu-projeto.web.app`**
