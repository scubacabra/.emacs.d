;;depends on project-mode
;;(require 'jacobo/project-mode-customization)
;; (setq grails-mode t)
;; (setq project-mode t)
;; associate gsp with nxml
(add-to-list 'auto-mode-alist '("\.gsp$" . nxml-mode))
;; loads all the projects saved off with project mode
;;(project-load-all)

;; keybindings
(global-set-key (kbd "C-x C-g fdc") 'grails-find-domain-for-current)
(global-set-key (kbd "C-x C-g fcc") 'grails-find-controller-for-current)
(global-set-key (kbd "C-x C-g fsc") 'grails-find-service-for-current)
(global-set-key (kbd "C-x C-g fva") 'grails-find-view-for-controller-action)
(global-set-key (kbd "C-x C-g futc") 'grails-find-unit-test-for-current)
(global-set-key (kbd "C-x C-g fitc") 'grails-find-integration-test-for-current)

(provide 'jacobo/grails)
