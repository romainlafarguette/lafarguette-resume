(TeX-add-style-hook
 "lafarguette_resume"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("cv" "usegeometry" "10pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("geometry" "top=1.5cm" "bottom=1cm" "left=2.2cm" "right=2.2cm" "paper=a4paper" "textwidth=180mm")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "cv"
    "cv10"
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
    '("lieu" 1)
    "twodots")
   (LaTeX-add-environments
    "short"
    "normal"
    "long"))
 :latex)

