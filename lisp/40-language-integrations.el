;; Rust
;;; NOTE: I do not remember what exactly does rustic break. It DOES break things though.
(use-package rustic
  :after org)

;; Lisp
(use-package paredit)

;;; Chicken 
(use-package chicken
  :defer t
  :straight (:repo "https://code.call-cc.org/chicken-core"
	     :files ("misc/chicken.el" "misc/flymake-chicken.el")))
;;;; Chicken LSP
(use-package lsp-scheme
  :config
  (add-hook 'scheme-mode-hook #'lsp-scheme)
  (setq lsp-scheme-implementation "chicken"))

;; Clojure
(use-package clojure-mode)
(use-package cider)

;; Haskell
(use-package haskell-mode
  :defer t)
