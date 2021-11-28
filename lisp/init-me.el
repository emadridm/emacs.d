;;; init-me.el --- Insert description here -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Menu and Tool bar disable
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Emacs's backup files disable
(setq make-backup-files nil)

;; Set font size equal to (display-pixel-height) * 18.2%
;; (set-face-attribute 'default nil :height 200)
(set-face-attribute 'default nil :height (round (* (display-pixel-height) 0.182)))

;; Truncate lines indicator disable.
(setq-default truncate-lines t)

;; highlight paren matching
(show-paren-mode 'toggle)

;; Mi globals keys
(global-set-key (kbd "M-g F") 'find-file-at-point)
(global-set-key (kbd "M-g U") 'browse-url-at-point)

;; (setq projectile-create-missing-test-files t)

(provide 'init-me)
;;; init-me.el ends here
