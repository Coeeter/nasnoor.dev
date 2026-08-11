import animeHome from "@/assets/work/animekaiser-home.png"
import animeLibrary from "@/assets/work/animekaiser-library.png"
import animeSeries from "@/assets/work/animekaiser-series.png"
import patchesDashboard from "@/assets/work/7patches-dashboard.png"
import worldSkills from "@/assets/work/worldskills.jpeg"

export const projectMedia = {
  animekaiser: {
    src: animeHome,
    alt: "AnimeKaiser home page showing trending and seasonal anime",
  },
  "7patches": {
    src: patchesDashboard,
    alt: "7Patches reviewer dashboard showing request statuses and pending reviews",
  },
} as const

export const competitionMedia = {
  "WorldSkills Singapore": {
    src: worldSkills,
    alt: "WorldSkills Singapore Mobile Applications Development medal ceremony",
  },
} as const

export const caseStudies = [
  {
    slug: "animekaiser",
    title: "AnimeKaiser",
    eyebrow: "Personal project · 2026",
    summary:
      "A self-hosted anime library that keeps AniList and MyAnimeList in sync without hiding partial failures.",
    image: animeHome,
    imageAlt: "AnimeKaiser home page showing trending and seasonal anime",
    facts: [
      ["Scope", "Full-stack"],
      ["Experience", "Discovery · library · playback"],
      ["Reliability", "Visible · retryable sync"],
    ],
    links: [
      ["Live site", "https://animekaiser.xyz"],
      ["Source", "https://github.com/Coeeter/animekaiser"],
    ],
    sections: [
      {
        title: "The problem",
        body:
          "AniList and MyAnimeList both hold the same kind of library data, but neither is a dependable source of truth for the other. Either service can be slow, rate-limited or unavailable, so a simple request that writes to both can leave the library split.",
      },
      {
        title: "The interface",
        body:
          "I designed and built the frontend as a cohesive product rather than a thin shell over the sync system. Discovery, search, library filters, series details, playback, watch history and sync activity share consistent navigation and feedback across desktop and mobile. Failure states appear where users can understand and act on them instead of being hidden in logs.",
      },
      {
        title: "The approach",
        body:
          "AnimeKaiser persists sync work as database events before attempting an external write. Workers recover interrupted work after restarts, retry failures and retain the error for an explicit user-triggered retry instead of silently dropping a change. PostgreSQL notifications wake the workers without adding a separate queue service.",
      },
      {
        title: "Keeping upstreams usable",
        body:
          "Discovery and detail requests are cached in Redis with lifetimes matched to how quickly each result changes. AniList requests fall back to Jikan, and a cache outage falls through to the upstream rather than taking the product down. This sits behind a complete tracker with discovery, library management, playback and watch history.",
      },
    ],
    gallery: [
      {
        src: animeLibrary,
        alt: "AnimeKaiser library page with status filters and anime cards",
      },
      {
        src: animeSeries,
        alt: "AnimeKaiser series detail page for Fullmetal Alchemist Brotherhood",
      },
    ],
  },
  {
    slug: "7patches",
    title: "7Patches",
    eyebrow: "GovTech internship major project · 2023–2024",
    summary:
      "A reviewed path for database requests that replaced an ad-hoc process with approvals, execution records and an audit trail.",
    image: patchesDashboard,
    imageAlt: "7Patches reviewer dashboard showing request statuses and pending reviews",
    facts: [
      ["Role", "Primary developer"],
      ["UX", "Requestor · reviewer workflows"],
      ["Recognition", "Distinction · DBS Bank Project Prize"],
    ],
    links: [],
    note:
      "This is the student major-project prototype I built with fellow interns, not a screenshot of MOM's current production system.",
    sections: [
      {
        title: "The missing link",
        body:
          "Database patches and queries moved through an inefficient manual process that was easy to get wrong and had no proper rollback or audit strategy. The useful intervention was not another database tool; it was a process around the existing work.",
      },
      {
        title: "The interface",
        body:
          "I designed separate experiences around what each person needed to do. Requestors received a structured submission flow and clear feedback on a request's status, while reviewers worked from a role-based dashboard organised around pending, returned, approved and rejected work. Search, filters, status counts and downloadable results kept each request easy to find and understand.",
      },
      {
        title: "The workflow behind it",
        body:
          "The interface guided approval, rejection and feedback before manual or scheduled execution. Error handling, notifications, result retrieval and downloadable audit records made the process safer without exposing users to the underlying database mechanics.",
      },
      {
        title: "How it developed",
        body:
          "I proposed the project and served as its primary developer in a group of seven interns. From November to February, we repeatedly demonstrated it to stakeholders, fixed gaps and added the features they needed. The project earned a Distinction and was selected for the DBS Bank Project Prize.",
      },
    ],
    gallery: [],
  },
  {
    slug: "drizzle-cuid2",
    title: "drizzle-cuid2",
    eyebrow: "Open-source package",
    summary:
      "Typed CUID2 column builders for Drizzle ORM across PostgreSQL, MySQL and SQLite, used thousands of times each week.",
    facts: [
      ["Reach", "2k+ weekly npm downloads"],
      ["Databases", "PostgreSQL · MySQL · SQLite"],
      ["License", "MIT"],
    ],
    links: [
      ["npm", "https://www.npmjs.com/package/drizzle-cuid2"],
      ["Source", "https://github.com/Coeeter/drizzle-cuid2"],
    ],
    sections: [
      {
        title: "The problem",
        body:
          "CUID2 works well as an application-generated identifier, but using it as a first-class Drizzle column meant repeating the same setup and giving up the fluent, database-aware column API.",
      },
      {
        title: "The small solution",
        body:
          "The package exposes native-looking column builders for each supported Drizzle dialect. They retain methods such as primaryKey, notNull and references, then add defaultRandom, setLength and setPrefix for CUID2-specific behaviour.",
      },
      {
        title: "Why three implementations",
        body:
          "PostgreSQL, MySQL and SQLite have different column base classes and SQL types. Keeping a thin builder for each dialect preserves Drizzle's type inference and emits the appropriate varchar or text definition without asking users to maintain that code themselves.",
      },
    ],
    gallery: [],
  },
] as const

export const openSource = [
  {
    name: "drizzle-cuid2",
    detail:
      "Maintained npm package with typed CUID2 columns for three Drizzle ORM dialects and 2k+ weekly downloads.",
    links: [
      ["Case study", "/work/drizzle-cuid2"],
      ["npm", "https://www.npmjs.com/package/drizzle-cuid2"],
      ["Source", "https://github.com/Coeeter/drizzle-cuid2"],
    ],
  },
  {
    name: "animelist",
    detail:
      "Contributed a fix upstream so session-cookie domains are handled correctly by the library's fetch handler.",
    links: [
      ["Merged pull request", "https://github.com/Neo-Ciber94/animelist/pull/2"],
    ],
  },
] as const
