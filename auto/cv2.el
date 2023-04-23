(TeX-add-style-hook
 "cv2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "ifthen"
    "array")
   (TeX-add-symbols
    '("photo" 1)
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

