;;; init-company.el --- My minimal company configuration -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; The company library https://company-mode.github.io/. Company is a
;; text and code completion framework for Emacs. The name stands for
;; "complete anything". It uses pluggable back-ends and front-ends to
;; retrieve and display completion candidates.

;;; Code:

(use-package company
  :straight (company :type git :host github :repo "company-mode/company-mode")
  :hook
  (after-init . global-company-mode))

(provide 'init-company)

;;; init-company.el ends here
