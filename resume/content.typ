// Every fact a resume may use. Resume files select and order these entries;
// tailored variants may rephrase bullets but must not add facts missing here.

#let profile = (
  name: "Noorullah Nasrullah",
  location: "Singapore",
  email: "nasrullah01n@gmail.com",
  website: "nasnoor.dev",
  github: "github.com/Coeeter",
  linkedin: "linkedin.com/in/noorullah-nasrullah",
)

#let summaries = (
  general: [
    NUS Computer Science undergraduate with 14 months of software engineering
    experience at GovTech Singapore. Pragmatic generalist who chooses tools to
    fit the problem, with experience across production government systems,
    retrieval-augmented AI and open-source developer tooling.
  ],
)

#let education = (
  nus: (
    institution: "National University of Singapore",
    dates: "2026 - 2030 (Expected)",
    qualification: "Bachelor of Computing in Computer Science",
    bullets: (),
  ),
  tp: (
    institution: "Temasek Polytechnic",
    dates: "2021 - 2024",
    qualification: "Diploma in Information Technology",
    grade: "GPA: 3.86",
    bullets: (
      [Eleven distinctions; Director's List, Year 1 (top 10% of cohort)],
    ),
  ),
)

#let experience = (
  govtech: (
    organisation: "GovTech Singapore",
    role: "Software Engineering Intern",
    dates: "Apr 2023 - May 2024",
    aside: "Singapore",
    bullets: (
      // 0: requirements, prototyping, UAT
      [Translated MOM user requirements and legacy iOSH workflows into business
       process models and Figma prototypes for iOSH 2.0 licensing modules;
       conducted UAT before rollout and reported defects to vendors.],
      // 1: data, SQL migration
      [Reverse-engineered iOSH data sources and migrated MOM Insight dashboard
       logic into SQL queries during a database decommissioning, validating
       reports against production data with ministry users.],
      // 2: AI / RAG evaluation
      [Joined a newly formed AI team during an internship extension to evaluate
       an internal retrieval-augmented assistant for MOM; curated ministry
       documents, laws and rules, evaluated prompting strategies and tested for
       hallucinated answers.],
      // 3: 7Patches
      [Proposed 7Patches and served as primary developer on a team of seven
       interns, designing a request-and-review prototype through repeated
       stakeholder demos around an error-prone database patch and query
       process, with approvals, execution logs and a searchable audit trail;
       earned a Distinction as a Temasek Polytechnic Major Project.],
    ),
  ),
  ns: (
    organisation: "Singapore Police Force",
    role: "Ground Response Force Officer (Full-time National Service)",
    dates: "2024 - 2026",
    aside: "Airport Police Division",
    bullets: (),
  ),
)

#let projects = (
  animekaiser: (
    title: "AnimeKaiser",
    dates: "2026",
    subtitle: "Self-hosted anime tracker",
    links: (("Website", "https://animekaiser.xyz"), ("GitHub", "https://github.com/Coeeter/animekaiser")),
    tech: ("Bun", "Effect", "TanStack Start", "Drizzle", "PostgreSQL", "Redis"),
    bullets: (
      // 0: product summary
      [Designed and built a full-stack anime tracker end to end, with two-way
       library synchronisation across AniList and MyAnimeList.],
      // 1: durable sync
      [Persisted outbound changes as queued database events with visible failure
       states and user-triggered retries; used PostgreSQL `LISTEN/NOTIFY` to wake
       workers without a separate queue service.],
      // 2: frontend + caching
      [Built the responsive interface for discovery, library management,
       playback and sync recovery; cached AniList and Jikan data in Redis with
       provider fallbacks.],
    ),
  ),
  drizzle-cuid2: (
    title: "drizzle-cuid2",
    dates: "2024",
    subtitle: "Open-source npm package",
    links: (("npm", "https://www.npmjs.com/package/drizzle-cuid2"), ("GitHub", "https://github.com/Coeeter/drizzle-cuid2")),
    tech: ("TypeScript", "Drizzle ORM"),
    bullets: (
      [Published typed CUID2 column builders for Drizzle ORM across PostgreSQL,
       MySQL and SQLite, preserving Drizzle's fluent column API; 2k+ weekly
       downloads.],
    ),
  ),
  clicktoeat: (
    title: "ClickToEat",
    dates: "2022 - 2023",
    subtitle: "Restaurant review platform",
    links: (("GitHub", "https://github.com/Coeeter/kt-android-clicktoeat"),),
    tech: ("Kotlin", "Jetpack Compose", "Hilt", "Google Maps SDK"),
    bullets: (
      [Built the same product across web, API, Android and Flutter coursework to
       compare stacks; the Android client is a multi-module app with 78 unit and
       instrumented test cases across JUnit, Compose Test and UI Automator.],
    ),
  ),
  cloudsync: (
    title: "CloudSync",
    dates: "2026",
    subtitle: "Single-owner cloud archive",
    links: (("GitHub", "https://github.com/Coeeter/cloudsync"),),
    tech: ("Cloudflare Workers", "D1", "AWS", "Terraform", "Electron"),
    bullets: (
      // 0: verified ingestion
      [Built a macOS Electron app that drains a local inbox into private S3,
       deleting each file only after its checksum is verified and its metadata
       committed, with image, video and PDF previews generated locally.],
      // 1: delivery and access control
      [Served the catalog and file manager from TanStack Start on Cloudflare
       Workers and D1; files are read through CloudFront with Origin Access
       Control and signed cookies, so no object is publicly addressable.],
      // 2: infrastructure and migration
      [Migrated production from a Docker and PostgreSQL VPS to Workers, D1 and a
       Lambda that streams folder ZIPs, with Terraform-managed AWS resources
       deployed through GitHub OIDC.],
    ),
  ),
  nus-canvas-sync: (
    title: "NUS Course Planner",
    dates: "2026",
    subtitle: "Agent-driven Canvas-to-Notion planner",
    links: (("GitHub", "https://github.com/Coeeter/nus-canvas-sync"),),
    tech: ("TypeScript", "Bun", "SQLite", "Codex", "Notion API", "Docker"),
    bullets: (
      // 0: product summary
      [Built a planner that turns NUS Canvas course data into a Notion task
       board, with one Codex session reconciling every active course per run.],
      // 1: reconciliation design
      [Kept SQLite as canonical state: the agent edits an isolated copy that is
       validated and atomically promoted, then Notion changes are published as
       an idempotent diff and verified.],
      // 2: agent boundaries
      [Bounded the agent's authority: Canvas access is read-only, the agent never
       receives Notion credentials, and manual Notion edits are imported and
       highlighted before reconciliation.],
    ),
  ),
  perfectlybalanced: (
    title: "Perfectly Balanced",
    dates: "2026",
    subtitle: "visionOS app, Spatial Hack AI 2026",
    links: (("GitHub", "https://github.com/Coeeter/perfectlybalanced"),),
    tech: ("Swift", "SwiftUI", "RealityKit"),
    bullets: (
      [Built a collection of room-scale reaction, memory and coordination games
       in a team of three during a three-day hackathon at NUS and the Apple
       Developer Center.],
      [Implemented the Sequence memory and colour-test games, world-space hand
       collision and an off-main-thread synthesised sound feedback engine.],
    ),
  ),
  cmdhelper: (
    title: "cmdhelper",
    dates: "2025",
    subtitle: "LLM command-line assistant",
    links: (("GitHub", "https://github.com/Coeeter/cmdhelper"),),
    tech: ("Go",),
    bullets: (
      [Turns plain-English requests into shell commands, using the OS, shell,
       directory contents and git state as context.],
    ),
  ),
  ntmux: (
    title: "ntmux",
    dates: "2026",
    subtitle: "Declarative tmux session manager",
    links: (("GitHub", "https://github.com/Coeeter/ntmux"),),
    tech: ("Go",),
    bullets: (),
  ),
  zap: (
    title: "zap",
    dates: "2025",
    subtitle: "Interactive cleaner for node_modules and build artefacts",
    links: (("GitHub", "https://github.com/Coeeter/zap"),),
    tech: ("Go",),
    bullets: (),
  ),
  emailgpt: (
    title: "EmailGPT",
    dates: "2023",
    subtitle: "Gmail extension, iNTUition v9.0",
    links: (("Devpost", "https://devpost.com/software/emailgpt"),),
    tech: ("OpenAI GPT-3.5", "Chrome Extensions"),
    bullets: (
      [Drafts email replies with OpenAI's GPT-3.5 directly inside the Gmail
       composer; won Best Pre-University Hack.],
    ),
  ),
  water-where-ah: (
    title: "water-where-ah",
    dates: "2023",
    subtitle: "Crowdsourced water cooler map, SMU What The Hack finalist",
    links: (("GitHub", "https://github.com/Icyautumn/water-where-ah"),),
    tech: ("Flutter",),
    bullets: (
      [Built the Flutter client and admin console for a map of public water
       coolers whose submitted photos are verified by a model.],
    ),
  ),
)

#let achievements = (
  dbs: (
    title: "DBS Bank Project Prize",
    dates: "2024",
    detail: "7Patches selected among the cohort's top three Major Projects",
  ),
  worldskills: (
    title: "WorldSkills Singapore",
    dates: "2023",
    detail: "National Bronze Medallist, Mobile Applications Development",
  ),
  intuition: (
    title: "iNTUition v9.0",
    dates: "2023",
    detail: "Best Pre-University Hack for EmailGPT",
  ),
  smu-wth: (
    title: "SMU What The Hack",
    dates: "2023",
    detail: "Finalist with water-where-ah",
  ),
  psa: (
    title: "PSA CodeSprint",
    dates: "2022",
    detail: "Finalist, top 10 of 100+ teams with PortFix",
  ),
)

// Skill vocabulary. Resume files pick and order groups; tailored variants may
// regroup or drop items but should only list skills evidenced elsewhere.
#let skills = (
  languages: (label: "Languages", items: ("TypeScript", "Go", "Kotlin", "Python", "Java", "SQL")),
  frameworks: (label: "Frameworks", items: ("React", "Effect", "TanStack Start", "Drizzle", "Jetpack Compose", "Flutter")),
  infrastructure: (label: "Infrastructure", items: ("Node.js", "Bun", "PostgreSQL", "Redis", "Docker", "Cloudflare Workers", "AWS")),
  ai: (label: "AI", items: ("Retrieval-augmented generation", "Prompt evaluation", "LLM tooling")),
  design: (label: "Product", items: ("Figma", "Business process modelling", "UAT")),
)
