;; miscellaneous modes
(global-font-lock-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(show-paren-mode 1)

;; answer questions with y or n
(fset 'yes-or-no-p 'y-or-n-p)


;;ido-mode
(ido-mode 1)
(ido-everywhere 1)
(setq ido-enable-flex-matching t)
(setq ido-case-fold t)
(setq ido-auto-merge-work-directories-length -1) ;; disable auto-merge
(setq ido-create-new-buffer 'always)

(transient-mark-mode 1)
(delete-selection-mode 1)

(provide 'load-custom-modes)
;;end of load-custom-modes.el
