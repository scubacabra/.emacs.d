(require 'mc-cycle-cursors)

;; Experimental multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-S-c C-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-S-c C-a") 'mc/edit-beginnings-of-lines)

;; Mark additional regions matching current region
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M-m") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "M-A") 'mc/mark-all-in-region)
(global-set-key (kbd "C-S-s") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-S-b") 'mc/skip-to-previous-like-this)

(provide 'jacobo/multiple-cursors)
