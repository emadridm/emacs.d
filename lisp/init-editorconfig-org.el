;;; init-editorconfig-org.el --- Insert description here -*- lexical-binding: t -*-
;;; Commentary: https://editorconfig.org/
;;; Code:

(require-package 'editorconfig)

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(provide 'editorconfig-org)
;;; init-editorconfig-org.el ends here
