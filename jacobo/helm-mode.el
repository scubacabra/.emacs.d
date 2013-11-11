(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c sk") 'helm-show-kill-ring)
(global-set-key (kbd "C-c gf") 'helm-ls-git-ls)
(global-set-key (kbd "C-x f") 'helm-find-files)
(helm-mode 1)
(setq enable-recursive-minibuffers t)

(provide 'jacobo/helm-mode)
