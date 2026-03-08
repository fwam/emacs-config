(use-package no-littering)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(require 'config-lib (expand-file-name "config-lib" user-emacs-directory))
(load-numbered-parts (expand-file-name "lisp/" user-emacs-directory))
(put 'upcase-region 'disabled nil)
