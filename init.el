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

;; Bootstrap
;; (add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(eval-when-compile
  (add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory)))

;; Set custom file for variables configured via the interactive 'customize' interface
(setq custom-file (locate-user-emacs-file "custom.el"))

;; Debug and Wanings
;; (setq debug-on-error t)
;; (defvar warning-minimum-level)
;; (setq warning-minimum-level :error)

;; Core
(require 'init-straight)
(require 'init-path)
(require 'init-emacs)

;; My second brain
(require 'init-org-mode)
;; (require 'init-org-ref)
(require 'init-org-roam)

;; Environment
(require 'init-transient)
(require 'init-magit)
(require 'init-smartparens)
(require 'init-which-key)
(require 'init-ui)
(require 'init-editorconfig)
(require 'init-grammar)
(require 'init-dictionary)
(require 'init-readonly)
(require 'init-visual-fill-column)
(require 'init-gt)

;; Look & feel
(require 'init-theme)

;; Me
(require 'init-me)

;; IDE
(require 'init-project)
(require 'init-lsp)
(require 'init-flycheck)
(require 'init-vale)
(require 'init-company)
(require 'init-apheleia)
(require 'init-yasnippet)
(require 'init-nvm)
(require 'init-web)

;; Programing languages
(require 'init-typescript)
(require 'init-json)
(require 'init-js2)
(require 'init-rjsx)
(require 'init-rust)
(require 'init-yaml)

;; Authoring languages
(require 'init-quarto)

;; AI tools
(require 'init-ai)

;; Load variables configured via the interactive 'customize' interface
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)

;;; init.el ends here
