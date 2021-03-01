;;; init-local.el --- My initialization local file
;;; Author: Enrique Madrid emadridm@gmail.com
;;; Commentary:
;;; Code:

(set-face-attribute 'default nil :height 180)
(setq-default truncate-lines t)

(require-package 'use-package)

(require 'init-tide)
(require 'init-treemacs)
;; (require 'init-lsp)
(require 'init-asciidoc)

(require 'init-dictionary)

(global-display-fill-column-indicator-mode -1)

(provide 'init-local)
;;; init-local.el ends here
