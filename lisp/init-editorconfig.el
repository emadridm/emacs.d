;;; init-editorconfig.el --- editorconfig config file -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; Edtiorconfig config for all ecosystem
;; visit: https://github.com/editorconfig/editorconfig-emacs
;; visit: https://editorconfig.org/

;;; Code:

(straight-use-package 'editorconfig)

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(provide 'init-editorconfig)

;;; init-editorconfig.el ends here
