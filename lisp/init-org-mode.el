;;; init-org-mode.el --- My simple org mode config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My simple org mode configuration file

;;; Code:

(require 'straight)

(straight-use-package 'org)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((shell . t)
   (R . t)
   (sql . t)
   (sqlite . t)
   (python . t)
   (emacs-lisp . t)))

;; Evaluating code blocks during PDF export without prompts.
(setq org-confirm-babel-evaluate nil)

;; These variables control the default behavior for Org export when no
;; `:results` or `#+OPTIONS:` are specified.
(setq org-export-with-results t)
(setq org-export-with-code t)

;; My required packages
(with-eval-after-load 'ox-latex
  ;; https://ctan.org/pkg/caption.
  (add-to-list 'org-latex-packages-alist '("" "caption" t))
  ;; https://ctan.org/pkg/cleveref.
  (add-to-list 'org-latex-packages-alist '("" "cleveref" t))
  ;; https://ctan.org/pkg/tabularx.
  (add-to-list 'org-latex-packages-alist '("" "tabularx" t))
  (add-to-list 'org-latex-packages-alist '("" "adjustbox" t))
  (add-to-list 'org-latex-packages-alist '("" "longtable" t))
  (add-to-list 'org-latex-packages-alist '("" "booktabs" t))
  )

;; Enabled this command to insert a blank page after the toc.
(setq org-latex-toc-command "\\tableofcontents \\clearpage \n")

;; My custom commands to process a LaTeX file to a PDF file.
(setq org-latex-pdf-process '("latexmk -f -pdf -interaction=nonstopmode -output-directory=%o %f"))

(provide 'init-org-mode)

;;; init-org-mode.el ends here
