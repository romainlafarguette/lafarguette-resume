(TeX-add-style-hook
 "cv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "ifthen"
    "array")
   (TeX-add-symbols
    "espaceInterRubrique"
    "er"
    "ere"
    "eme"
    "ligne")
   (LaTeX-add-environments
    '("rubriquetableau" LaTeX-env-args ["argument"] 1)
    '("rubrique" 1)
    "adresse"
    "etatcivil"
    "chapeau")
   (LaTeX-add-lengths
    "rubriquetableauparindent"))
 :latex)

