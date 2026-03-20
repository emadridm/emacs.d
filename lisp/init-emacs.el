;;; init-emacs.el --- My Emacs's built-in default packages configuration -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My Emacs' built-in default packages configuration.

;;; Code:

(use-package sql
  :config
  (setq sql-pop-to-buffer-after-send-region nil)
  )

(provide 'init-emacs)

;;; init-emacs.el ends here
