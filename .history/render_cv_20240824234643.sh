#!/bin/bash
# renders in italian
quarto render index.qmd --profile italian
quarto render publications/index.qmd --profile italian

# renders in english
quarto render index.qmd --profile english
quarto render publications/index.qmd --profile english

# gets the current date
current_date=$(date +%Y-%m-%d)

# copies to output/

# Copy CV (IT)
cp docs/it/index.pdf cv_output/Bisaccia_CV_it_${current_date}.pdf

# Copy the publications (IT)
cp docs/it/publications/index.pdf cv_output/Bisaccia_Publications_it_${current_date}.pdf

# Copy the CV (EN)
cp docs/index.pdf cv_output/Bisaccia_CV_en_${current_date}.pdf

# Copy the publications (EN)
cp docs/publications/index.pdf cv_output/Bisaccia_Publications_en_${current_date}.pdf
