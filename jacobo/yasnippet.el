(require 'yasnippet)

(yas-global-mode 1)

(setq yas/root-directory '("~/.emacs.d/snippets"
                           "~/.emacs.d/plugins/java-mode-plus/snippets"))

;; Map `yas/load-directory' to every element
(mapc 'yas/load-directory yas/root-directory)

(provide 'jacobo/yasnippet)
