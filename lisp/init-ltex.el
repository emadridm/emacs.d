;;; init-ltex.el --- L-Tex Package Configuration -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My minimal L-Tex package configuration.  LTEX provides offline

;; LTEX provides offline grammar checking of various markup languages
;; using LanguageTool (LT).  LTEX can be used standalone as a
;; command-line tool, as a language server using the Language Server
;; Protocol (LSP), or directly in various editors using
;; extensions.  (https://valentjn.github.io/ltex/index.html)

;;; Code:

;; (straight-use-package '(lsp-ltex :type git :host github :repo "emacs-languagetool/lsp-ltex"))

;; (straight-use-package 'lsp-ltex)

;; (use-package lsp-ltex
;;   :ensure t
;;   :hook (text-mode . (lambda ()
;;                        (require 'lsp-ltex)
;;                        (lsp)))  ; or lsp-deferred
;;   :init
;;   (setq lsp-ltex-version "16.0.0"))  ; make sure you have set this, see below

;; ;; --- LSP Mode Setup ---
(use-package lsp-mode
  :init
  ;; Set to true to disable diagnostics in `*LSP-Diagnostics*` buffer.
  ;; You'll rely on Flycheck for in-buffer diagnostics.
  ;; (setq lsp-diagnostics-show-diagnostics-buffer nil)

  ;; Configure ltex-ls client
  ;; The key is the 'language ID' that ltex-ls expects, typically "text" or "latex".
  ;; The value is a list specifying the command and its arguments.
  :config
  (lsp-register-client
   (make-lsp-client :new-connection (lsp-stdio-connection "ltex-ls")
                    :major-modes '(text-mode
                                   markdown-mode
                                   org-mode
                                   latex-mode
                                   html-mode
                                   gfm-mode) ; Github Flavored Markdown
                    :remote? nil
                    :server-id 'ltex-ls
                    ;; ltex-ls specific initialization options
                    ;; Consult ltex-ls documentation for all options
                    ;;                  :initialization-options
                    ;;                  '(:ltex (:language "en-US" ; or "en-GB", "de-DE", etc.
                    ;;                                     ;; :setWords [("Emacs" "Emacs")] ; Example: add words to personal dictionary
                    ;;                                     :disabledRules [("MORFOLOGIK_RULE_EN_US" "CURLY_QUOTES")] ; Example: disable specific rules
                    ;;                                     :hiddenFalsePositives []
                    ;;                                     :dictionary "en-US"
                    ;;                                     :completionEnabled t
                    ;;                                     :sentenceCacheSize 1000
                    ;;                                     :javaMaxHeapSize 2048 ; Max Java heap size in MB (adjust as needed)
                    ;;                                     :trace.server "off"
                    ;;                                     :trace.extension "off"))
                    )
   )

  :hook
  ;; Hook lsp-deferred to relevant major modes for ltex-ls
  ;; This ensures the server starts when you open a file in these modes.
  ((text-mode
    markdown-mode
    org-mode
    latex-mode
    html-mode
    gfm-mode) . lsp-deferred))

;; --- Optional: LSP UI for better visual feedback ---
(use-package lsp-ui
  :after lsp-mode
  :commands lsp-ui-mode
  :hook (lsp-mode . lsp-ui-mode))

;; --- Flycheck (often enabled automatically by lsp-mode for diagnostics) ---
;; You usually don't need explicit flycheck configuration beyond ensuring it's installed.
;; lsp-mode registers its diagnostics with Flycheck.
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)) ; Enable global flycheck mode if you want it everywhere


(provide 'init-ltex)

;;; init-ltex.el ends here
