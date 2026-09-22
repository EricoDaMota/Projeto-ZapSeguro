# Sistema de Proteção contra Golpes para Idosos

Aplicação mobile desenvolvida como parte de um projeto de extensão universitária da **Universidade Católica de Pernambuco (UNICAP)**.

O projeto tem como objetivo auxiliar na proteção de pessoas idosas contra possíveis golpes enviados por mensagens, utilizando a análise de notificações para identificar conteúdos potencialmente suspeitos e informar automaticamente um contato responsável.

> **Status:** Em desenvolvimento

## Sobre o projeto

Pessoas idosas podem apresentar maior dificuldade na identificação de mensagens fraudulentas, especialmente quando envolvem temas como PIX, bancos, pagamentos ou solicitações urgentes.

A proposta deste projeto é reduzir a necessidade de interação do idoso com o sistema. Após a configuração inicial de um contato responsável, a aplicação pode analisar notificações recebidas e, quando uma mensagem apresentar características consideradas suspeitas, gerar um alerta para o responsável.

O objetivo não é substituir a atenção do usuário, mas oferecer uma camada adicional de proteção e facilitar a identificação de possíveis tentativas de golpe.

## Funcionamento

O fluxo planejado da aplicação é:

```text
Mensagem recebida
       │
       ▼
Notificação do dispositivo
       │
       ▼
Análise da mensagem
       │
       ▼
Identificação de possível risco
       │
       ├── Não identificada como suspeita
       │          │
       │          ▼
       │       Fluxo normal
       │
       └── Identificada como suspeita
                  │
                  ▼
          Registro da ocorrência
                  │
                  ▼
        Alerta ao responsável
```

O alerta pode conter informações relevantes para que o responsável compreenda a situação, como:

* Identificação do idoso;
* Número ou identificação do remetente;
* Conteúdo da mensagem;
* Data e horário do recebimento;
* Motivo ou classificação da suspeita.

## Principais funcionalidades

### Análise de notificações

Monitoramento das notificações recebidas pelo dispositivo para identificar mensagens que possam apresentar características de golpes.

### Identificação de mensagens suspeitas

Utilização de palavras-chave e padrões relacionados a possíveis tentativas de fraude, como mensagens envolvendo PIX, bancos, pagamentos e solicitações suspeitas.

### Cadastro do responsável

Configuração de uma pessoa de confiança que será vinculada ao usuário idoso.

### Alertas

Envio de informações sobre mensagens consideradas suspeitas para o contato responsável.

### Histórico

Registro das ocorrências identificadas para permitir a consulta posterior das mensagens analisadas.

## Tecnologias

Atualmente, o projeto está sendo desenvolvido utilizando:

* **Flutter**
* **Dart**
* **Android**
* **Figma** para prototipação das interfaces

Outras tecnologias poderão ser adicionadas conforme a implementação das funcionalidades do sistema.

## Arquitetura

A aplicação está sendo estruturada de forma modular, buscando separar a interface, regras de negócio, modelos e serviços.

Estrutura inicial:

```text
lib/
├── models/
├── screens/
├── services/
├── widgets/
└── main.dart
```

A estrutura pode ser modificada durante o desenvolvimento para acompanhar a evolução do projeto.

## Interface

As interfaces estão sendo projetadas com foco em:

* Simplicidade;
* Acessibilidade;
* Textos claros;
* Elementos visuais de fácil compreensão;
* Redução da quantidade de ações necessárias por parte do idoso.

### Protótipo

O protótipo das interfaces está sendo desenvolvido no Figma.

> Adicione aqui as imagens do protótipo quando estiverem prontas.

## Privacidade e segurança

O projeto considera a necessidade de proteger informações potencialmente sensíveis presentes nas notificações.

A aplicação foi projetada para analisar apenas as informações necessárias para identificar possíveis mensagens suspeitas.

O projeto não tem como objetivo acessar ou modificar diretamente as conversas do WhatsApp.

## Contexto acadêmico

Este projeto está sendo desenvolvido como parte de uma atividade de **extensão universitária da UNICAP**, buscando aplicar conhecimentos de desenvolvimento de software na resolução de um problema social.

A proposta também envolve conceitos de acessibilidade e segurança digital, tendo como foco a criação de uma solução tecnológica de fácil utilização para pessoas idosas e seus familiares.

## Roadmap

* [x] Definição do problema
* [x] Definição da proposta da solução
* [x] Prototipação inicial das telas
* [ ] Implementação da interface em Flutter
* [ ] Implementação do monitoramento de notificações
* [ ] Implementação da análise de mensagens
* [ ] Implementação do cadastro do responsável
* [ ] Implementação do sistema de alertas
* [ ] Implementação do histórico
* [ ] Testes de usabilidade
* [ ] Testes com usuários
* [ ] Melhorias de acessibilidade

## Limitações

O sistema é uma ferramenta de auxílio e não garante a identificação de todas as tentativas de golpe.

Mensagens fraudulentas podem utilizar diferentes estratégias, linguagens e abordagens. Por isso, os mecanismos de identificação deverão ser continuamente avaliados e aprimorados durante o desenvolvimento.

## Objetivo futuro

A longo prazo, a proposta é desenvolver uma solução capaz de identificar possíveis tentativas de golpe de maneira automática, reduzindo a quantidade de decisões que precisam ser tomadas pelo usuário idoso e permitindo que familiares ou responsáveis acompanhem situações potencialmente perigosas.

## Desenvolvimento

Projeto desenvolvido por estudantes da **Universidade Católica de Pernambuco (UNICAP)** no contexto de um projeto de extensão universitária.

---

**Projeto acadêmico em desenvolvimento.**
