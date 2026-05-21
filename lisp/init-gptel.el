;;; init-gptel.el --- My gptel package configution -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My minimal gptel package configuration inspired in its creator.
;; https://github.com/karthink/.emacs.d/blob/master/lisp/setup-gptel.el

;; Note: The gptel uses Curl if available, but falls back to the
;; built-in url-retrieve to work without external dependencies.

;;; Code:

(require 'init-transient)

;; (straight-use-package 'gptel)

;; (require 'gptel)
;; (require 'auth-source)

;; General settings
(use-package gptel
  :commands (gptel gptel-send)
  :hook ((gptel-mode . (lambda ()
                         (setq-local gptel-cache t)))
         (gptel-mode . gptel-highlight-mode))
  :bind (("C-c C-<return>" . gptel-menu)
         ("C-c <return>" . gptel-send)
         ("C-c j" . gptel-menu)
         ("C-c M-j" . gptel)
         ("C-c C-g" . gptel-abort)
         :map gptel-mode-map
         ("C-c C-x t" . gptel-set-topic))
  :config
  ;; (auth-source-pass-enable)
  (setq gptel-highlight-methods (if (controlling-tty-p) '(margin) '(fringe))
        gptel-track-media t
        gptel-expert-commands t
        gptel-default-mode 'org-mode))

;; LLM responses settings
(use-package gptel
  :commands (gptel gptel-send)
  :config
  (add-hook 'gptel-post-response-functions
            (lambda (start end)
              (when (derived-mode-p 'org-mode)
                (save-excursion
                  (save-restriction
                    (narrow-to-region start end)
                    (goto-char (point-min))
                    (org-map-entries #'org-demote)))))))

;; LLM backends settings
(use-package gptel
  :after gptel auth-source
  :config
  (defvar gptel--gemini
    (gptel-make-gemini "Gemini"
      :key (auth-source-pick-first-password :host "aistudio.google.com" :user "apikey")
      :stream t))

  (defvar gptel--ollama
    (gptel-make-ollama "Ollama"
      :host "localhost:11434"
      :models '(qwen2.5:latest deepseek-r1:latest)
      :stream t))
  
  (setq-default gptel-model 'gemini-2.5-flash
                gptel-backend gptel--gemini))


;; Directives and presets
(use-package gptel
  :after gptel
  :config
  ;; TODO:
  ;; https://github.com/jwiegley/gptel-prompts
  
  (setf (alist-get 'research gptel-directives)
        "From now on, follow 3 rules.
Rule 1: If you're not confident in your answer, say 'I'm not sure' and
explain why. Never guess.  Rule 2: After every response, rate your
confidence from 1 to 10. Anything below 7, flag it.  Rule 3: Always
provide verified sources for all numbers, statistics, claims about
people, and quotes.")
  
  ;; These three presets are a implementation of Sabrina Ramonov' video.
  ;; https://youtu.be/foLPJRmXBkU?si=QQJakqGvZYUtYkJG
  (gptel-make-preset 'consultant
    :description "A prompt to get a consultant answer. Thank you Sabrina Ramonov"
    :system "Ask me clarifying questions until you're 95% confident you can complete the task successfully.")
  (gptel-make-preset 'expert
    :description "A prompt to get a expert answer. Thank you Sabrina Ramonov"
    :system "What would a top 0.1% person in this field think?")
  (gptel-make-preset 'pov
    :description "A prompt to get a pov answer. Thank you Sabrina Ramonov"
    :system "Reframe this in a way that challenges how I see the problem.")

  ;; Quillbot alternative
  (gptel-make-preset 'grammar
    :description "A grammar tool"
    :scope "oneshot"
    :backend "Ollama"
    :model 'qwen2.5:latest
    :system "You are a strict grammar checker. Correct all grammatical, spelling, and punctuation errors in the following text. Do not change the style unless it is grammatically incorrect. Output ONLY the corrected text."
    :temperature 0.2))

(provide 'init-gptel)

;;; init-gptel.el ends here
