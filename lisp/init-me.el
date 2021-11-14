;;; init-me.el --- Insert description here -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Menu and Tool bar disable
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Emacs's backup files disable
(setq make-backup-files nil)

;; (display-pixel-width)
;; (display-pixel-height)
(set-face-attribute 'default nil :height 200)

;; Truncate lines indicator disable.
(setq-default truncate-lines t)

;; Mi globals keys
(global-set-key (kbd "M-g F") 'find-file-at-point)
(global-set-key (kbd "M-g U") 'browse-url-at-point)

;; (setq projectile-create-missing-test-files t)

(provide 'init-me)
;;; init-me.el ends here
