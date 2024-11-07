;;; init-gemini.el --- Enjoy using Google Gemini in Emacs😀 -*- lexical-binding: t -*-

;; Author: Kiko Madrid

;;; Commentary:

;; commentary

;;; Code:

(straight-use-package
 '(gemini :type git :host github :repo "AllTheLife/Gemini.el" :files ("*.el" "*.py")))

(require 'gemini)

(gemini-start-process)

(provide 'init-gemini)

;;; init-gemini.el ends here
