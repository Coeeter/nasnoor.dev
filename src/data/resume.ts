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
    role: "Software Engineer, Intern",
    period: "Apr 2023 – May 2024",
    points: [
      "Worked on the front end of a ground-up rebuild of a licensing and audit service for a government ministry, in Vue and ASP.NET.",
      "Spent the last five months on a newly formed AI team, building the document ingestion pipeline behind a retrieval assistant for ministry staff.",
      "The assistant shipped and the team carried it on after I left.",
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
    blurb: "Keeps an anime library in sync across two sites that don't talk to each other.",
    detail:
      "Two sites that can each be slow, rate-limited or down, so most of the work " +
      "is handling failure rather than the happy path. Changes queue up and retry " +
      "instead of quietly disappearing. Log in with a passkey, no password.",
    stack: ["Bun", "Effect", "TanStack Start", "Drizzle", "PostgreSQL"],
    repo: "https://github.com/Coeeter/animekaiser",
    link: "https://animekaiser.xyz",
    linkLabel: "animekaiser.xyz",
  },
  {
    slug: "7patches",
    name: "7Patches",
    year: "2024",
    blurb: "Changing data in a government database had no proper process. This gave it one.",
    detail:
      "Request submission, approval routing, execution logging and a searchable " +
      "audit trail, replacing an ad-hoc manual process. I built it as a proof of " +
      "concept first and then led a small team of interns on it.",
    stack: ["Next.js", "Prisma", "AWS Lambda", "GitHub Actions"],
    note: "DBS Bank Project Award",
    noSource: "Internal government system — no public source or demo. Happy to talk through it.",
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
      "covered by 43 test files across both the logic and the interface.",
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
    result: "Bronze medallist",
    detail: "Mobile application development.",
  },
  {
    event: "iNTUition",
    year: "2023",
    result: "Best Pre-University Award",
    detail: "EmailGPT, a Gmail extension that drafts replies in place.",
    href: "https://github.com/Coeeter/EmailGPT",
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
    name: "drizzle-cuid2",
    detail: "CUID2 columns for Drizzle ORM. A small package, but people use it.",
    href: "https://github.com/Coeeter/drizzle-cuid2",
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
    detail: "Diploma in Information Technology · GPA 3.86, Director's List",
  },
  {
    period: "2023 – 2024",
    label: "GovTech Singapore",
    detail: "Software engineer, intern",
  },
  {
    period: "2024 – 2026",
    label: "National Service",
    detail: "",
  },
  {
    period: "2026 – now",
    label: "National University of Singapore",
    detail: "B.Comp. Computer Science",
  },
] as const

export const education = [
  {
    institution: "National University of Singapore",
    qualification: "B.Comp. Computer Science",
    period: "2026 – present",
  },
  {
    institution: "Temasek Polytechnic",
    qualification: "Diploma in Information Technology",
    period: "2021 – 2024",
    note: "GPA 3.86, Director's List.",
  },
] as const

export const skills = [
  { group: "Languages", items: ["TypeScript", "Go", "Kotlin", "Python", "Java", "SQL"] },
  { group: "Web", items: ["React", "TanStack Start", "Astro", "Vue", "Next.js"] },
  { group: "Backend", items: ["Effect", "Bun", "Node.js", "Ktor", "ASP.NET"] },
  { group: "Data", items: ["PostgreSQL", "MySQL", "SQLite", "Redis", "Drizzle", "Prisma"] },
  { group: "Cloud", items: ["AWS Lambda", "Serverless Framework", "Cloudflare Workers"] },
  { group: "DevOps", items: ["Docker", "GitHub Actions", "Linux", "Dokploy"] },
] as const
