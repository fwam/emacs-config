(use-package notmuch
  :config
  (if (eq system-type 'darwin)
      (setq sendmail-program "/opt/homebrew/bin/msmtp")
      (setq sendmail-program "/usr/bin/msmtp"))

  (setq send-mail-function 'sendmail-send-it
      mail-specify-envelope-from t
      message-sendmail-envelope-from 'header
      mail-envelope-from 'header))
