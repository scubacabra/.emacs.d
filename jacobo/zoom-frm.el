(require 'zoom-frm)

(global-set-key [(control shift ?z)]  'zoom-in) 
(global-set-key [(control ?z)]        'zoom-out)
(global-set-key (kbd "C-M-z") 'zoom-in)
(global-set-key (kbd "C-M-S-z") 'zoom-out)

(provide 'jacobo/zoom-frm)
