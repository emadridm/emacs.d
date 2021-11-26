;;; init-rjsx.el --- Configure rjsx-mode -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; Configure rjsx mode for all ecosystem
;; visit: https://github.com/felipeochoa/rjsx-mode

;;; Code:

(straight-use-package 'rjsx-mode)

(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

(provide 'init-rjsx)

;;; init-rjsx.el ends here
