;;; init-orderless.el --- Orderless configuration -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My minimal order configuration, inspired by https://github.com/oantolin/orderless?tab=readme-ov-file#overview

;;; Code:

(straight-use-package '(orderless :type: git :host github :repo "oantolin/orderless"))

(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))

(provide 'init-orderless)

;;; init-orderless.el ends here
