;;; init-local.el --- My initialization local file
;;; Author: Enrique Madrid emadridm@gmail.com
;;; Commentary:
;;; Code:

(set-face-attribute 'default nil :height 140)
(setq-default truncate-lines t)

(require-package 'use-package)

(require 'init-tide)
(require 'init-treemacs)
;; (require 'init-lsp)
(require 'init-asciidoc)

(require 'init-dictionary)

(require 'init-editorconfig)

;; (global-display-fill-column-indicator-mode -1)
(remove-hook 'prog-mode-hook 'display-fill-column-indicator-mode)

(setq projectile-create-missing-test-files t)
(global-set-key (kbd "M-g f") 'find-file-at-point)
(global-set-key (kbd "M-g u") 'browse-url-at-point)

(provide 'init-local)
;;; init-local.el ends here
