;;ibuffer setup
(require 'jacobo/ibuffer-setup)
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
;; java-mode plus
(require 'jacobo/java-mode)
;; projectile mode
(require 'jacobo/projectile)
;; project-mode
(require 'jacobo/project-mode-customization)
;; grails mode
(require 'jacobo/grails)
;; helm mode --> will replace anything eventually
(require 'jacobo/helm-mode)
;; magit
(require 'jacobo/magit)
;; helm git
(require 'helm-git)
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
;; zoom-frm
(require 'jacobo/zoom-frm)
;; doc-mode
(require 'jacobo/doc-mode)
;; spock-mode
(require 'spock-mode)
;; nxml mode configuration
(require 'jacobo/xml-setup)
;; stripe-buffer prettify lists
(require 'jacobo/stripe-buffer-setup)
;; dired-details
(require 'jacobo/dired-setup)
;; gist
(require 'jacobo/gist)

(provide 'jacobo)
;; end of jacobo.el
