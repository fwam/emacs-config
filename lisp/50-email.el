(use-package mu4e
  :after org ; Required due to version mismatch
  :config
  (setq user-mail-address (base64-decode-string "a29udGFrdEBmd2FtLmZ5aQ==")) ; Hopefully it prevents spam mails.
	
  (setq mu4e-change-filenames-when-moving t)
  (setq mu4e-update-interval (* 5 60))
  (setq mu4e-get-mail-command "mbsync -a")
  (setq mu4e-maildir "~/.Mail"
	mu4e-drafts-folder "/Drafts"
	mu4e-sent-folder   "/Sent"
	mu4e-refile-folder "/Index"
	mu4e-trash-folder  "/Trash")
  
  (setq mu4e-maildir-shortcuts
	'(("/Inbox" . ?i)
          ("/Sent"  . ?s)
          ("/Trash"     . ?t)
          ("/Drafts"    . ?d)))
  
  (setq sendmail-program "msmtp"
	      send-mail-function 'smtp-send-it
	      message-sendmail-f-is-evil t
	      message-sendmail-extra-arguments '("read-envelope-from")
	      message-send-mail-function 'message-send-mail-with-sendmail)
  
  :init
  (require 'mu4e) ; Required because of `:after org`
  (mu4e t))

(use-package mu4e-alert
  :after mu4e
  :init (mu4e-alert-enable-mode-line-display))
