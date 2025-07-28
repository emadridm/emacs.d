;;; init-ai.el --- my AI tools -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; A minimal AI tools configution required

;;; Code:

(straight-use-package 'gptel)

(require 'auth-source)

;; https://github.com/karthink/gptel?tab=readme-ov-file#gemini
;; (gptel-make-gemini "Gemini"
;;   :key (auth-source-pick-first-password :host "generativelanguage.googleapis.com" :user "apikey")
;;   :stream t)
;; ;; setting gemini the default gptel backend model.
(setq
 gptel-model 'gemini-2.5-flash
 gptel-backend (gptel-make-gemini "Gemini"
                 :key (auth-source-pick-first-password :host "generativelanguage.googleapis.com" :user "apikey")
                 :stream t))

;; https://github.com/karthink/gptel?tab=readme-ov-file#ollama
;; (gptel-make-ollama "Ollama"             ;Any name of your choosing
;;   :host "localhost:11434"               ;Where it's running
;;   :stream t                             ;Stream responses
;;   :models '(deepseek-r1:latest))        ;List of models

(provide 'init-ai)

;;; init-ai.el ends here
