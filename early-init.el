(setq package-enable-at-startup nil)
(setq inhibit-startup-screen t)

(load-file (expand-file-name "elpaca-bootstrapper.el" user-emacs-directory))

(elpaca elpaca-use-package
  (elpaca-use-package-mode)
  (setq elpaca-use-package-by-default t
	use-package-always-ensure t))


(unless (eq system-type "darwin") (menu-bar-mode -1))

(setf (alist-get 'font default-frame-alist)
      (pcase system-type
        ('gnu/linux "Comic Code Ligatures-13")
        (_ "Comic Code Ligatures-18")))


(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq straight-built-in-packages
      '(project eglot flymake xref))
