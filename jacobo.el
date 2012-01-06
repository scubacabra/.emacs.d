
;; add jacobo folder to load path
(add-to-list 'load-path (concat dotfiles-dir  "jacobo"))

;;org stuff
(require 'jacobo/org)
;; groovy/grails stuff
(require 'jacobo/groovy)
;; yasnippets stuff
(require 'jacobo/yasnippet)
;; load up color themes
(require 'jacobo/color-theme)
;; Activate theme
(color-theme-comidia)

(provide 'jacobo)
;; end of jacobo.el