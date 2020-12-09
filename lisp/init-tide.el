;;; init-tide.el --- Support for Typescript
;;; Commentary:
;;; Look at https://github.com/ananthakumaran/tide
;;; Code:

(maybe-require-package 'tide)

(defun setup-tide-mode ()
  "From https://github.com/ananthakumaran/tide."
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

;;; format options. See https://github.com/ananthakumaran/tide
;; (setq tide-format-options '(
;;                             :insertSpaceAfterFunctionKeywordForAnonymousFunctions t
;;                             :placeOpenBraceOnNewLineForFunctions nil))

;;; Javascript
;; (add-hook 'js2-mode-hook #'setup-tide-mode)
;;; configure javascript-tide checker to run after your default javascript checker
;; (flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)

(provide 'init-tide)
;;; init-tide.el ends here
