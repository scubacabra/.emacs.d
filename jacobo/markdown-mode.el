(require 'markdown-mode)

(setq auto-mode-alist  (cons '("\\.md" . markdown-mode) auto-mode-alist))

(provide'jacobo/markdown-mode)
