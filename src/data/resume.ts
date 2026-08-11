export interface Link {
  label: string
  href: string
}

export const profile = {
  name: "Noorullah Nasrullah",
  role: "Software engineer",
  location: "Singapore",
  email: "nasrullah01n@gmail.com",
  github: "https://github.com/Coeeter",
  linkedin: "https://www.linkedin.com/in/noorullah-nasrullah/",
  intro:
    "I study computer science at NUS. Before that I spent fourteen months at " +
    "GovTech Singapore. Almost everything I build started as a problem I kept " +
    "running into, and stayed built because it turned out other people had it too.",
} as const

export const experience = [
  {
    company: "GovTech Singapore",
    role: "Software Engineering Intern",
    period: "Apr 2023 – May 2024",
    points: [
      "Translated MOM user requirements and legacy iOSH workflows into business process models and Figma prototypes for iOSH 2.0 licensing modules; conducted UAT before rollout and reported defects to vendors.",
      "Reverse-engineered iOSH data sources and migrated MOM Insight dashboard logic into SQL queries during a database decommissioning, validating reports against production data with ministry users.",
      "During an internship extension, joined a newly formed AI team to evaluate an internal retrieval-augmented assistant for MOM. Curated ministry documents, laws and rules, experimented with prompting, tested hallucinations and handed the work to the next team.",
    ],
  },
] as const

export interface Project {
  slug: string
  name: string
  year: string
  blurb: string
  detail: string
  stack: readonly string[]
  note?: string
  repo?: string
  link?: string
  linkLabel?: string
  noSource?: string
}

export const projects: readonly Project[] = [
  {
    slug: "animekaiser",
    name: "AnimeKaiser",
    year: "2026",
    blurb:
      "A full-stack anime tracker with a clean interface for discovery, playback " +
      "and keeping two libraries in sync.",
    detail:
      "I designed and built it end to end: responsive library and playback flows " +
      "on the frontend, backed by durable sync events that keep failures visible " +
      "and retryable. Redis caches rate-limited upstream data, with Jikan fallback " +
      "when AniList is unavailable.",
    stack: ["Bun", "Effect", "TanStack Start", "Drizzle", "PostgreSQL"],
    repo: "https://github.com/Coeeter/animekaiser",
    link: "https://animekaiser.xyz",
    linkLabel: "animekaiser.xyz",
  },
  {
    slug: "7patches",
    name: "7Patches",
    year: "2024",
    blurb:
      "Turned a risky database workflow into a clear request-and-review experience.",
    detail:
      "I designed separate requestor and reviewer flows around clear statuses, " +
      "feedback and error states, then refined them through repeated stakeholder " +
      "demos. Behind the interface were approval routing, execution logs and a " +
      "searchable audit trail replacing an ad-hoc manual process.",
    stack: ["Next.js", "Prisma", "AWS Lambda", "GitHub Actions"],
    note: "DBS Bank Project Prize",
    noSource:
      "Student project prototype — source is private, and the screenshot is not MOM's current production system.",
  },
  {
    slug: "clicktoeat",
    name: "ClickToEat",
    year: "2023",
    blurb:
      "A restaurant review app with maps and push notifications, built across four " +
      "polytechnic modules.",
    detail:
      "Each module called for a different platform — a website, then an API, then " +
      "Android, then Flutter. Rather than start a new idea every semester I kept " +
      "the same product and changed the stack, which meant I could actually compare " +
      "them. The Android one is the version worth reading: split into modules, and " +
      "covered by 78 unit and instrumented test cases across both logic and interface.",
    stack: ["Kotlin", "Jetpack Compose", "Hilt", "Google Maps", "Firebase"],
    repo: "https://github.com/Coeeter/kt-android-clicktoeat",
    noSource: "The API behind it is no longer hosted, so the app itself won't run today.",
  },
]

export interface Competition {
  event: string
  year: string
  result: string
  detail: string
  href?: string
}

export const competitions: readonly Competition[] = [
  {
    event: "WorldSkills Singapore",
    year: "2023",
    result: "National Bronze Medallist",
    detail: "Placed third in Mobile Applications Development.",
    href:
      "https://www.worldskills.sg/docs/default-source/default-document-library/worldskills-singapore-phase-2-2023-winners.pdf",
  },
  {
    event: "iNTUition v9.0",
    year: "2023",
    result: "Best Pre-University Hack",
    detail: "EmailGPT, a Gmail extension that drafts replies in place.",
    href: "https://devpost.com/software/emailgpt",
  },
  {
    event: "SMU What The Hack",
    year: "2023",
    result: "Finalist",
    detail:
      "water-where-ah, a crowdsourced map of public water coolers with submitted " +
      "photos verified by a model. I built the Flutter client and admin console.",
    href: "https://github.com/Icyautumn/water-where-ah",
  },
  {
    event: "PSA CodeSprint",
    year: "2022",
    result: "Finalist, top 10 of 100+ teams",
    detail: "PortFix, an equipment uptime system for PSA ports. I built the mobile app.",
    href: "https://github.com/PuttTim/PSA-vpn2",
  },
]

export interface Entry {
  name: string
  detail: string
  href?: string
}

export const alsoBuilt: readonly Entry[] = [
  {
    name: "ntmux",
    detail: "Declarative tmux session manager. Go.",
    href: "https://github.com/Coeeter/ntmux",
  },
  {
    name: "zap",
    detail: "Interactive cleaner for node_modules and other build artefacts. Go.",
    href: "https://github.com/Coeeter/zap",
  },
  {
    name: "cmdhelper",
    detail: "Turns plain English into shell commands using local shell and git context. Go.",
    href: "https://github.com/Coeeter/cmdhelper",
  },
  {
    name: "AniWays",
    detail:
      "The Go and SvelteKit anime platform I built before AnimeKaiser. Archived — " +
      "the second attempt is the one to look at.",
    href: "https://github.com/Coeeter/aniways",
  },
  {
    name: "ClickToPlay",
    detail: "A music player for your own uploads. Next.js, S3, colour-matched to the artwork.",
    href: "https://github.com/Coeeter/ts-clicktoplay",
  },
]

export const timeline = [
  {
    period: "2021 – 2024",
    label: "Temasek Polytechnic",
    detail:
      "Diploma in Information Technology · GPA 3.86 · 11 distinctions · " +
      "Director's List, Year 1 (top 10%)",
  },
  {
    period: "2023 – 2024",
    label: "GovTech Singapore",
    detail: "Software engineering intern",
  },
  {
    period: "2024 – 2026",
    label: "National Service",
    detail: "Ground Response Force Officer · Singapore Police Force, Airport Police Division",
  },
  {
    period: "2026 – now",
    label: "National University of Singapore",
    detail: "BComp Computer Science",
  },
] as const
