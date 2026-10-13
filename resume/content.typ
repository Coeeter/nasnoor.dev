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
    dates: "2026 – 2030 (Expected)",
    qualification: "Bachelor of Computing in Computer Science",
    bullets: (),
  ),
  tp: (
    institution: "Temasek Polytechnic",
    dates: "2021 – 2024",
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
    dates: "Apr 2023 – May 2024",
    aside: "Singapore",
    tech: ("SQL", "Next.js", "Prisma", "AWS Lambda", "GitHub Actions", "Figma"),
    bullets: (
      // 0: 7Patches (internship + polytechnic Major Project)
      [Proposed and built 7Patches, a request-and-review workflow for database
       patches and queries with approvals, execution logs and an audit trail,
       refined through repeated stakeholder demos.],
      // 1: 7Patches recognition
      [Delivered 7Patches as the primary developer on a team of seven interns;
       it doubled as my polytechnic Major Project, earning a Distinction and the
       DBS Bank Project Prize.],
      // 2: dashboard reverse engineering (keep agency operational details out: public resume)
      [Reverse-engineered MOM dashboard reports into SQL against a legacy
       database, validating results with ministry users.],
      // 3: AI / RAG evaluation
      [Prototyped a RAG assistant over MOM safety and licensing documents in a
       new AI team, tuning prompts and chaining models to cross-check answers
       and cut hallucinations.],
      // 4: requirements, prototyping, UAT
      [Modelled legacy iOSH licensing workflows and prototyped iOSH 2.0 in Figma
       from MOM requirements; ran UAT before rollout and reported defects to
       vendors.],
    ),
  ),
  ns: (
    organisation: "Singapore Police Force",
    role: "Ground Response Force Officer (Full-time National Service)",
    dates: "2024 – 2026",
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
      // 0-1: plain language, for the general resume
      [Built a self-hosted anime tracker that keeps AniList and MyAnimeList in
       sync, queuing every change so failed syncs are shown and retryable
       instead of silently lost.],
      [Designed the full interface for discovering, tracking and watching anime
       on desktop and mobile, kept fast when upstream services are slow or down.],
      // 2-4: technical alternates
      [Designed and built a full-stack anime tracker end to end, with two-way
       library synchronisation across AniList and MyAnimeList.],
      [Persisted outbound changes as queued database events with visible failure
       states and user-triggered retries; used PostgreSQL `LISTEN/NOTIFY` to wake
       workers without a separate queue service.],
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
      // npm API, Oct 2026: ~10k/week, ~210k in the past year; 34 GitHub stars
      [Typed CUID2 column builders for PostgreSQL, MySQL and SQLite; 10k+ weekly
       npm downloads.],
    ),
  ),
  clicktoeat: (
    title: "ClickToEat",
    dates: "2022 – 2023",
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
    subtitle: "Self-hosted, Google Drive-style personal archive",
    links: (("GitHub", "https://github.com/Coeeter/cloudsync"),),
    tech: ("Cloudflare Workers", "AWS", "Terraform", "Electron"),
    bullets: (
      // 0-1: plain language, for the general resume
      [Built a Mac app that uploads anything dropped into a folder, deleting the
       local copy only after the cloud copy is verified to prevent data loss
       during transfer.],
      [Built the web app to browse, search, preview and download photos, videos
       and documents, with every file kept private and never publicly
       accessible.],
      // 2-4: technical alternates, for infrastructure and backend roles
      [Built a macOS Electron app that drains a local inbox into private S3,
       deleting each file only after its checksum is verified and its metadata
       committed, with previews generated locally.],
      [Served the file manager from TanStack Start on Cloudflare Workers and D1;
       files are read only through CloudFront signed cookies, so no object is
       publicly addressable.],
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
      // 0-1: plain language, for the general resume
      [Built an AI agent that turns NUS Canvas coursework into a Notion task
       board, validating proposed changes before updating the planner.],
      [Restricted the agent to read-only Canvas access and prevented direct
       Notion writes; imported manual Notion edits before each run.],
      // 2-4: technical alternates
      [Built a planner that turns NUS Canvas course data into a Notion task
       board, with one Codex session reconciling every active course per run.],
      [Kept SQLite as canonical state: the agent edits an isolated copy that is
       validated and atomically promoted, then Notion changes are published as
       an idempotent diff and verified.],
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
  // Team with Putt and Nitish. The user count comes from Putt's resume; the
  // calculation logic and module/group flows are Nas's commits.
  gpa-buy-wat: (
    title: "GPA Buy Wat?",
    dates: "2023",
    subtitle: "GPA calculator, Hack&Roll 2023",
    links: (("GitHub", "https://github.com/PuttTim/gpa-buy-wat"), ("Website", "https://gpa-buy-wat.vercel.app")),
    tech: ("React", "TypeScript", "Chakra UI"),
    bullets: (
      [Shipped a mobile-friendly GPA calculator for Singapore universities and
       polytechnics in a 24-hour hackathon team of three, reaching 5,000+ users;
       built the GPA calculation logic and module and group management.],
    ),
  ),
  water-where-ah: (
    title: "water-where-ah",
    dates: "2023",
    subtitle: "Crowdsourced water cooler map, SUTD What The Hack finalist",
    links: (("GitHub", "https://github.com/Icyautumn/water-where-ah"),),
    tech: ("Flutter",),
    bullets: (
      [Built the Flutter client and admin console for a map of public water
       coolers whose submitted photos are verified by a model.],
    ),
  ),
)

// Co-curricular activities; rendered with experience-entry.
#let activities = (
  // Repo is private; the pilot figure is the team's (also on Nitish's resume).
  clynk: (
    organisation: "Clynk",
    role: "Co-founder & Software Engineer",
    dates: "Nov 2023 – May 2024",
    aside: "Student startup",
    bullets: (
      [Built an NFC business card web app with switchable profiles in a team of
       five; owned cross-subdomain sign-in and onboarding through card activation.],
      [Piloted the working product at Temasek Polytechnic Open House 2024, with
       200+ visitor interactions.],
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
  sutd-wth: (
    title: "SUTD What The Hack",
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
  languages: (label: "Languages", items: ("TypeScript", "JavaScript", "Python", "Go", "Kotlin", "Java", "SQL")),
  frontend: (label: "Frontend & Mobile", items: ("React", "Next.js", "Tailwind CSS", "Jetpack Compose", "Flutter")),
  backend: (label: "Backend & Data", items: ("Node.js", "Bun", "PostgreSQL", "Redis", "SQLite", "Drizzle", "Prisma")),
  cloud: (label: "Cloud & DevOps", items: ("AWS", "Cloudflare Workers", "Docker", "Terraform", "GitHub Actions")),
  ai: (label: "AI", items: ("RAG evaluation", "Prompt engineering", "LLM agents")),
)
