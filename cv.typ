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
#let location = "Santo André, SP, Brazil"

// Professional Summary (subtitle)
#let summary = "Software Engineer"

// Resume configuration
#let theme = rgb("#26428b")
#let font = "New Computer Modern"
#let fontSize = 11pt
#let lang = "en"
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
= EDUCATION
#edu(
  institution: "Federal University of ABC (UFABC)",
  date: "Sep 2021 - Present",
  location: "São Caetano, SP, Brazil",
  degrees: (
    ("Bachelor's", "Computer Science"),
    ("Bachelor's", "Science and Technology"),
  ),
  gpa: "",
)
#edu(
  institution: "Cambridge Assessment English",
  date: "Dec 2019",
  location: "São Paulo, SP, Brazil",
  degrees: (
    ("Certificate", "FCE – First Certificate in English (B2)"),
  ),
  gpa: "",
)

// Professional Experience
= PROFESSIONAL EXPERIENCE
#exp(
  title: "Software Engineer Intern",
  organization: "Layers Education",
  date: "Mar 2025 - Present",
  location: "São Caetano, SP, Brazil",
  details: [
    - Built a direct-mail (bulk-messaging) feature for the Communications product that parses uploaded spreadsheets and dispatches notifications, engineered with Bull job queues and Redis to process sends asynchronously and reliably at the platform's scale of 1,800+ schools and 3M+ students.
    - Independently drove the re-architecture of the Layers AI assistant from a hidden drawer into an inline, action-based system with streaming responses, owning the design and implementation with only a later tech-lead review; built a model-agnostic action registry (revise / expand / shorten) on the AI SDK with rate-limiting and error handling, doubling daily AI-assisted output from ~100 to ~400 posts per day.
    - Designed and shipped an event-recurrence engine for the Calendar product based on the iCalendar RRULE standard (RFC 5545), enabling complex repeating schedules consistent with industry conventions.
    - Contributed to an end-to-end migration of a legacy micro-frontend across the Vue front-end and TypeScript back-end, from design through deployment.
    - Worked across two Node.js back-ends (Payments and Core), modifying API routes and integrating their services to surface Core member data inside the Payments product.
    - Instrumented key features with PostHog for usage analytics and built Metabase dashboards to validate decisions with data before building, directly informing the direct-mail and AI-assistant features.
    - Empowered N1/N2 support teams by building internal tools on the Openblocks (Lowcoder) low-code platform, and wired DevRev and Discord integrations via Windmill to improve issue visibility.
    - Optimized MongoDB schemas and indexes to cut load times, and resolved N1–N3 production incidents while documenting internal processes, improving reliability across multiple applications.
  ],
)
#exp(
  title: "Summer Software Engineering Intern",
  organization: "Layers Education",
  date: "Dec 2024 - Feb 2025",
  location: "São Caetano, SP, Brazil",
  details: [
    - Modernized the documentation platform by migrating it from Stencil to VitePress (Vue, TypeScript).
    - Built and configured CI/CD pipelines in GitLab, automating site deployment.
    - Integrated Decap CMS, streamlining content management and update workflows.
    - Authored a hands-on tutorial for sending notifications through the Layers API with working code examples.
  ],
)

// Technical Skills
= TECHNICAL SKILLS
#skills((
  (
    "Programming Languages",
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
    "Databases",
    (
      [MongoDB],
      [Redis],
      [PostgreSQL],
    ),
  ),
  (
    "DevOps & Infrastructure",
    (
      [Docker],
      [CI/CD],
      [GitLab],
      [Linux],
    ),
  ),
  (
    "Tools & Platforms",
    (
      [Git],
      [Jira],
      [DevRev],
      [Github],
      [Gitlab],
    ),
  ),
  (
    "Analytics & Automation",
    (
      [PostHog],
      [Metabase],
      [Windmill],
      [Openblocks/Lowcoder],
    ),
  ),
))
