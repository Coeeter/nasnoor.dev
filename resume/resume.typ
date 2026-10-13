// General resume, published as public/nasrullah-resume.pdf.
// Tailored variants live in variants/ and follow the same shape.

#import "lib.typ": *
#import "content.typ": *

#show: resume.with(profile)

#section("Education")
#education-entry(education.nus)
#education-entry(education.tp)

#section("Experience")
#experience-entry(pick(experience.govtech, 0, 1, 2, 3))
#experience-entry(experience.ns)

#section("Projects")
#project-entry(pick(projects.animekaiser, 1, 2))
#project-entry(pick(projects.cloudsync, 0, 1))
#project-entry(pick(projects.nus-canvas-sync, 1, 2))
#project-entry(projects.drizzle-cuid2)

#section("Achievements")
#achievement-list((
  achievements.worldskills,
  achievements.intuition,
))

#section("Skills")
#skill-list((
  skills.languages,
  skills.frontend,
  skills.backend,
  skills.cloud,
))
