;;; init-project.el --- basic project tools -*- lexical-binding: t -*-

;; Author: Kiko Madrid

;;; Commentary:

;; commentary

;;; Code:

(straight-use-package 'project)
(straight-use-package 'projectile)

(setq project-switch-commands
      '((project-find-file "Find file" nil)
        (project-find-regexp "Find regexp" nil)
        (project-find-dir "Find directory" nil)
        (project-dired "Root directory" nil)
        (project-shell "Project shell" nil)))


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


(provide 'init-project)

;;; init-project.el ends here
