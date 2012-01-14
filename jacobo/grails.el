(add-to-list 'load-path (concat dotfiles-dir "plugins/grails"))
;;depends on project-mode
(require 'jacobo/project-mode-customization)
(require 'grails-mode)
(setq grails-mode t)
(setq project-mode t)
(add-to-list 'auto-mode-alist '("\.gsp$" . nxml-mode))
(provide 'jacobo/grails)
