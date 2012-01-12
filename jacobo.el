
;; add jacobo folder to load path
(add-to-list 'load-path (concat dotfiles-dir  "jacobo"))

;;org stuff
(require 'jacobo/org-mode)
;; Yasnippets stuff
(require 'jacobo/yasnippet)
;; groovy mode
(require 'jacobo/groovy)
;; grails mode
(require 'jacobo/grails)
;; load up color themes
(require 'jacobo/color-theme)
;; Activate theme
(color-theme-comidia)

(provide 'jacobo)
;; end of jacobo.el