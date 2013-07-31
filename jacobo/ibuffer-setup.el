(require 'ibuffer)
;; ;;(setq ibuffer-show-empty-filter-groups nil)
(setq ibuffer-saved-filter-groups
      (quote (("default"
	       ("dired" (mode . dired-mode))
	       ("emacs" (or
			 (name . "^\\*scratch\\*$")
			 (name . "^\\*Messages\\*$")))
	       ("gradle" (or
			  (name . "\\.gradle$")))
	       ("groovy/java" (or
			       (name . "\\.java$")
			       (mode . groovy-mode)
			       (name . "\\.groovy$")))
	       ("emacs-config" (or (filename . ".emacs.d")
				   (mode . emacs-lisp-mode)
				   (filename . "emacs-config")))
	       ("Org" (or (mode . org-mode)
			  (filename . "OrgMode")))
	       ("Magit" (name . "\*magit"))
	       ("Programming" ;; prog stuff not already in MyProjectX
		(or
		 (mode . c-mode)
		 (mode . perl-mode)
		 (mode . python-mode)
		 ;; etc
		 )) 
	       ("Help" (or (name . "\*Help\*")
			   (name . "\*Apropos\*")
			   (name . "\*info\*")))))))


(add-hook 'ibuffer-mode-hook
	  (lambda ()
	    (ibuffer-switch-to-saved-filter-groups "default")))

(add-hook 'ibuffer-hook
	  (lambda ()
	    (ibuffer-vc-set-filter-groups-by-vc-root)
	    (unless (eq ibuffer-sorting-mode 'alphabetic)
	      (ibuffer-do-sort-by-alphabetic))))

(provide 'jacobo/ibuffer-setup)
