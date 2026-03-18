(use-package ef-themes
  :config
  (modus-themes-load-theme 'ef-dream))

(use-package doom-modeline
  :config
  (setq doom-modeline-modal t)
  (setq doom-modeline-modal-icon t)
  (setq doom-modeline-modal-modern-icon t)
  :init (doom-modeline-mode 1))

(use-package which-key
  :init (which-key-mode))

(use-package elcord
  :init (elcord-mode))
