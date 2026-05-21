;;; init-emacs.el --- My Emacs's built-in default packages configuration -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My Emacs' built-in default packages configuration.

;;; Code:

(use-package sql
  :config
  (setq sql-pop-to-buffer-after-send-region nil))

(use-package compat
  :ensure t
  :straight (compat :host github :repo "emacs-compat/compat"))

(provide 'init-emacs)

;;; init-emacs.el ends here
