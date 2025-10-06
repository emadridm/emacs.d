;;; init-org-mode.el --- My simple org mode config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My simple org mode configuration file

;;; Code:

(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (python . t)
   (emacs-lisp . t)))

(provide 'init-org-mode)

;;; init-org-mode.el ends here
