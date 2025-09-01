;;; init-org-roam.el --- My Org-Roam Config -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; This is my minimal Org-Roam package config

;;; Code:

;; This lines are inspired in https://github.com/org-roam/org-roam.
;; If you need to install the package directly from the source
;; repository, instead of from MELPA, the next sample shows how to do
;; so:

(use-package org-roam
  :straight (:host github :repo "org-roam/org-roam"
                   :files (:defaults "extensions/*"))
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/RoamNotes"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  ;; If you're using a vertical completion framework, you might want a
  ;; more informative completion interface
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))

(provide 'init-org-roam)

;;; init-org-roam.el ends here
