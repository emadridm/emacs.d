;;; init-visual-fill-column.el --- Visual Fill Column package configuration -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My minimal Visual Fill Package configuration
;; Please, visit the page https://codeberg.org/joostkremers/visual-fill-column

;;; Code:

(straight-use-package
 '(visual-fill-column
   :type git
   :host codeberg
   :repo "/joostkremers/visual-fill-column"))

(global-visual-fill-column-mode 1)
(global-visual-line-mode 1)

(provide 'init-visual-fill-column)

;;; init-visual-fill-column.el ends here
