(require 'helm-config)

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c sk") 'helm-show-kill-ring)

(helm-mode 1)
(setq enable-recursive-minibuffers t)

(provide 'jacobo/helm-mode)
