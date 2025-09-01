;;; init-straight.el --- summary -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; This package configuration is inspired by
;; https://github.com/radian-software/straight.el

;;; Code:

;; If raw.githubusercontent.com is blocked by your ISP, try replacing
;; the URL with
;; https://radian-software.github.io/straight.el/install.el. Or you
;; can clone straight.el manually to
;; ~/.emacs.d/straight/repos/straight.el.

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(provide 'init-straight)

;;; init-straight.el ends here

