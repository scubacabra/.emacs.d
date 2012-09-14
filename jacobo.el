;; org stuff
(eval-after-load "org" '(require 'jacobo/org-mode))
;; Yasnippets stuff
(require 'jacobo/yasnippet)
;; expand-region
(require 'jacobo/expand-region)
;; smart-forward
(require 'jacobo/smart-forward)
;; groovy mode
(require 'jacobo/groovy)
;; project-mode
(require 'jacobo/project-mode-customization)
;; grails mode
(require 'jacobo/grails)
;; anything mode
(require 'jacobo/anything-mode)
;; helm mode --> will replace anything eventually
(require 'jacobo/helm-mode)
;; magit
(require 'jacobo/magit)
;; auto-complete
(require 'jacobo/auto-complete)
;; ace-jump mode
(require 'jacobo/ace-jump-mode)
;; mark-multiple
(require 'jacobo/mark-multiple.el)
;; browse kill ring
(require 'jacobo/browse-kill-ring)
;; smex
(require 'jacobo/smex)
;; multiple cursors
(require 'jacobo/multiple-cursors)
;; feature-mode
(require 'jacobo/feature-mode)
;; markdown mode
(require 'jacobo/markdown-mode)

(provide 'jacobo)
;; end of jacobo.el
