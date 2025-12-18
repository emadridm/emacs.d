;;; init-quarto.el --- A major mode for Quarto documents -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; A simple major mode for quarto

;;; Code:

(use-package quarto-mode
  :straight (:host github :repo "quarto-dev/quarto-emacs"
                   :files (:defaults))
  :mode (("\\.Rmd" . poly-quarto-mode))
  )

(provide 'init-quarto)

;;; init-quarto.el ends here
