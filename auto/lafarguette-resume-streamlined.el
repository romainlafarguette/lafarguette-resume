(TeX-add-style-hook
 "lafarguette-resume-streamlined"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("cv" "usegeometry" "10pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("geometry" "top=1.8cm" "bottom=1.2cm" "left=2cm" "right=1.5cm" "paper=a4paper" "textwidth=200mm")))
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
    "enumitem"
    "multicol"
    "datetime")
   (TeX-add-symbols
    '("comment" 1)
    '("activite" 1)
    '("lieu" 1)
    "twodots"
    "midreduce")
   (LaTeX-add-environments
    "short-itemize"
    "normal-itemize"
    "long-itemize"))
 :latex)

