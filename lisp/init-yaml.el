;;; init-yaml.el --- My minimal yaml mode configuration -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My minimal yaml mode configiration file

;;; Code:

(use-package yaml-mode
  :straight (:host github :repo "yoshiki/yaml-mode"
                   :files (:defaults))
  :mode "\\.ya?ml\\'"  ; Automatically activate for .yml and .yaml files
  :config
  ;; Optional: Set indentation to 2 spaces, which is common for YAML
  ;; (setq yaml-indent-offset 2)
  )

(provide 'init-yaml)

;;; init-yaml.el ends here
