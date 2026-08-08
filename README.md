# nasnoor.dev

My portfolio. One page, no framework on the client, static output.

Live at [nasnoor.dev](https://nasnoor.dev).

## Running it

```bash
bun install
bun run dev
```

## Scripts

| Script | What it does |
| --- | --- |
| `bun run dev` | Dev server on port 4321 |
| `bun run build` | Static build into `dist/` |
| `bun run check` | Type check, including `.astro` files |
| `bun run resume` | Recompile the resume PDF from Typst |
| `bun run build:all` | Resume, then site |

Deployment runs `build`, not `build:all` — the build host has no Typst
installed, so the PDF is committed and regenerated locally instead.

## The resume

`resume/resume.typ` is the source. The PDF at `public/nasrullah-resume.pdf` is
generated from it, so edit the `.typ` file and run `bun run resume` rather than
touching the PDF.

Typst is installed separately:

```bash
brew install typst
```

It is kept to one page, single column, with no tables and contact details in
the body rather than the page header, since applicant tracking systems tend to
skip headers.

## Content

Everything the page renders lives in `src/data/resume.ts`. Adding a project or
changing a link means editing that file, not the markup.

The site copy and the resume copy are deliberately written differently. The
site is plain and short; the resume keeps the formal register and the technical
detail that recruiters and keyword scanners look for.

## Built with

Astro, Tailwind, TypeScript, Typst. Fonts are self-hosted and preloaded through
Astro's font pipeline, which also generates a metric-matched fallback so text
does not shift while the real font loads.

## Notes

- Theme follows the system until you pick one, then remembers the choice.
- The logo is a single SVG path. The stroke animation draws it on load, and on
  hover it runs a full pass and finishes wherever it is rather than snapping
  back.
- Scroll to the bottom.
