;;; init-harper.el --- summary -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; commentary

;;; Code:

;; Harper
;; https://writewithharper.com/docs/integrations/emacs

;; THIS NOT WORK! IT SHOULD BE REVIEW!

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(text-mode . ("harper-ls" "--stdio"))))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(markdown-mode . ("harper-ls" "--stdio"))))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '(org-mode . ("harper-ls" "--stdio"))))

(with-eval-after-load 'eglot
  (add-to-list 'eglot-server-programs
               '((english-prose-mode :language-id "plaintext") . ("harper-ls" "--stdio"))))

;; Common Config Changes: Programmers often find certain rules have
;; too much of a hair-trigger. The below config is a simple
;; cut-and-paste that gives you much fewer false-positives.
(setq-default eglot-workspace-configuration
              '(:harper-ls (:linters (:SpellCheck :json-false
                                                  :SentenceCapitalization :json-false))))
;; ;; Optional configuration
;; (setq-default eglot-workspace-configuration
;;               '(:harper-ls (:userDictPath ""
;;                                           :fileDictPath ""
;;                                           :linters (:SpellCheck t
;;                                                                 :SpelledNumbers :json-false
;;                                                                 :AnA t
;;                                                                 :SentenceCapitalization t
;;                                                                 :UnclosedQuotes t
;;                                                                 :WrongQuotes :json-false
;;                                                                 :LongSentences t
;;                                                                 :RepeatedWords t
;;                                                                 :Spaces t
;;                                                                 :Matcher t
;;                                                                 :CorrectNumberSuffix t)
;;                                           :codeActions (:ForceStable :json-false)
;;                                           :markdown (:IgnoreLinkTitle :json-false)
;;                                           :diagnosticSeverity "hint"
;;                                           :isolateEnglish :json-false
;;                                           :dialect "American"
;;                                           :maxFileLength 120000)))


(provide 'init-harper)

;;; init-harper.el ends here
