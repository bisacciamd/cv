#install.packages("rscopus")
library(rscopus)

# Scopus credentials are gitignored secrets; degrade gracefully when absent so
# the CV still renders (index.qmd falls back to a hardcoded publication count).
key_file <- "data/scopus_api_key.secret"
token_file <- "data/scopus_token.secret"

if (file.exists(key_file) && file.exists(token_file)) {
  set_api_key(readLines(key_file))
  token <- readLines(token_file)
  hdr <- inst_token_header(token)
} else {
  message("Scopus secrets not found - skipping API lookup.")
  hdr <- NULL
}
