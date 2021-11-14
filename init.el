(let ((minver "25.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "26.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-straight)
(require 'init-core)
(require 'init-path)

(require 'init-theme)
(require 'init-me)

(require 'init-ui-completion)

(require 'init-projectile)

(require 'init-tide)

