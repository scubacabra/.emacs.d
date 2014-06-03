(add-to-list 'auto-mode-alist '("\\.md$" . gfm-mode))

(setq markdown-italic-underscore t)

(add-hook 'markdown-mode-hook 'turn-on-auto-fill)

(provide'jacobo/markdown-mode)
