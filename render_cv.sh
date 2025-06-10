#!/bin/bash

# Define paths
output_dir="cv_output"
raw_dir="$output_dir/raw"

# Ensure raw directory exists
mkdir -p "$raw_dir"

# Move existing files in cv_output to cv_output/raw/
mv "$output_dir"/* "$raw_dir"/ 2>/dev/null

# renders in english
quarto render index.qmd --profile english

# renders in italian
quarto render index.qmd --profile italian

# gets the current date
current_date=$(date +%Y-%m-%d)

# copies to output/

# Copy CV (IT)
cp docs/it/index.pdf "$output_dir/Bisaccia_CV_it_${current_date}.pdf"

# Copy the CV (EN)
cp docs/index.pdf "$output_dir/Bisaccia_CV_en_${current_date}.pdf"

# Copies the CV to download directly from the website
cp docs/index.pdf "Bisaccia_CV_en.pdf"
