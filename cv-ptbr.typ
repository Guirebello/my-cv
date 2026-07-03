#import "@preview/clickworthy-resume:1.0.0": *

// Personal Information
#let name = "Guilherme Meira Rebello"
#let email = "gui.rebello1@gmail.com"
#let github = "github.com/Guirebello"
#let gitlab = "gitlab.com/Guirebello"
#let linkedin = "linkedin.com/in/guirebello"
#let portfolio = "guirebello.me"
#let contacts = (
  [#link("mailto:" + email)[#email]],
  [#link("https://" + github)[GitHub]],
  [#link("https://" + gitlab)[GitLab]],
  [#link("https://" + linkedin)[LinkedIn]],
  [#link("https://" + portfolio)[#portfolio]],
)
#let location = "Santo André, SP, Brasil"

// Professional Summary (subtitle)
#let summary = "Engenheiro de Software"

// Resume configuration
#let theme = rgb("#26428b")
#let font = "New Computer Modern"
#let fontSize = 10.5pt
#let lang = "pt"
#let margin = (
  top: 1cm,
  bottom: 0cm,
  left: 1cm,
  right: 1cm,
)

// Resume Header and configuration
#show: resume.with(
  author: name,
  location: location,
  contacts: contacts,
  summary: summary,
  theme-color: theme,
  font: font,
  font-size: fontSize,
  lang: lang,
  margin: margin,
)

// Education
= FORMAÇÃO ACADÊMICA
#edu(
  institution: "Universidade Federal do ABC (UFABC)",
  date: "Set 2021 - Atual",
  location: "São Caetano, SP, Brasil",
  degrees: (
    ("Bacharelado", "Ciência da Computação"),
    ("Bacharelado", "Ciência e Tecnologia"),
  ),
  gpa: "",
)
#edu(
  institution: "Cambridge Assessment English",
  date: "Dez 2019",
  location: "São Paulo, SP, Brasil",
  degrees: (
    ("Certificado", "FCE - First Certificate in English (B2)"),
  ),
  gpa: "",
)

// Professional Experience
= EXPERIÊNCIA PROFISSIONAL
#exp(
  title: "Engenheiro de Software Júnior",
  organization: "Layers Education",
  date: "Fev 2026 - Atual",
  location: "São Caetano, SP, Brasil",
  details: [
    - Contribuí para a migração de ponta a ponta de um micro-frontend legado, abrangendo o front-end em Vue e o back-end em TypeScript, do design ao deployment.
    - Capacitei as equipes de suporte N1/N2 construindo ferramentas internas na plataforma low-code Openblocks (Lowcoder), e integrei DevRev e Discord via Windmill para melhorar a visibilidade dos issues.
    - Otimizei schemas e índices no MongoDB para reduzir os tempos de carregamento, e resolvi incidentes de produção de N1 a N3 documentando processos internos, melhorando a confiabilidade em múltiplas aplicações.
  ],
)
#exp(
  title: "Estagiário de Engenharia de Software",
  organization: "Layers Education",
  date: "Mar 2025 - Fev 2026",
  location: "São Caetano, SP, Brasil",
  details: [
    - Desenvolvi um recurso de direct-mail (bulk-messaging) para o produto Communications que faz o parse de planilhas enviadas e dispara notificações, projetado com filas de jobs Bull e Redis para processar os envios de forma assíncrona e confiável na escala da plataforma, com mais de 1.800 escolas e mais de 3 milhões de alunos.
    - Conduzi de forma independente a re-arquitetura do assistente de IA da Layers, de um drawer oculto para um sistema inline baseado em ações com respostas em streaming, sendo responsável pelo design e pela implementação com apenas uma revisão posterior do tech-lead; construí um action registry model-agnostic (revise / expand / shorten) sobre o AI SDK, com rate-limiting e tratamento de erros, dobrando a produção diária assistida por IA de cerca de 100 para cerca de 400 posts por dia.
    - Projetei e entreguei um engine de recorrência de eventos para o produto Calendar baseado no padrão RRULE do iCalendar (RFC 5545), viabilizando agendamentos repetidos complexos e consistentes com as convenções da indústria.
    - Atuei em dois back-ends Node.js (Payments e Core), modificando rotas de API e integrando seus serviços para expor os dados de membros do Core dentro do produto Payments.
    - Instrumentei recursos-chave com PostHog para analytics de uso e construí dashboards no Metabase para validar decisões com dados antes de construir, embasando diretamente os recursos de direct-mail e do assistente de IA.
  ],
)
#exp(
  title: "Estagiário de Engenharia de Software (Verão)",
  organization: "Layers Education",
  date: "Dez 2024 - Fev 2025",
  location: "São Caetano, SP, Brasil",
  details: [
    - Modernizei a plataforma de documentação migrando-a de Stencil para VitePress (Vue, TypeScript).
    - Construí e configurei pipelines de CI/CD no GitLab, automatizando o deployment do site.
    - Integrei o Decap CMS, agilizando os fluxos de gerenciamento e atualização de conteúdo.
    - Escrevi um tutorial prático para envio de notificações através da Layers API, com exemplos de código funcionais.
  ],
)

// Technical Skills
= COMPETÊNCIAS TÉCNICAS
#skills((
  (
    "Linguagens de Programação",
    (
      [TypeScript],
      [JavaScript],
      [Python],
      [Bash],
      [C],
    ),
  ),
  (
    "Web & Frameworks",
    (
      [Vue],
      [Nuxt],
      [React],
      [Next],
      [Node.js],
      [HTML/CSS],
    ),
  ),
  (
    "Bancos de Dados",
    (
      [MongoDB],
      [Redis],
      [PostgreSQL],
    ),
  ),
  (
    "DevOps & Infraestrutura",
    (
      [Docker],
      [CI/CD],
      [Linux],
    ),
  ),
  (
    "Ferramentas & Plataformas",
    (
      [Git],
      [Jira],
      [DevRev],
    ),
  ),
  (
    "Analytics & Automação",
    (
      [PostHog],
      [Metabase],
      [Windmill],
      [Openblocks/Lowcoder],
    ),
  ),
))
