# 🏛️ Sistema Jurídico 24/7 - Brasilândia RP

## 📋 **VISÃO GERAL**

Este é um sistema jurídico completo para GTA RP que permite:
- **Advogados** abrirem processos
- **Juízes** assumirem e julgarem processos
- **Todas as partes** receberem intimações em tempo real
- **Funcionamento 24/7** com sincronização via Firebase

---

## 🚀 **COMO USAR O SISTEMA**

### 1️⃣ **Para Advogados - Abrir Processo**
1. Acesse a seção **"Gestão Processual"**
2. No painel **"Sistema 24/7"**, vá em **"📋 Novo Processo"**
3. Preencha:
   - **Nome do réu**
   - **Crime cometido**
   - **Advogado responsável** (opcional)
4. Clique em **"⚖️ Abrir Processo"**

✅ **Resultado**: 
- Processo criado com número único
- Notificação enviada para TODOS online
- Status: "Aguardando Juiz"

---

### 2️⃣ **Para Juízes - Assumir Processo**
1. Na seção **"👨‍⚖️ Assumir como Juiz"**
2. Selecione um processo da lista
3. Digite seu nome como juiz
4. Clique em **"⚖️ Assumir Processo"**

✅ **Resultado**:
- Processo passa para "Em Andamento"
- Todas as partes são notificadas
- Juiz pode agora intimar e sentenciar

---

### 3️⃣ **Para Intimações**
1. Na seção **"📨 Enviar Intimação"**
2. Selecione o processo
3. Digite nome da pessoa a ser intimada
4. Informe o motivo da intimação
5. Clique em **"📨 Enviar Intimação"**

✅ **Resultado**:
- Intimação registrada no processo
- Pessoa intimada recebe notificação
- Log de atividade atualizado

---

### 4️⃣ **Para Sentenciar**
1. Na seção **"⚖️ Sentenciar"**
2. Selecione o processo
3. Escolha tipo de sentença:
   - **Condenação** (com valor de multa)
   - **Absolvição**
   - **Arquivamento**
4. Se condenação, informe valor da multa
5. Clique em **"⚖️ Sentenciar"**

✅ **Resultado**:
- Processo finalizado
- Todas as partes notificadas
- Sentença registrada permanentemente

---

## 🔄 **FUNCIONAMENTO 24/7**

### **Sistema Online (Firebase Conectado)**
- ✅ Notificações chegam a TODOS os usuários
- ✅ Processos sincronizados em tempo real
- ✅ Histórico salvo permanentemente
- ✅ Intimações enviadas automaticamente

### **Sistema Offline (Firebase Desconectado)**
- ⚠️ Notificações apenas locais
- ⚠️ Outros usuários não recebem atualizações
- ✅ Sistema continua funcionando
- 📱 Sincroniza quando voltar online

---

## 📊 **MONITORAMENTO**

### **Log de Atividades em Tempo Real**
- 🟢 **Status verde**: Sistema online
- 📋 Abertura de processos
- 👨‍⚖️ Designações de juiz
- 📨 Intimações enviadas
- ⚖️ Sentenças proferidas

### **Notificações Automáticas**
- **📋 Novo Processo**: Quando advogado abre processo
- **👨‍⚖️ Juiz Designado**: Quando juiz assume processo
- **📨 Intimação**: Quando alguém é intimado
- **⚖️ Sentença**: Quando processo é julgado

---

## 🎯 **FLUXO COMPLETO EXEMPLO**

1. **👨‍💼 Advogado Dr. Silva** abre processo contra João por furto
2. **🔔 Sistema notifica** todos os juízes online
3. **👨‍⚖️ Juiz Dr. Santos** assume o processo
4. **🔔 Sistema notifica** Dr. Silva e João
5. **📨 Juiz intima** João para audiência
6. **🔔 João recebe** notificação de intimação
7. **⚖️ Juiz sentencia** João após audiência
8. **🔔 Todas as partes** recebem sentença

---

## 🛠️ **FUNCIONALIDADES TÉCNICAS**

### **Integração Firebase**
- Banco de dados em tempo real
- Sincronização automática
- Backup de dados
- Notificações push

### **Interface Responsiva**
- Design adaptável
- Cores por tipo de ação
- Feedback visual imediato
- Log em tempo real

### **Sistema de Notificações**
- Local (sempre funciona)
- Global (quando Firebase online)
- Diferentes tipos visuais
- Som de alerta

---

## 🔧 **CONFIGURAÇÃO TÉCNICA**

### **Requisitos**
- Firebase configurado
- Conexão com internet (para sincronização)
- Navegador moderno
- JavaScript habilitado

### **Variáveis Importantes**
```javascript
// Sistema monitora estas variáveis
window.firebaseDB // Conexão com banco
window.firebaseModules // Módulos Firebase
processos[] // Array de processos ativos
proximoNumeroProcesso // Contador automático
```

---

## 📱 **COMPATIBILIDADE GTA RP**

### **Integração Perfeita**
- ✅ Funciona 24/7 mesmo sem players
- ✅ Mantém histórico de processos
- ✅ Notificações chegam quando player entra
- ✅ Sistema jurídico realista
- ✅ Baseado no sistema brasileiro

### **Cenários de Uso**
- **Investigações policiais** → Abrir processo
- **Prisões em flagrante** → Processo automático
- **Advogados contratados** → Acompanhar processo
- **Audiências marcadas** → Intimações automáticas
- **Sentenças cumpridas** → Registro permanente

---

## 🎮 **COMANDOS RÁPIDOS**

| Ação | Local | Botão |
|------|-------|-------|
| Abrir processo | Novo Processo | ⚖️ Abrir Processo |
| Assumir como juiz | Assumir como Juiz | ⚖️ Assumir Processo |
| Intimar alguém | Enviar Intimação | 📨 Enviar Intimação |
| Dar sentença | Sentenciar | ⚖️ Sentenciar |
| Ver atividades | Log de Atividades | (automático) |

---

## 🏛️ **HIERARQUIA DO SISTEMA**

1. **🎯 Sistema Automático**: Controla numeração e logs
2. **👨‍💼 Advogados**: Abrem processos para seus clientes
3. **👨‍⚖️ Juízes**: Assumem, intimam e sentenciam
4. **👥 Partes Envolvidas**: Recebem intimações e sentenças
5. **🔔 Notificações**: Mantêm todos informados

---

> **🚀 Sistema desenvolvido especificamente para Brasilândia RP**
> 
> ✅ **Funcionamento 24/7 garantido**
> 
> 🔄 **Sincronização em tempo real**
> 
> ⚖️ **Baseado no sistema jurídico brasileiro**
