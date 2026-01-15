;;; init-vale.el --- Vale Configuration Package -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My minical Vale configuration package.
;; See https://vale.sh/ for instalation and Emacs integration.

;;; Code:

(require 'init-flycheck)

(flycheck-define-checker vale
  "A checker for prose"
  :command ("vale" "--output" "line"
            source)
  :standard-input nil
  :error-patterns
  ((error line-start (file-name) ":" line ":" column ":" (id (one-or-more (not (any ":")))) ":" (message) line-end))
  :modes (markdown-mode org-mode text-mode)
  )
(add-to-list 'flycheck-checkers 'vale 'append)

;; Vale integration with Flycheck.
;; https://github.com/abingham/flycheck-vale. Note that this main repo is no maintained anymore. See https://github.com/abingham/flycheck-vale/issues/17#issuecomment-780356638
;; Note: The site https://vale.sh/ recommends https://github.com/tpeacock19/flymake-vale.

;; (straight-use-package 'flycheck-vale)
;; (straight-use-package
;;  '(flycheck-vale :type git :host github :repo "abingham/flycheck-vale"))
;; (use-package flycheck-vale
;;   :init (flycheck-vale-setup))


(provide 'init-vale)

;;; init-vale.el ends here
