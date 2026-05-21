;;; init-gnuplot.el --- My gnuplot tool suite -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; A minimal configuration for my gnuplot tools.

;;; Code:

(require 'straight)

;; Add `(require 'cl-lib)` to your `~/.emacs` or `~/.emacs.d/init.el` file.

(straight-use-package 'cl-lib)
(straight-use-package 'gnuplot)
;; (straight-use-package 'gnuplot-mode)

(provide 'init-gnuplot)

;;; init-gnuplot.el ends here
