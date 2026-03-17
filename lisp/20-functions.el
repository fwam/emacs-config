(defun fwam/find-file ()
  "sort find-file alphabetically"
  (interactive)
  (let ((vertico-sort-function #'vertico-sort-alpha))
    (call-interactively #'find-file)))

(define-advice pp-macroexpand-expression
    (:around (orig expression) use-package-minimal)
  "Enable `use-package-expand-minimally' when expanding `use-package' forms.

This greatly reduces the noise created by the error handling that
`use-package' does otherwise.  Do not use this advice when specifically
debugging this error handling!"
  (if (eq (car expression) 'use-package)
      (let ((use-package-expand-minimally t))
        (funcall orig expression))
    (funcall orig expression)))

(bind-key "C-x M-e" #'pp-macroexpand-last-sexp)
