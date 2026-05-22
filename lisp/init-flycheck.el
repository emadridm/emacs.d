;;; init-flycheck.el --- flycheck config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; flycheck settings for all ecosystem
;; visit: https://www.flycheck.org/en/latest/

;;; Code:

(use-package flycheck
  :straight (flycheck
             :type git
             :host github
             :repo "flycheck/flycheck")
  :init (global-flycheck-mode)
  :config
  (setq-default flycheck-disabled-checkers '(org-lint)))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
