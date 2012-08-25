(require 'yasnippet)

(yas/initialize)
(yas/load-directory (concat dotfiles-dir "plugins/yasnippet.el/snippets"))

(provide 'jacobo/yasnippet)
