#import "@preview/clickworthy-resume:1.0.0": *

// Personal Information
#let name = "Guilherme Meira Rebello"
#let email = "gui.rebello1@gmail.com"
#let github = "github.com/Guirebello"
#let linkedin = "linkedin.com/in/guirebello"
#let contacts = (
  [#link("mailto:" + email)[#email]],
  [#link("https://" + github)[#github]],
  [#link("https://" + linkedin)[#linkedin]],
)
#let location = "Santo André, SP, Brasil"

// Professional Summary
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
    ("Bachelor's", "Science and Technology"),
    ("Bachelor's", "Computer Science"),
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
    - Provided technical support at N1, N2, and N3 levels and documented internal processes, efficiently mapping and resolving user incidents.
    - Fixed bugs and implemented features in the front-end (Vue, CSS) and back-end (APIs with TypeScript and business logic) across multiple applications and repositories.
    - Analyzed MongoDB schemas and indexes, leading to optimized loading times and performance enhancements.
    - Implemented features
  ],
)

#exp(
  title: "Summer Software Engineering Intern",
  organization: "Layers Education",
  date: "Dec 2024 - Feb 2025",
  location: "São Caetano, SP, Brazil",
  details: [
    - Modernized the documentation platform by migrating from Stencil to Vitepress using Vue and TypeScript.
    - Developed and configured CI/CD pipelines in GitLab, automating site deployment.
    - Integrated Decap CMS, streamlining update workflows and content management.
    - Refined the documentation layout, enhancing visual consistency and usability.
    - Created a hands-on tutorial for sending notifications via the Layers API with real code examples.
  ],
)

// Technical Skills
= TECHNICAL SKILLS
#skills((
  (
    "Programming Languages",
    (
      [Python],
      [TypeScript],
      [JavaScript],
      [Bash],
      [C],
    ),
  ),
  (
    "Web & Frameworks",
    (
      [Vue],
      [Node.js],
      [HTML/CSS],
    ),
  ),
  (
    "DevOps & Infrastructure",
    (
      [Docker],
      [CI/CD],
      [Linux],
    ),
  ),
  (
    "Tools & Platforms",
    (
      [Git],
      [Jira],
      [DevRev],
      [Wireshark],
    ),
  ),
))
