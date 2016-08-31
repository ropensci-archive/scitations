# article
# article$required
# article$optional
article <- list(
  required = c(
    "author", "title", "journaltitle", "year|date"
  ),
  optional = c(
    "translator","annotator","commentator","subtitle", "titleaddon", 
    "editor", "editora", "editorb", "editorc", "journalsubtitle", 
    "issuetitle", "issuesubtitle", "language", "origlanguage", 
    "series", "volume", "number", "eid", "issue", "month", "pages", 
    "version", "note", "issn", "addendum", "pubstate", "doi", "eprint", 
    "eprintclass", "eprinttype", "url", "urldate"
  )
)

types <- list(article = article)
