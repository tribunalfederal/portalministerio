# 🏛️ Sistema Jurídico Completo - Brasilândia RP

## 📋 Visão Geral
Sistema jurídico hierárquico completo com integração Firebase em tempo real, distribuído em portais especializados para diferentes níveis de autoridade.

## 🎯 Objetivos Alcançados
- ✅ **Transformação para tempo real**: Sistema totalmente integrado com Firebase
- ✅ **Distribuição de funcionalidades**: Cada portal possui funcionalidades específicas + herança
- ✅ **Sistema hierárquico**: 11 níveis de acesso com herança de funcionalidades
- ✅ **Notificações em tempo real**: Sistema de alertas Firebase
- ✅ **Interface moderna**: Design responsivo com Tailwind CSS

## 🏗️ Arquitetura do Sistema

### Portal Principal (`index.html`)
- **Função**: Hub central e portal básico
- **Recursos**: Login, calculadora de penas, geração de documentos
- **Firebase**: Configuração principal, notificações em tempo real
- **Acesso**: Todos os usuários

### Portal do Advogado (`portal-advogado.html`)
- **Nível**: 11 (Base da hierarquia)
- **Recursos**: 
  - 📝 Geração de petições e documentos
  - 💰 Calculadora de honorários
  - 📚 Pesquisa de jurisprudência
  - 📄 Sistema de contratos
- **Firebase**: Salvamento de documentos, histórico de ações

### Portal do Promotor (`portal-promotor.html`)
- **Níveis**: 5-8 (Ministério Público)
- **Recursos**:
  - 🔍 Calculadora avançada de penas
  - ⚖️ Sistema de denúncias
  - 👥 Ferramentas específicas do MP
  - **+ Herança**: Todas as funcionalidades do Portal Advogado
- **Firebase**: Cálculos de penas, histórico de processos

### Portal Juiz Estadual (`portal-juiz-estadual.html`)
- **Níveis**: 3-4 (Justiça Estadual)
- **Recursos**:
  - 📊 Dashboard judicial com estatísticas
  - ⚖️ Gerador de sentenças
  - 📅 Sistema de audiências
  - **+ Herança**: Todas as funcionalidades dos níveis inferiores
- **Firebase**: Sentenças, estatísticas, agenda

### Portal Juiz Federal (`portal-juiz-federal.html`)
- **Níveis**: 1-2 (Suprema Autoridade)
- **Recursos**:
  - 👑 Administração completa do sistema
  - 👥 Gestão de usuários
  - 🆔 Liberação de OAB
  - ⚙️ Configuração do sistema
  - 📋 Sistema de nomeações
  - 📈 Monitoramento em tempo real
  - **+ Herança**: TODAS as funcionalidades do sistema
- **Firebase**: Controle total, logs do sistema, configurações

## 🔥 Integração Firebase

### Configuração
```javascript
const firebaseConfig = {
    apiKey: "AIzaSyC2AeS3l_sJZkOCCrPSXpAo9lBKGhRhQ",
    authDomain: "sistema-juridico-brasila-7c777.firebaseapp.com",
    projectId: "sistema-juridico-brasila-7c777",
    storageBucket: "sistema-juridico-brasila-7c777.firebasestorage.app",
    messagingSenderId: "1097064635866",
    appId: "1:1097064635866:web:cad6e6b2dbf57e7f3d0b2a"
};
```

### Funcionalidades em Tempo Real
- **Notificações**: Sistema de alertas instantâneos
- **Salvamento automático**: Documentos salvos automaticamente
- **Sincronização**: Dados sincronizados entre todos os portais
- **Monitoramento**: Status de conexão em tempo real

## 🚀 Como Usar

### 1. Acesso Inicial
1. Abra `index.html`
2. Faça login com suas credenciais
3. Escolha o portal apropriado ao seu nível

### 2. Navegação entre Portais
- Usuários de nível superior podem acessar qualquer portal
- Sistema de redirecionamento inteligente
- Manutenção da sessão entre portais

## ✨ Conclusão

O sistema foi **completamente transformado** conforme solicitado:

1. ✅ **Tempo real com Firebase**: Integração completa implementada
2. ✅ **Distribuição de funcionalidades**: Cada portal com suas especialidades
3. ✅ **Sistema hierárquico**: 11 níveis com herança perfeita
4. ✅ **Interface moderna**: Design responsivo e intuitivo
5. ✅ **Notificações em tempo real**: Sistema de alertas instantâneos

O sistema agora funciona de forma **distribuída** mas **integrada**, onde cada portal mantém sua especialidade enquanto permite acesso hierárquico às funcionalidades de níveis inferiores através do sistema de herança implementado.

---

**Desenvolvido para Brasilândia RP** 🏛️  
**Sistema Jurídico Completo em Tempo Real** ⚖️  
**Firebase Integration** 🔥
