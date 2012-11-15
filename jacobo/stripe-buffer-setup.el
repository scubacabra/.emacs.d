(require 'stripe-buffer)

(add-hook 'dired-mode-hook 'stripe-buffer-mode)

(add-hook 'org-mode-hook 'org-table-stripes-enable)



(provide 'jacobo/stripe-buffer-setup)
