;;; init-me.el --- Insert description here -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Maximize the initial Emacs frame
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; Menu and Tool bar disable
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Emacs's backup files disable
(setq make-backup-files nil)

;; Set default FACE font height attribute
(set-face-attribute 'default nil :height 160)

;; Truncate lines indicator disable.
;; (setq-default truncate-lines t)

;; Prevent extraneus tabs
(setq-default indent-tabs-mode nil)

;; highlight paren matching
(show-paren-mode 'toggle)

;; Mi globals keys
(global-set-key (kbd "M-g F") 'find-file-at-point)
(global-set-key (kbd "M-g U") 'browse-url-at-point)

(provide 'init-me)
;;; init-me.el ends here
