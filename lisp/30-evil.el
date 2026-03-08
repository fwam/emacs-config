(setq evil-want-keybinding nil)
(use-package evil
  :hook (after-init . evil-mode))
(use-package evil-collection
  :straight (evil-collection :type git
			     :host github
			     :repo "emacs-evil/evil-collection")
  :after evil)
