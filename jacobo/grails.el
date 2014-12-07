(require 'grails-projectile-mode)

;; When entering grails-mode, consider also the snippets in the
;; snippet table "grails-mode"
(add-hook 'grails-projectile-mode-hook
          #'(lambda ()
              (yas-activate-extra-mode 'grails-mode)))

(add-hook 'projectile-mode-hook 'grails-projectile-on)

(provide 'jacobo/grails)
