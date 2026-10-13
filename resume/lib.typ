// Layout components. Content lives in content.typ; each resume file composes
// these components from that content.

#let ink = rgb("#16181a")
#let muted = rgb("#55595e")

#let resume(profile, body) = {
  set document(title: profile.name + " - Resume", author: profile.name)
  set page(paper: "a4", margin: (x: 15mm, top: 12mm, bottom: 12mm))
  set text(font: "Inter", size: 10.2pt, fill: ink, lang: "en")
  set par(justify: false, leading: 3.6pt, spacing: 0pt)

  align(center)[
    #text(size: 20pt, weight: "bold", profile.name)
    #v(5pt)
    #text(size: 9pt)[
      #show link: it => underline(offset: 2pt, stroke: 0.35pt, it)
      #(
        (
          profile.location,
          link("mailto:" + profile.email, profile.email),
          link("https://" + profile.website, profile.website),
          link("https://" + profile.github, profile.github),
          link("https://" + profile.linkedin, profile.linkedin),
        ).join([ | ])
      )
    ]
  ]
  body
}

#let section(title) = {
  v(13pt)
  block(
    width: 100%,
    stroke: (bottom: 0.6pt + ink),
    inset: (bottom: 2.5pt),
    text(size: 8.8pt, weight: "bold", tracking: 1pt, upper(title)),
  )
}

#let summary(body) = {
  v(9pt)
  body
}

#let row(left, right) = grid(
  columns: (1fr, auto),
  gutter: 8pt,
  left, right,
)

#let bullets(items) = {
  if items.len() == 0 { return }
  v(4pt)
  set list(indent: 0pt, body-indent: 7pt, marker: [#sym.bullet], spacing: 6pt)
  list(..items)
}

// Org/title and dates on the first line; role/subtitle and a right-hand
// detail (location, GPA or tech stack) on the second.
#let entry(title, dates, subtitle: none, aside: none, items: ()) = {
  v(10pt)
  row(text(weight: "bold", title), text(size: 9.3pt, dates))
  if subtitle != none or aside != none {
    v(4pt)
    row(
      subtitle,
      text(size: 9.3pt, fill: muted, aside),
    )
  }
  bullets(items)
}

#let education-entry(item) = entry(
  item.institution,
  item.dates,
  subtitle: item.qualification,
  aside: item.at("grade", default: none),
  items: item.bullets,
)

#let experience-entry(item) = entry(
  item.organisation,
  item.dates,
  subtitle: item.role,
  aside: item.at("aside", default: none),
  items: item.bullets,
)

#let project-entry(item) = {
  let subtitle = {
    item.subtitle
    for (label, url) in item.links {
      [ | ]
      underline(offset: 2pt, stroke: 0.35pt, link(url, label))
    }
  }
  entry(
    item.title,
    item.dates,
    subtitle: subtitle,
    aside: item.tech.join(", "),
    items: item.bullets,
  )
}

#let achievement-list(items) = {
  v(4pt)
  for item in items {
    v(6pt)
    row([*#item.title* - #item.detail], text(size: 9.3pt, item.dates))
  }
}

#let skill-list(groups) = {
  v(6pt)
  set list(indent: 0pt, body-indent: 7pt, marker: [#sym.bullet], spacing: 7pt)
  list(..groups.map(group => [*#group.label:* #group.items.join(", ")]))
}

// Returns `item` with only the bullets at `indices`, in that order.
#let pick(item, ..indices) = (
  ..item,
  bullets: indices.pos().map(i => item.bullets.at(i)),
)
