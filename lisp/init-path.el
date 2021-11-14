;; https://emacs.stackexchange.com/questions/34201/emacs-cant-find-node-when-node-was-installed-using-nvm
;; (setq exec-path (append exec-path '("~/.nvm/versions/node/v6.3.0/bin")))

(straight-use-package 'exec-path-from-shell)

;; before invoking exec-path-from-shell-initialize:
;; (exec-path-from-shell-copy-env "PYTHONPATH")
;; (dolist (var '("SSH_AUTH_SOCK" "SSH_AGENT_PID" "GPG_AGENT_INFO" "LANG" "LC_CTYPE" "NIX_SSL_CERT_FILE" "NIX_PATH"))
;;   (add-to-list 'exec-path-from-shell-variables var))

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'init-path)
