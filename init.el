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

;; setup path to .emacs.d
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; setup path to dependencies
(setq lisp (expand-file-name "lisp" dotfiles-dir))
(setq defuns-dir (expand-file-name "defuns" lisp))
(setq jacobo (expand-file-name "jacobo" lisp))

;; set up load path
(add-to-list 'load-path lisp)
(add-to-list 'load-path jacobo)

;; add defuns in external library in
(dolist (file (directory-files defuns-dir t "\\w+"))
  (when (file-regular-p file)
    (load file)))

;; write backup files to own directory
(setq backup-directory-alist `(("." . ,(expand-file-name 
					"backups" dotfiles-dir))))

;; write autosaves to their own directory
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "backups" dotfiles-dir) t)))

;; custom-set-variables to their own file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(setq ns-use-srgb-colorspace nil)

(put 'narrow-to-region 'disabled nil)

(server-start)

;; load up my cust file to load up everything else
(require 'jacobo)

(provide 'init)
;;; init.el ends here
