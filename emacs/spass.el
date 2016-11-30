(defun spass-get(account)
  (interactive "sPlease specify the account: ")
  (setq password (shell-command-to-string (concat "spass --get " account)))
  (kill-new password)
  (message "Done")
)
(defun spass-update(account)
  (interactive "sPlease specify the account: ")
  (setq password (shell-command-to-string (concat "spass --update " account)))
  (kill-new password)
  (message "Done")
)
(defun spass-set(account  password)
  (interactive "sPlease specify the account: \nsEnter password: ")
  (setq password (shell-command-to-string (concat "spass --set " account " --password " password)))
  (kill-new password)
  (message "Done")
)
(defun spass-export(filename)
  (interactive "fPlease specify filename for export: ")
  (setq password (shell-command-to-string (concat "spass --export --file " filename)))
  (kill-new password)
  (message "Done")
)
(defun spass-import(filename)
  (interactive "fPlease specify filename for import: ")
  (setq password (shell-command-to-string (concat "spass --import --file " filename)))
  (kill-new password)
  (message "Done")
)

(provide 'spass)