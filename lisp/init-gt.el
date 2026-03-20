;;; init-gt.el --- My minimal configuration for go translate pagackage -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; Here is my minimal configuration for the https://github.com/lorniu/gt.el package.

;;; Code:

(require 'straight)

(straight-use-package 'gt)

(require 'gt)

(setq gt-langs '(en es))
(setq gt-default-translator (gt-translator :engines (gt-google-engine)))

(keymap-global-set "C-c M-t" 'gt-translate)

(provide 'init-gt)

;;; init-gt.el ends here
