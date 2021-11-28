;;; init-readonly.el --- default readonly mode -*- lexical-binding: t -*-

;; Author: Enrique Madrid

;;; Commentary:

;; Default readonly mode for all ecosystem

;;; Code:

(add-hook 'find-file-hook
	  (lambda ()
	    (dolist (pattern '("/node_modules/"
			       ;; add here other pattern
			       ))
	      (if (string-match pattern (buffer-file-name))
		  (read-only-mode)
		))))

(provide 'init-readonly)

;;; init-readonly.el ends here
