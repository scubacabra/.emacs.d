(require 'projectile)

(projectile-global-mode)

(setq projectile-enable-caching t)

(require 'helm-projectile)
(global-set-key (kbd "C-c C-p  h") 'helm-projectile)

(provide 'jacobo/projectile)
