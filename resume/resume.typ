// General resume, published as public/nasrullah-resume.pdf.
// Tailored variants live in variants/ and follow the same shape.

#import "lib.typ": *
#import "content.typ": *

#show: resume.with(profile)

#section("Education")
#education-entry(education.nus)
#education-entry(education.tp)

#section("Experience")
#experience-entry(experience.govtech)
#experience-entry(experience.ns)

#section("Projects")
#project-entry(projects.animekaiser)
#project-entry(projects.drizzle-cuid2)
#project-entry(projects.clicktoeat)

#section("Achievements")
#achievement-list((
  achievements.dbs,
  achievements.worldskills,
  achievements.intuition,
))

#section("Skills")
#skill-list((
  skills.languages,
  skills.frameworks,
  skills.infrastructure,
))
