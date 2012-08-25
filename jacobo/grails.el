;;depends on project-mode
(require 'jacobo/project-mode-customization)
(require 'grails-mode)
(setq grails-mode t)
(setq project-mode t)
;; associate gsp with nxml
(add-to-list 'auto-mode-alist '("\.gsp$" . nxml-mode))
;; loads all the projects saved off with project mode
(project-load-all)

;; keybindings
(global-set-key "\C-x/gfdc" 'grails-find-domain-for-current)
(global-set-key "\C-x/gfcc" 'grails-find-controller-for-current)
(global-set-key "\C-x/gfsc" 'grails-find-service-for-current)
(global-set-key "\M-+gv" 'grails-find-view-for-controller-action)
(global-set-key "\M-+gut" 'grails-find-unit-test-for-current)
(global-set-key "\M-+git" 'grails-find-integration-test-for-current)

(provide 'jacobo/grails)
