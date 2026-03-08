(defun fwam/find-file ()
  "sort find-file alphabetically"
  (interactive)
  (let ((vertico-sort-function #'vertico-sort-alpha))
    (call-interactively #'find-file)))
