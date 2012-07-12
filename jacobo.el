
;; add jacobo folder to load path
(add-to-list 'load-path (concat dotfiles-dir  "jacobo/"))
;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)

;;org stuff
(require 'jacobo/org-mode)
;; Yasnippets stuff
(require 'jacobo/yasnippet)
;; groovy mode
(require 'jacobo/groovy)
;; grails mode
(require 'jacobo/grails)
;;anything mode
(require 'jacobo/anything-mode)
;;magit
(require 'jacobo/magit)
;; load up color themes
(require 'jacobo/color-theme)
;; Activate theme
(color-theme-comidia)

(provide 'jacobo)
;; end of jacobo.el
