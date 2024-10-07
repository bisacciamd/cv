#!/bin/bash

# Define paths
output_dir="cv_output"
raw_dir="$output_dir/raw"

# Ensure raw directory exists
mkdir -p "$raw_dir"

# Move existing files in cv_output to cv_output/raw/
mv "$output_dir"/* "$raw_dir"/ 2>/dev/null

# renders in italian
quarto render index.qmd --profile italian
quarto render supplement/index.qmd --profile italian

# renders in english
quarto render index.qmd --profile english
quarto render supplement/index.qmd --profile english

# gets the current date
current_date=$(date +%Y-%m-%d)

# copies to output/

# Copy CV (IT)
cp docs/it/index.pdf "$output_dir/Bisaccia_CV_it_${current_date}.pdf"

# Copy the publications (IT)
cp docs/it/publications/index.pdf "$output_dir/Bisaccia_CV_supplement_it_${current_date}.pdf"

# Copy the CV (EN)
cp docs/index.pdf "$output_dir/Bisaccia_CV_en_${current_date}.pdf"

# Copy the publications (EN)
cp docs/publications/index.pdf "$output_dir/Bisaccia_CV_supplement_en_${current_date}.pdf"
