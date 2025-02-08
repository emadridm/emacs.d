;;; init-yasnippet.el --- yasnippet config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; yasnippet config for all ecosystem
;; visit: https://github.com/joaotavora/yasnippet

;;; Code:

(straight-use-package 'yasnippet)
(straight-use-package 'yasnippet-snippets)
(straight-use-package 'mocha-snippets)

;; (yas-global-mode 1)
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; (use-package yasnippet
;;   :config
;;   (yas-reload-all)
;;   :init
;;   (add-hook 'prog-mode #'yas-minor-mode))

(setq mocha-snippets-string-delimiter "\"")
(setq mocha-snippets-use-fat-arrows nil)
;; (setq mocha-snippets-add-space-after-function-keyword t)

(provide 'init-yasnippet)

;;; init-yasnippet.el ends here
