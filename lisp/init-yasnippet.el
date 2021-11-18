;;; init-yasnippet.el --- yasnippet config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; yasnippet config for all ecosystem
;; visit: https://github.com/joaotavora/yasnippet

;;; Code:

(straight-use-package 'yasnippet)
(straight-use-package 'yasnippet-snippets)

;; (yas-global-mode 1)
(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

;; (use-package yasnippet
;;   :config
;;   (yas-reload-all)
;;   :init
;;   (add-hook 'prog-mode #'yas-minor-mode))

(provide 'init-yasnippet)

;;; init-yasnippet.el ends here
