(setq package-enable-at-startup nil)
(setq inhibit-startup-screen t)


(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(unless (eq system-type "darwin") (menu-bar-mode -1))
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setf (alist-get 'font default-frame-alist) "Comic Code Ligatures"
      (alist-get 'width default-frame-alist) 140)

(setq straight-built-in-packages
      '(project eglot flymake xref))
