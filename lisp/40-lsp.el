(use-package vertico
    :bind ("C-x C-f" . fwam/find-file)
    :init (vertico-mode))

(use-package orderless
    :custom
    (completion-styles '(orderless basic))
    (completion-category-overrides '((file (styles partial-completion))))
    (completion-pcm-leading-wildcard t))

(use-package embark
    :bind
    (("C-." . embark-act)
     ("C-;" . embark-dwim)
     ("C-h B" . embark-bindings))
    :init (setq prefix-help-command #'embark-prefix-help-command))

(use-package company
    :config
    (setq company-idle-delay 0.2)
    (setq company-minimum-prefix-length 3)
    (setq company-tooltip-limit 10)
    :hook (after-init-hook. global-company-mode))

(use-package marginalia
    :init (marginalia-mode))

(use-package corfu
    :init (global-corfu-mode))

(use-package eglot
    :hook ((python-mode python-ts-mode rust-mode rust-ts-mode scheme-mode scheme-ts-mode) . eglot-ensure)
    :config
    (add-to-list 'eglot-server-programs))
