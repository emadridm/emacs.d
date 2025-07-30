;;; init-ui.el --- Minimal UI configuration -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; My minimal User Interface (UI) configuration

;;; Code:

(require 'init-consult)

;; Enable swiper, selectrum, or vertico UI completion.
;; (require 'init-swiper)
;; (require 'init-selectrum)
(require 'init-vertico)

;; Enable marginalia package
(require 'init-marginalia)

;; Enable embark package
(require 'init-embark)

(provide 'init-ui)

;;; init-ui.el ends here
