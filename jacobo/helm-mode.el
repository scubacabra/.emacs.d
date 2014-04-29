(global-set-key (kbd "C-c C-h m") 'helm-mini)
(global-set-key (kbd "C-c C-h k") 'helm-show-kill-ring)
(global-set-key (kbd "C-c C-h g") 'helm-ls-git-ls)
(global-set-key (kbd "C-x f") 'helm-find-files)
(helm-mode 1)
(setq helm-ff-auto-update-initial-value t)

(provide 'jacobo/helm-mode)
