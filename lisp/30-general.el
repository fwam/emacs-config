(use-package general
  :config
  (general-define-key
   :states 'normal
   :keymaps 'override
   :prefix "SPC"
   "SPC" 'project-switch-project
   "f" 'fwam/find-file
   "g s" 'magit-status
   "t t" 'eat
   "t e" 'eshell))
