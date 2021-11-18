;;; init-yasnippet.el --- summary -*- lexical-binding: t -*-

;; Author: Enrique Madrid
;; Maintainer: Enrique Madrid
;; Version: version
;; Package-Requires: (dependencies)
;; Homepage: homepage
;; Keywords: keywords


;; This file is not part of GNU Emacs

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.


;;; Commentary:

;; commentary

;;; Code:

(straight-use-package 'yasnippet)
(straight-use-package 'yasnippet-snippets)

;; (yas-global-mode 1)

(require 'yasnippet)
(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;; (use-package yasnippet
;;   :config
;;   (yas-reload-all)
;;   :init
;;   (add-hook 'prog-mode #'yas-minor-mode))

(provide 'init-yasnippet)

;;; init-yasnippet.el ends here
