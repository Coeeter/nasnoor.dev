#let accent = rgb("#16181a")

#set document(
  title: "Noorullah Nasrullah — Resume",
  author: "Noorullah Nasrullah",
)

#set page(
  paper: "a4",
  margin: (x: 16mm, top: 14mm, bottom: 14mm),
)

#set text(
  font: ("Helvetica Neue", "Helvetica", "Arial"),
  size: 9.7pt,
  fill: accent,
  lang: "en",
)

#set par(justify: false, leading: 0.62em, spacing: 0.85em)

#show link: it => underline(offset: 2pt, stroke: 0.4pt, it)

#let section(title) = {
  v(3pt)
  block(
    width: 100%,
    stroke: (bottom: 0.6pt + accent),
    inset: (bottom: 3pt),
    text(size: 8.2pt, weight: "bold", tracking: 1.1pt, upper(title)),
  )
  v(3pt)
}

#let entry(title, meta, subtitle: none) = {
  block(spacing: 4pt)[
    #grid(
      columns: (1fr, auto),
      gutter: 8pt,
      text(weight: "bold", title),
      text(size: 9pt, meta),
    )
    #if subtitle != none [#text(size: 9pt)[#subtitle]]
  ]
}

#let bullets(..items) = {
  set list(indent: 0pt, body-indent: 6pt, marker: [•], spacing: 3.5pt)
  v(2pt)
  list(..items)
  v(2pt)
}

#grid(
  columns: (auto, 1fr),
  gutter: 10pt,
  align: horizon,
  image("logo.svg", width: 13mm),
  [
    #text(size: 19pt, weight: "bold")[Noorullah Nasrullah] \
    #v(1pt)
    #text(size: 10pt)[Software Engineer · Singapore]
  ],
)

#v(5pt)

#text(size: 9pt)[
  #link("mailto:nasrullah01n@gmail.com")[nasrullah01n\@gmail.com]
  · #link("https://nasnoor.dev")[nasnoor.dev]
  · #link("https://github.com/Coeeter")[github.com/Coeeter]
  · #link("https://www.linkedin.com/in/noorullah-nasrullah/")[linkedin.com/in/noorullah-nasrullah]
]

#v(6pt)

Computer science undergraduate at NUS. Fourteen months at GovTech Singapore
building a government licensing service and the document ingestion pipeline
behind a retrieval assistant for ministry staff. Publishes and maintains
open-source tooling used by other engineers.

#section("Experience")

#entry(
  "Software Engineer, Intern — GovTech Singapore",
  "Apr 2023 – May 2024",
)

#bullets(
  [Built the front end for a ground-up rebuild of a licensing and audit service
   for a government ministry, in Vue and ASP.NET, from requirements and design
   review through to production delivery.],
  [Joined a newly formed AI team for the final five months and built the
   document ingestion pipeline behind a retrieval-augmented assistant used by
   ministry staff, including work to reduce hallucinated answers.],
  [The assistant shipped as a product rather than a prototype; the team carried
   it forward after the internship ended.],
  [Extended past the original internship contract to continue the work.],
)

#section("Selected Projects")

#entry("AnimeKaiser", "2026", subtitle: [
  Self-hosted anime library with two-way synchronisation across AniList and
  MyAnimeList. Bun, Effect, TanStack Start, Drizzle, PostgreSQL.
])
#bullets(
  [Outbound changes become durable, retryable jobs dispatched over Postgres
   LISTEN/NOTIFY rather than an external queue.],
  [Source resolution sits behind a typed RPC boundary in a separate service, so
   the published repository depends on an interface, not an implementation.],
  [Six-package Effect monorepo with passkey authentication and end-to-end tests
   running in CI on every deploy.],
)

#entry("7Patches — DBS Bank Project Award", "2024", subtitle: [
  Data patch and query management system. Next.js, Prisma, AWS Lambda, GitHub
  Actions.
])
#bullets(
  [Replaced an ad-hoc manual database-change process with a reviewed, audited
   workflow: request submission, approval routing, execution logging and a
   searchable audit trail.],
  [Proposed and prototyped independently, then led a small team of interns
   through delivery.],
)

#entry("ClickToEat", "2022 – 2023", subtitle: [
  Restaurant review platform built across four polytechnic modules. Kotlin,
  Jetpack Compose, Hilt, Google Maps SDK, Firebase Cloud Messaging.
])
#bullets(
  [Each module required a different platform, so the same product was carried
   through a web app, a TypeScript REST API, a native Android client and a
   Flutter client, making the stacks directly comparable.],
  [The Android client is a multi-module build following Clean Architecture, with
   43 unit and instrumented UI test files (JUnit, Mockito, Compose Test, UI
   Automator).],
)

#entry("Command line tools", "2026", subtitle: [
  Go, Cobra, Bubble Tea.
])
#bullets(
  [#emph[ntmux] applies tmux sessions from JSON or YAML; #emph[zap] finds and
   clears build artefacts; #emph[cmdhelper] turns natural language into shell
   commands using local shell and git context.],
)

#section("Education")

#entry(
  "National University of Singapore",
  "2026 – present",
  subtitle: [B.Comp. Computer Science],
)

#v(3pt)

#entry(
  "Temasek Polytechnic",
  "2021 – 2024",
  subtitle: [Diploma in Information Technology — GPA 3.86],
)
#bullets(
  [Eleven distinctions, including Data Structures & Algorithms, Full Stack Web
   Development, Cloud Application Development and Major Project.],
  [Bronze medallist, WorldSkills Singapore — Mobile Application Development.
   Director's List, top 10% of cohort.],
)

#section("Technical Skills")

#set par(spacing: 3.5pt)

*Languages* — TypeScript, Go, Kotlin, Python, Java, SQL

*Web* — React, TanStack Start, Astro, Vue, Next.js, SvelteKit

*Backend* — Effect, Bun, Node.js, Ktor, Spring Boot, ASP.NET

*Data* — PostgreSQL, MySQL, SQLite, Redis, Drizzle ORM, Prisma

*Cloud* — AWS Lambda, Serverless Framework, Cloudflare Workers

*DevOps* — Docker, CI/CD with GitHub Actions, Linux, Dokploy, self-managed VPS
