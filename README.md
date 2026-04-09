# My bilingual CV
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

## What it does
- This bilingual CV is powered by R and Quarto and rendered on my portfolio website.
- To render in PDF, it uses a Quarto extension called [quarto-cv](https://github.com/mps9506/quarto-cv).
- The bilingual component is rendered with [Quarto profiles](https://quarto.org/docs/projects/profiles.html) under a custom [rendering routine](https://github.com/bisacciamd/cv/blob/main/render_cv.sh).

## How it works + planned enhancements
- At present, the website is pre-rendered locally, although Github Actions integration is [planned](https://github.com/bisacciamd/cv/issues/3)
- [Publications](https://cv.bisacciamd.com/publications) are currently manually added, but auto-update from PubMed is [planned](https://github.com/bisacciamd/cv/issues/7)
