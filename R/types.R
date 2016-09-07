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

book <- list(
  required = c(
    "author", "title", "year|date"
  ),
  optional = c(
    "editor", "editora","editorb","editorc","translator", 
    "annotator", "commentator", "introduction", "foreword", 
    "afterword", "subtitle", "titleaddon", "maintitle", 
    "mainsubtitle", "maintitleaddon", "language", "origlanguage", 
    "volume", "part", "edition", "volumes", "series", "number", 
    "note", "publisher", "location", "isbn", "chapter", "pages", 
    "pagetotal", "addendum", "pubstate", "doi", "eprint", 
    "eprintclass", "eprinttype", "url", "urldate"
  )
)

mvbook <- list(
  required = c(
    "author", "title", "year|date"
  ),
  optional = c(
    "editor","editora","editorb","editorc","translator", 
    "annotator", "commentator", "introduction", "foreword", 
    "afterword", "subtitle", "titleaddon", "language", 
    "origlanguage", "edition", "volumes", "series", 
    "number", "note", "publisher", "location", "isbn", 
    "pagetotal", "addendum", "pubstate", "doi", "eprint", 
    "eprintclass", "eprinttype", "url", "urldate"
  )
)

inbook <- list(
  required = c(
    "author", "title", "booktitle", "year|date"
  ),
  optional = c(
    "bookauthor","editor","editora","editorb","editorc", 
    "translator", "annotator", "commentator", "introduction", 
    "foreword", "afterword", "subtitle", "titleaddon", 
    "maintitle", "mainsubtitle", "maintitleaddon", 
    "booksubtitle", "booktitleaddon", "language", 
    "origlanguage", "volume", "part", "edition", "volumes", 
    "series", "number", "note", "publisher", "location", 
    "isbn", "chapter", "pages", "addendum", "pubstate", 
    "doi", "eprint", "eprintclass", "eprinttype", "url", "urldate"
  )
)

booklet <- list(
  required = c(
    "author/editor", "title", "year|date"
  ),
  optional = c(
    "subtitle","titleaddon","language","howpublished", 
    "type", "note", "location", "chapter", "pages", 
    "pagetotal", "addendum", "pubstate", "doi", "eprint", 
    "eprintclass", "eprinttype", "url", "urldate"
  )
)

collection <- list(
  required = c(
    "editor", "title", "year|date"
  ),
  optional = c(
    "editora","editorb","editorc","translator","annotator", 
    "commentator", "introduction", "foreword", "afterword", 
    "subtitle", "titleaddon", "maintitle", "mainsubtitle", 
    "maintitleaddon", "language", "origlanguage", "volume", 
    "part", "edition", "volumes", "series", "number", "note", 
    "publisher", "location", "isbn", "chapter", "pages", 
    "pagetotal", "addendum", "pubstate", "doi", "eprint", 
    "eprintclass", "eprinttype", "url", "urldate"
  )
)

mvcollection <- list(
  required = c(
    "editor", "title", "year|date"
  ),
  optional = c(
    "editora","editorb","editorc","translator","annotator",
    "commentator","introduction","foreword","afterword",
    "subtitle","titleaddon","language","origlanguage",
    "edition","volumes","series","number","note","publisher",
    "location","isbn","pagetotal","addendum","pubstate","doi",
    "eprint","eprintclass","eprinttype","url","urldate"
  )
)

incollection <- list(
  required = c(
    "editor", "title", "booktitle", "year|date"
  ),
  optional = c(
    "editor","editora","editorb","editorc","translator", 
    "annotator", "commentator", "introduction", "foreword", 
    "afterword", "subtitle", "titleaddon", "maintitle", 
    "mainsubtitle", "maintitleaddon", "booksubtitle", 
    "booktitleaddon", "language", "origlanguage", "volume", 
    "part", "edition", "volumes", "series", "number", 
    "note", "publisher", "location", "isbn", "chapter", 
    "pages", "addendum", "pubstate", "doi", "eprint", 
    "eprintclass", "eprinttype", "url", "urldate"
  )
)

# types$article
# types$book
# types$book$required
# types$book$optional
types <- list(
  article = article, 
  book = book,
  mvbook = mvbook,
  inbook = inbook,
  bookinbook = inbook,
  suppbook = inbook,
  booklet = booklet,
  collection = collection,
  mvcollection = mvcollection,
  incollection = incollection
)
