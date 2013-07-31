(setq browse-kill-ring-quit-action 'save-and-restore)

;; Browse the kill ring
(global-set-key (kbd "C-x C-y") 'browse-kill-ring)

(provide 'jacobo/browse-kill-ring)
