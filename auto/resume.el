(TeX-add-style-hook
 "resume"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("cv" "usegeometry" "10pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "english") ("inputenc" "utf8") ("fontenc" "T1") ("geometry" "top=1.5cm" "bottom=1cm" "left=2.2cm" "right=2.2cm" "paper=a4paper" "textwidth=180mm")))
   (TeX-run-style-hooks
    "latex2e"
    "cv"
    "cv10"
    "babel"
    "inputenc"
    "fontenc"
    "lmodern"
    "url"
    "hyperref"
    "geometry"
    "microtype"
    "setspace"
    "enumitem")
   (TeX-add-symbols
    '("comment" 1)
    '("activite" 1)
    '("lieu" 1))
   (LaTeX-add-environments
    '("rubriquetableau" LaTeX-env-args ["argument"] 1)
    "short"
    "normal"
    "long"))
 :latex)

