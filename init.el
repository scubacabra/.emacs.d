;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;
;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"

;;; Load path etc: get full path from ~/.emacs.d/ 
;;; save it to var dotfiles-dir for use in all other files loaded from here.  
;;; nicely done! add it to load-path list

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;;; load custom modes I like
(require 'load-custom-modes)

;;; load up my cust file to load up everything else
(require 'jacobo)

(provide 'init)
;;; init.el ends here