
;; add jacobo folder to load path
(add-to-list 'load-path (concat dotfiles-dir  "jacobo/"))
;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)

;; os specific stuff
;; (setq cur_path (getenv "PATH")) ; get current path to append on
;; (if (eq system-type 'darwin) 
;;     (setq path (concat cur_path ":/usr/local/bin"))
;;   (setenv "PATH" path))

;;org stuff
(require 'jacobo/org-mode)
;; Yasnippets stuff
(require 'jacobo/yasnippet)
;; expand-region
(require 'jacobo/expand-region)
;; groovy mode
(require 'jacobo/groovy)
;; grails mode
(require 'jacobo/grails)
;;anything mode
(require 'jacobo/anything-mode)
;;magit
(require 'jacobo/magit)
;; auto-complete
(require 'jacobo/auto-complete)
;; load up color themes
(require 'jacobo/color-theme)
;; Activate theme
(color-theme-comidia)

(provide 'jacobo)
;; end of jacobo.el
