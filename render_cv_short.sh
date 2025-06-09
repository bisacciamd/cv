#!/bin/bash

# Define paths
output_dir="cv_output"
raw_dir="$output_dir/raw"

# Ensure raw directory exists
mkdir -p "$raw_dir"

# Move existing files in cv_output to cv_output/raw/
mv "$output_dir"/* "$raw_dir"/ 2>/dev/null

# gets the current date
current_date=$(date +%Y-%m-%d)

# renders in english and immediately copy
quarto render _short.qmd --profile english
cp _short.pdf "$output_dir/Bisaccia_CV_short_${current_date}.pdf"

# renders in italian and immediately copy
quarto render _short.qmd --profile italian
cp _short.pdf "$output_dir/Bisaccia_CV_breve_${current_date}.pdf"