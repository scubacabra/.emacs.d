(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode)) ;; for gsp and jsp
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)) ;; for plain html

(setq web-mode-engines-alist
      '(("groovy-mode" . "\\.gsp\\'")))

(provide 'jacobo/web-mode)
