#let profile = (
  name: "Noorullah Nasrullah",
  role: "Software Engineer",
  location: "Singapore",
  email: "nasrullah01n@gmail.com",
  website: "nasnoor.dev",
  github: "github.com/Coeeter",
  linkedin: "linkedin.com/in/noorullah-nasrullah",
)

#let summary = [
  NUS Computer Science undergraduate with 14 months of software engineering
  experience at GovTech Singapore. Delivered the frontend for a production
  government licensing-system replacement and built document ingestion for a
  retrieval assistant used by ministry staff.
]

#let govtech = (
  role: "Software Engineering Intern",
  organisation: "GovTech Singapore",
  dates: "Apr 2023 - May 2024",
  bullets: (
    [Delivered the frontend for the production replacement of the Ministry of
     Manpower's legacy iOSH licensing and audit system, contributing from
     requirements and design review through implementation and rollout.],
    [Joined a newly formed AI team for the final five months and built the
     document ingestion pipeline for a retrieval-augmented assistant used by
     ministry staff, parsing source files, extracting content and feeding it
     into the assistant's retrieval pipeline.],
    [Proposed and built 7Patches to replace an ad-hoc database patch and query
     process with reviewed requests, approval routing, execution logs and a
     searchable audit trail; led a small team of interns through delivery and
     received the DBS Bank Project Award.],
  ),
)

#let projects = (
  (
    title: "AnimeKaiser",
    dates: "2026",
    link: "https://github.com/Coeeter/animekaiser",
    subtitle: [Self-hosted anime library with two-way synchronisation across
      AniList and MyAnimeList. Bun, Effect, TanStack Start, Drizzle, PostgreSQL.],
    bullets: (
      [Made outbound changes durable and retryable using Postgres
       `LISTEN/NOTIFY`, avoiding a separate queue service.],
      [Separated source resolution behind a typed RPC boundary; added passkey
       authentication and end-to-end tests running in CI on every deploy.],
    ),
  ),
  (
    title: "ClickToEat",
    dates: "2022 - 2023",
    link: "https://github.com/Coeeter/kt-android-clicktoeat",
    subtitle: [Restaurant review platform developed across web, API, Android
      and Flutter coursework. Kotlin, Jetpack Compose, Hilt, Google Maps SDK.],
    bullets: (
      [Built the Android client as a multi-module application with 43 unit and
       instrumented UI test files across JUnit, Compose Test and UI Automator.],
    ),
  ),
  (
    title: "drizzle-cuid2",
    dates: "2024",
    link: "https://github.com/Coeeter/drizzle-cuid2",
    subtitle: [Small TypeScript utility providing CUID2 column helpers for
      Drizzle ORM across PostgreSQL, MySQL and SQLite; published on npm.],
    bullets: (),
  ),
)

#let education = (
  (
    institution: "National University of Singapore",
    dates: "2026 - 2030 (expected)",
    qualification: "Bachelor of Computing in Computer Science",
    detail: none,
  ),
  (
    institution: "Temasek Polytechnic",
    dates: "2021 - 2024",
    qualification: "Diploma in Information Technology - GPA 3.86",
    detail: [Eleven distinctions; Director's List (top 10% of cohort).],
  ),
)

#let service = (
  title: "Full-time National Service",
  organisation: "Singapore Police Force",
  dates: "2024 - 2026",
  detail: "Ground Response Force Officer, Airport Police Division",
)

#let awards = (
  (
    title: "WorldSkills Singapore - Bronze Medallist",
    dates: "2023",
    detail: "Mobile Application Development",
  ),
  (
    title: "iNTUition - Best Pre-University Award",
    dates: "2023",
    detail: "EmailGPT, a Gmail extension for drafting replies in place",
  ),
)

#let skills = (
  (label: "Languages", value: "TypeScript, Go, Kotlin, Python, Java"),
  (label: "Technologies", value: "React, Node.js, Bun, PostgreSQL, Docker, AWS"),
)

#let ink = rgb("#16181a")
#let soft = rgb("#f4f1eb")

#set document(title: "Noorullah Nasrullah - Resume", author: profile.name)
#set page(paper: "a4", margin: (x: 16mm, top: 13mm, bottom: 13mm))
#set text(
  font: ("Helvetica Neue", "Helvetica", "Arial"),
  size: 10.2pt,
  fill: ink,
  lang: "en",
)
#set par(justify: false, leading: 3.6pt, spacing: 0pt)
#show link: it => it

#let section(title) = {
  v(13pt)
  block(
    width: 100%,
    stroke: (bottom: 0.6pt + ink),
    inset: (bottom: 2.5pt),
    text(size: 8.8pt, weight: "bold", tracking: 1pt, upper(title)),
  )
}

#let heading(title, organisation, dates, detail: none) = {
  v(10pt)
  block(width: 100%)[
    #grid(
      columns: (1fr, auto),
      gutter: 8pt,
      [#text(weight: "bold", title)#if organisation != [] [ #text(weight: "regular")[at] #text(weight: "bold", organisation)]],
      text(size: 9.3pt, dates),
    )
    #if detail != none [#v(4pt)#text(size: 9.3pt, detail)]
  ]
}

#let project-heading(project) = {
  let title = if project.link == none {
    project.title
  } else {
    link(project.link, project.title)
  }
  heading(title, [], project.dates, detail: project.subtitle)
}

#let bullets(items) = {
  v(4pt)
  block[
    #set list(
      indent: 0pt,
      body-indent: 7pt,
      marker: [#sym.bullet],
      spacing: 6pt,
    )
    #list(..items)
  ]
  v(2pt)
}

#grid(
  columns: (auto, 1fr),
  gutter: 10pt,
  align: horizon,
  box(fill: soft, inset: 3pt, radius: 4pt)[#image("logo.svg", width: 12mm)],
  stack(
    dir: ttb,
    spacing: 4pt,
    text(size: 21.5pt, weight: "bold", profile.name),
    text(size: 10.5pt)[#profile.role - #profile.location],
  ),
)
#v(7pt)
#text(size: 9pt)[
  #show link: it => underline(offset: 2pt, stroke: 0.35pt, it)
  #link("mailto:" + profile.email)[#profile.email] | #link("https://" + profile.website)[#profile.website]
  | #link("https://" + profile.github)[#profile.github] | #link("https://" + profile.linkedin)[#profile.linkedin]
]
#v(9pt)
#summary

#section("Software Experience")
#heading(govtech.role, govtech.organisation, govtech.dates)
#bullets(govtech.bullets)

#section("Selected Projects")
#for project in projects {
  project-heading(project)
  if project.bullets.len() > 0 { bullets(project.bullets) }
}

#section("Education and Service")
#let nus = education.at(0)
#heading(nus.institution, [], nus.dates, detail: nus.qualification)
#heading(service.title, service.organisation, service.dates, detail: service.detail)
#let tp = education.at(1)
#heading(tp.institution, [], tp.dates, detail: tp.qualification)
#v(4pt)
#text(size: 9.3pt, tp.detail)

#section("Selected Awards")
#for award in awards {
  heading(award.title, [], award.dates, detail: award.detail)
}

#section("Skills")
#v(8pt)
#stack(
  dir: ttb,
  spacing: 7pt,
  ..skills.map(skill => [#text(weight: "bold", skill.label) - #skill.value]),
)
