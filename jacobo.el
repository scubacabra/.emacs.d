(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; pallet for carton management
(require 'pallet)

;;ibuffer setup
(require 'jacobo/ibuffer-setup)

;; org stuff
(require 'jacobo/org-mode)

;; Yasnippets stuff
(require 'jacobo/yasnippet)

;; expand-region
(require 'jacobo/expand-region)

;; smart-forward
(require 'jacobo/smart-forward)

;; groovy mode
(require 'jacobo/groovy)

;; ;; java-mode plus
;; (require 'jacobo/java-mode)

;; ;; projectile mode Keep ??
;; (require 'jacobo/projectile)

;; ;; project-mode Keep ??
;; (require 'jacobo/project-mode-customization)

;;; mark for deletion with helm-git takes care of this
;; ;; grails mode ;; from google code thing, not necessary with grails releases
;; (require 'jacobo/grails)

;; helm mode
(require 'jacobo/helm-mode)

;; configure extras on magit
(require 'jacobo/magit)

;;; mark deletion
;; ;; helm git
;; (require 'helm-git)

;; ;; auto-complete
;; (require 'jacobo/auto-complete)

;; ace-jump mode
(require 'jacobo/ace-jump-mode)

;; ;; mark-multiple mark for deletion with multiple cursors superseding it
;; (require 'jacobo/mark-multiple.el)

;; multiple cursors
(require 'jacobo/multiple-cursors)

;; browse kill ring
(require 'jacobo/browse-kill-ring)

;; smex
(require 'jacobo/smex)

;; feature-mode
(require 'jacobo/feature-mode)

;; markdown mode
(require 'jacobo/markdown-mode)

;; zoom-frm
(require 'jacobo/zoom-frm)

;; ;; doc-mode ?? 
;; (require 'jacobo/doc-mode)

;; ;; spock-mode --- need submodule I think
;; (require 'spock-mode)

;; ;; gradle-mode -- need submodule I think
;; (require 'jacobo/gradle-mode)

;; nxml mode configuration
(require 'jacobo/xml-setup)

;; stripe-buffer prettify lists
(require 'jacobo/stripe-buffer-setup)

;; dired-details
(require 'jacobo/dired-setup)

;; mark for deletion no content
;; ;; gist
;; (require 'jacobo/gist)

(provide 'jacobo)
;; end of jacobo.el
