;;; init-smartparens.el --- smartparens settings -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; smartparens config for all ecosystem
;; visit: https://github.com/Fuco1/smartparens

;;; Code:

(straight-use-package 'smartparens)

(smartparens-global-mode 1)

(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

(provide 'init-smartparens)

;;; init-smartparens.el ends here
