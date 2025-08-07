# 🏛️ Sistema Jurídico Brasileiro

[![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)](https://firebase.google.com/)
[![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)](https://javascript.info/)
[![TailwindCSS](https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white)](https://tailwindcss.com/)

Sistema completo de gestão jurídica com portais específicos para diferentes níveis hierárquicos do sistema judiciário brasileiro.

## 🎯 **Visão Geral**

O Sistema Jurídico Brasileiro é uma plataforma web que oferece ferramentas especializadas para:

- **👨‍💼 Advogados** - Geração de petições, recursos e documentos básicos
- **⚖️ Promotores** - Denúncias, pareceres e documentos do Ministério Público  
- **🏛️ Juízes Estaduais** - Sentenças e decisões da justiça estadual
- **👑 Juízes Federais** - Acesso completo incluindo documentos federais exclusivos

## 🔐 **Hierarquia de Permissões**

```
👑 Juiz Federal (ACESSO TOTAL)
├── Habeas Corpus Federal
├── Sentenças Federais
├── Documentos Estaduais
├── Documentos do MP
└── Documentos de Advogado

🟢 Juiz Estadual (ACESSO AVANÇADO)
├── Sentenças Estaduais
├── Documentos do MP Estadual
└── Documentos de Advogado

🔴 Promotor (ACESSO INTERMEDIÁRIO)
├── Denúncias e Pareceres
└── Documentos de Advogado

🔵 Advogado (ACESSO BÁSICO)
└── Petições e Recursos
```

## 🚀 **Tecnologias Utilizadas**

- **Frontend:** HTML5, CSS3, JavaScript ES6+
- **Styling:** TailwindCSS
- **Backend:** Firebase (Auth + Firestore)
- **Icons:** Font Awesome 6
- **Hosting:** Firebase Hosting

## 📦 **Instalação Rápida**

### **1. Clone o repositório:**
```bash
git clone https://github.com/SEU-USUARIO/sistema-juridico-brasileiro.git
cd sistema-juridico-brasileiro
```

### **2. Configure o Firebase:**
```bash
npm install -g firebase-tools
firebase login
firebase init
```

### **3. Configure as credenciais:**
Edite o arquivo `firebase-config.js` com suas credenciais:
```javascript
const firebaseConfig = {
  apiKey: "SUA_API_KEY",
  authDomain: "SEU_PROJETO.firebaseapp.com",
  projectId: "SEU_PROJETO_ID",
  // ... outras configurações
};
```

### **4. Deploy:**
```bash
firebase deploy
```

## 🏗️ **Estrutura do Projeto**

```
sistema-juridico-brasileiro/
├── 📁 public/
│   ├── index.html (login principal)
│   ├── portal-advogado.html
│   ├── portal-promotor.html
│   ├── portal-juiz-estadual.html
│   ├── portal-juiz-federal.html
│   └── portal-admin.html
├── 📁 src/
│   ├── 📁 css/
│   ├── 📁 js/
│   └── 📁 assets/
├── 📁 docs/
└── firebase.json
```

## 🔧 **Configuração de Usuários**

### **Usuário Admin Padrão:**
- **Email:** alexandre.moraes@stf.jus.br
- **Senha:** STF2025@Seguro
- **Cargo:** 1º Juiz Federal (Acesso Total)

### **Estrutura de Cargos:**
```javascript
const estruturaJudicial = {
  // Juízes Federais
  '1_juiz_federal': { nome: '1º Juiz Federal', nivel: 1 },
  '2_juiz_federal': { nome: '2º Juiz Federal', nivel: 2 },
  '3_juiz_federal': { nome: '3º Juiz Federal', nivel: 3 },
  
  // Juízes Estaduais  
  'juiz_direito': { nome: 'Juiz de Direito', nivel: 4 },
  'desembargador': { nome: 'Desembargador', nivel: 3 },
  
  // Ministério Público
  'promotor_justica': { nome: 'Promotor de Justiça', nivel: 5 },
  'procurador_republica': { nome: 'Procurador da República', nivel: 4 },
  
  // Advogados
  'advogado_criminal': { nome: 'Advogado Criminal', nivel: 6 },
  'advogado_civil': { nome: 'Advogado Civil', nivel: 6 }
};
```

## 📋 **Funcionalidades Principais**

### **✅ Sistema de Autenticação**
- Login seguro com Firebase Auth
- Redirecionamento automático por cargo
- Controle de sessão
- Logout seguro

### **✅ Portais Especializados**
- Interface personalizada por tipo de usuário
- Acesso diferenciado a documentos
- Dashboard específico para cada cargo
- Design responsivo

### **✅ Geração de Documentos**
- Templates jurídicos predefinidos
- Validação por nível de permissão
- Preenchimento automático de dados
- Export em PDF (em desenvolvimento)

### **🚧 Em Desenvolvimento**
- [ ] Sistema de comunicação entre portais
- [ ] Gestão de processos/casos
- [ ] Notificações em tempo real
- [ ] Assinatura digital
- [ ] Integração com sistemas tribunais

## 🔒 **Segurança**

- **Autenticação:** Firebase Authentication
- **Autorização:** Controle por cargo/nível
- **Dados:** Firestore com regras de segurança
- **Frontend:** Validação dupla de permissões
- **Session:** Controle de sessão ativa

## 🤝 **Contribuição**

1. Faça um Fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/NovaFuncionalidade`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova funcionalidade'`)
4. Push para a branch (`git push origin feature/NovaFuncionalidade`)
5. Abra um Pull Request

## 📞 **Suporte**

Para dúvidas ou suporte:
- 📧 Email: suporte@sistemajuridico.com.br
- 🐛 Issues: [GitHub Issues](https://github.com/SEU-USUARIO/sistema-juridico-brasileiro/issues)
- 📖 Docs: [Documentação Completa](./docs/)

## 📄 **Licença**

Este projeto está licenciado sob a licença MIT - veja o arquivo [LICENSE](LICENSE) para detalhes.

## 👏 **Agradecimentos**

- Tribunal de Justiça do Brasil
- Comunidade open source
- Contribuidores do projeto

---

**⚖️ Desenvolvido para modernizar o sistema judiciário brasileiro**
