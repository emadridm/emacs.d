;;; init-smartparens.el --- smartparens settings -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; smartparens config for all ecosystem
;; visit: https://github.com/Fuco1/smartparens
;; https://ebzzry.com/en/emacs-pairs/

;;; Code:

(straight-use-package 'smartparens)

(require 'smartparens-config)

(smartparens-global-mode 1)

;; You may want to try smartparens-strict-mode.
;; This enforces that pairs are always balanced,
;; so commands like kill-line keep your code well-formed.
;; (smartparens-strict-mode)

;; Emacs lisp support
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

(provide 'init-smartparens)

;;; init-smartparens.el ends here
