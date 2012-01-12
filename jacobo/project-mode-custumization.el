(add-to-list 'load-path (concat dotfiles-dir "plugins/project-mode"))
(add-to-list 'load-path (concat dotfiles-dir "plugins/levenshtein"))
(require 'levenshtein)
(require 'project-mode)

(provide 'jacobo/project-mode-customization)