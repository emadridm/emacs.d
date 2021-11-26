;;; init-js2.el --- js2-mode config file -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; Configure js2-mode for all ecosystem
;; visit: https://github.com/mooz/js2-mode

;;; Code:

(straight-use-package 'js2-mode)

;; To install it as your major mode for JavaScript editing:

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Alternatively, to install it as a minor mode just for JavaScript linting,
;; you must add it to the appropriate major-mode hook.  Normally this would be:

;; (add-hook 'js-mode-hook 'js2-minor-mode)

;; You may also want to hook it in for shell scripts running via node.js:

(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

;; Use Emacs 27 and want to write JSX?  Then use `js2-minor-mode' as described
;; above.  Use Emacs 26 or earlier?  Then use `js2-jsx-mode':

;;   (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
;;   (add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))

(provide 'init-js2)

;;; init-js2.el ends here
