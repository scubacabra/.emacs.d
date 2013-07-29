(require 'markdown-mode)

(setq auto-mode-alist  (cons '("\\.md" . markdown-mode) auto-mode-alist))
;;(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(provide'jacobo/markdown-mode)
