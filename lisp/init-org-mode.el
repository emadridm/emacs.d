;;; init-org-mode.el --- My simple org mode config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My simple org mode configuration file

;;; Code:

(require 'straight)

(straight-use-package 'org)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (sql . t)
   (sqlite . t)
   (python . t)
   (emacs-lisp . t)))

(provide 'init-org-mode)

;;; init-org-mode.el ends here
