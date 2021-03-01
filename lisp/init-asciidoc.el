;;; package --- init-asciidoc.el
;;; commentary:
;;; code:

(require-package 'adoc-mode)


;; According to AsciiDoc manual, .txt is the standard file extension
;; of AsciiDoc files. Add the following to your initialization file to
;; open all .txt files with adoc-mode as major mode automatically:

(add-to-list 'auto-mode-alist (cons "\\.txt\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.adoc\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.asciidoc\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.ad\\'" 'adoc-mode))
(add-to-list 'auto-mode-alist (cons "\\.asc\\'" 'adoc-mode))

;; If your default face is a fixed pitch (monospace) face, but in
;; AsciiDoc files you liked to have normal text with a variable pitch
;; face, buffer-face-mode is for you:

;; (add-hook 'adoc-mode-hook (lambda() (buffer-face-mode t)))

(provide 'init-asciidoc)
;;; init-asciidoc.el ends here
