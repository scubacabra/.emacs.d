(require 'iy-go-to-char)

(add-to-list 'mc/cursor-specific-vars 'iy-go-to-char-start-pos)

(global-set-key (kbd "M-m") 'iy-go-to-char)
(global-set-key (kbd "M-M") 'iy-go-to-char-backward)

(provide 'jacobo/iy-go-to-char-mode)
