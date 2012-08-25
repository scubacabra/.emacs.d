;;add popup it depends on it
;;(add-to-list 'load-path (concat dotfiles-dir "plugins/popup-el"))
;; add fuzzy it depends on it
;;(add-to-list 'load-path (concat dotfiles-dir "plugins/fuzzy-el"))

(require 'auto-complete-config)
(ac-config-default)
;; add dictionaries for autocomplete!
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/dict")

(provide 'jacobo/auto-complete)
