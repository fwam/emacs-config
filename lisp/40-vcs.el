(use-package flymake)
(use-package project)
(use-package projectile
  :diminish projectile-mode
  :init
  (when (file-directory-p "~/Developer")
    (setq projectile-project-search-path '("~/Developer")))
  (setq projectile-switch-project-action #'projectile-dired))

(use-package magit)
