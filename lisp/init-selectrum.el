(straight-use-package 'selectrum)
(selectrum-mode +1)


(straight-use-package 'prescient)
;; (straight-use-package 'ivy-prescient)
;; (straight-use-package 'company-prescient)
(straight-use-package 'selectrum-prescient)

;; to make sorting and filtering more intelligent
(selectrum-prescient-mode +1)

;; to save your command history on disk, so the sorting gets more
;; intelligent over time
(prescient-persist-mode +1)

(require 'init-consult)

(provide 'init-selectrum)
