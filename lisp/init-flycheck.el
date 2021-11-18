;;; init-flycheck.el --- flycheck config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; flycheck settings for all ecosystem
;; visit: https://www.flycheck.org/en/latest/

;;; Code:

(straight-use-package 'flycheck)

(use-package flycheck
  :init (global-flycheck-mode))

(provide 'init-flycheck)

;;; init-flycheck.el ends here
