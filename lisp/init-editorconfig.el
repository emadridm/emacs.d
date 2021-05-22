;;; init-editorconfig.el --- https://editorconfig.org/ -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'editorconfig)

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(provide 'init-editorconfig)
;;; init-editorconfig.el ends here
