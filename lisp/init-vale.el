;;; init-vale.el --- Vale Configuration Package -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My minical Vale configuration package.
;; See https://vale.sh/ for instalation and Emacs integration.

;;; Code:

(straight-use-package 'flycheck-vale)

(use-package flycheck-vale
  :init (flycheck-vale-setup))


(provide 'init-vale)

;;; init-vale.el ends here
