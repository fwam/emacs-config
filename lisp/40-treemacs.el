(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package treemacs
  :bind ("C-c t" . treemacs))

(use-package treemacs-magit
  :after (treemacs magit))
