;;; init.el --- Emacs ecosystem -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; Emacs ecosystem for beginners and KISS principle lovers!
;; Dateries not include, It works with photocells.

;;; Code:

;; Requiremens
(let ((minver "25.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "26.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))


(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; Debug
(setq debug-on-error t)

;; Core
(require 'init-straight)
(require 'init-use-package)
(require 'init-path)

;; Environment
(require 'init-smartparens)
(require 'init-which-key)
(require 'init-ui-completion)

;; Look & feel
(require 'init-theme)

;; Me
(require 'init-me)

;; Programming
(require 'init-projectile)
(require 'init-flycheck)
(require 'init-web)
(require 'init-company)
;; (require 'init-tide)
(require 'init-lsp)
(require 'init-yasnippet)

;; Languages
(require 'init-typescript)

(provide 'init)

;;; init.el ends here
