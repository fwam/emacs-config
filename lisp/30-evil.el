(setq evil-want-keybinding nil)
(use-package evil
  :config
  (setq evil-transient-mouse-selection t)
  :init (evil-mode))

(use-package evil-collection
  :straight (evil-collection :type git
			     :host github
			     :repo "emacs-evil/evil-collection")
  :after evil)
