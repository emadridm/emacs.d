;;; init-gptel.el --- My gptel package configution -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My minimal gptel package configution.

;; Note: The gptel uses Curl if available, but falls back to the
;; built-in url-retrieve to work without external dependencies.

;;; Code:

(require 'straight)

(straight-use-package 'gptel)

(require 'auth-source)

;; Gemini
;; https://github.com/karthink/gptel?tab=readme-ov-file#gemini

;; Important note: In October 2024, GPTel suggests creating the API
;; Key in https://console.cloud.google.com/apis/credentials; however,
;; in in recent days, it has suggested creating the Gemini API key at
;; https://aistudio.google.com/api-keys.

;; ;; Register the Gemini backend.
;; (gptel-make-gemini "Gemini"
;;   :key (auth-source-pick-first-password :host "generativelanguage.googleapis.com" :user "apikey")
;;   :stream t)

;; ;; Setting gemini the default gptel backend model with
;; ;; console.cloud.google.com API Key.
;; (setq
;;  gptel-model 'gemini-2.5-flash
;;  gptel-backend (gptel-make-gemini "Gemini"
;;                  :key (auth-source-pick-first-password :host "generativelanguage.googleapis.com" :user "apikey")
;;                  :stream t))

;; Setting gemini the default gptel backend model with
;; https://aistudio.google.com/api-keys API Key.
(setq
 gptel-model 'gemini-2.5-flash
 gptel-backend (gptel-make-gemini "Gemini"
                 :key (auth-source-pick-first-password :host "aistudio.google.com" :user "apikey")
                 :stream t))

;; https://github.com/karthink/gptel?tab=readme-ov-file#ollama
;; (gptel-make-ollama "Ollama"             ;Any name of your choosing
;;   :host "localhost:11434"               ;Where it's running
;;   :stream t                             ;Stream responses
;;   :models '(deepseek-r1:latest))        ;List of models

(provide 'init-gptel)

;;; init-gptel.el ends here
