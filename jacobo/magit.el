(add-to-list 'load-path (concat dotfiles-dir "plugins/magit"))

(require 'magit)

(global-set-key (kbd "C-x g") 'magit-status)

(provide 'jacobo/magit)
