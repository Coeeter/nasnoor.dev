<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="src/assets/brand/icon-dark.svg">
    <img src="src/assets/brand/icon-light.svg" width="96" alt="N monogram">
  </picture>
</p>

<h1 align="center">nasnoor.dev</h1>

<p align="center">
  My portfolio — the systems I build, the problems behind them and what I learnt along the way.
</p>

<p align="center">
  <a href="https://nasnoor.dev">Website</a> ·
  <a href="https://nasnoor.dev/nasrullah-resume.pdf">Résumé</a>
</p>

## About

A small static site covering my work at GovTech Singapore, full-stack projects,
open-source tools and competitions. The project pages focus on both the interface
people use and the engineering that keeps it reliable.

Built with Astro, Tailwind and TypeScript. The résumé is written in Typst and the
site is hosted on Cloudflare.

## Run locally

```bash
bun install
bun run dev
```

```bash
bun run check    # check the site
bun run build    # production build
bun run resume   # regenerate the résumé PDF
```

The résumé source lives at [`resume/resume.typ`](resume/resume.typ). Its generated
PDF is committed because the deployment build does not have Typst installed.
