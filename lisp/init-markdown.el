;;; init-markdown.el --- summary -*- lexical-binding: t -*-

;; Author: Kiko Madrid
;; Maintainer: Kiko Madrid
;; Version: version
;; Package-Requires: (dependencies)
;; Homepage: homepage
;; Keywords: keywords

;;; Commentary:

;; commentary

;;; Code:

(straight-use-package 'markdown-mode)

(use-package markdown-mode
  :ensure t
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :bind (:map markdown-mode-map
              ("C-c C-e" . markdown-do)))

(provide 'init-markdown)
;;; init-markdown.el ends here
