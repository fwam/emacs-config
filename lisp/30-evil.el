(setq evil-want-keybinding nil)
(use-package evil
<<<<<<< HEAD
  :hook (after-init . evil-mode))
=======
  :config
  (setq evil-transient-mouse-selection t)
  :init ( evil-mode))
>>>>>>> c58a2e2 (Switched from straight to elpaca)
(use-package evil-collection
  :straight (evil-collection :type git
			     :host github
			     :repo "emacs-evil/evil-collection")
  :after evil)
