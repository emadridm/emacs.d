;;; init-nvm.el --- Node version mamanager -*- lexical-binding: t -*-
;;; Commentary:
;;; https://github.com/rejeep/nvm.el
;;; Author: Enrique Madrid
;;; Code:

(use-package nvm
  :straight (:host github :repo "rejeep/nvm.el"))
;; :config
;; ;; Optionally set a default node version
;; (nvm-use "20"))

;;; init-nvm.el ends here
(provide 'init-nvm)

