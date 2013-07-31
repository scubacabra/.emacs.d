(add-hook 'dired-mode-hook 'stripe-listify-buffer)

(add-hook 'org-mode-hook 'turn-on-stripe-table-mode)

(provide 'jacobo/stripe-buffer-setup)
