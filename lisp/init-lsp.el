;;; init-lsp.el --- enable the lanaguage server protocol -*- lexical-binding: t -*-
;; Author: Kiko Madrid
;;; Commentary:
;; Put here a commentary
;;; Code:

(require 'init-straight)

(straight-use-package 'lsp-mode)
(straight-use-package 'lsp-ui)

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (defvar lsp-keymap-prefix)
  (setq lsp-keymap-prefix "C-c l")
  ;; (setq lsp-auto-configure nil)
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
	 (js-mode . lsp)
	 (typescript-mode . lsp)
	 (web-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
;; (use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
;; (use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
;; (use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
;; (use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; The path to lsp-mode needs to be added to load-path as well as the
;; path to the `clients' subdirectory.
(add-to-list 'load-path (expand-file-name "lib/lsp-mode" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lib/lsp-mode/clients" user-emacs-directory))

(provide 'init-lsp)

;;; init-lsp.el ends here
