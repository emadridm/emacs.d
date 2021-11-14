(straight-use-package 'projectile)

(projectile-mode +1)
;; Recommended keymap prefix on macOS
;; (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Productivity Extensions

;; https://github.com/ericdanan/counsel-projectile
(straight-use-package 'counsel-projectile)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(counsel-projectile-mode)

(provide 'init-projectile)

