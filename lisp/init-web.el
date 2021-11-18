;;; init-web.el --- web-mode config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; web-mode config for whole ecosystem.
;; visit: https://web-mode.org/

;;; Code:

(straight-use-package 'web-mode)

(use-package web-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
  :config
  (setq web-mode-enable-auto-pairing nil))

(provide 'init-web)

;;; init-web.el ends here
