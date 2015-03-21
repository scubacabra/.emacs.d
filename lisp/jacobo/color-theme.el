;; Color Themes
(add-to-list 'load-path (concat dotfiles-dir "plugins/color-theme"))
(require 'color-theme)
(color-theme-initialize)

(provide 'jacobo/color-theme)