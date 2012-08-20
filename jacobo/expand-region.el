(add-to-list 'load-path (concat dotfiles-dir "plugins/expand-region.el"))

(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(provide 'jacobo/expand-region)
