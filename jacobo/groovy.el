;; Groovy loading
;; ADD to load-path
(add-to-list 'load-path (concat dotfiles-dir "plugins/groovy.el"))

(require 'groovy-mode)
(add-to-list 'auto-mode-alist '("\\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;;; make Groovy mode electric by default
(add-hook 'groovy-mode-hook
          '(lambda ()
             (require 'groovy-electric)
             (groovy-electric-mode)))

(provide 'jacobo/groovy)
