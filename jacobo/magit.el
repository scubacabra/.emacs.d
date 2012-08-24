;;(add-to-list 'load-path (concat dotfiles-dir "plugins/magit"))

(require 'magit)

;; Magit
(global-set-key (kbd "C-x m") 'magit-status) 
(autoload 'magit-status "magit")

(provide 'jacobo/magit)
