(require 'powerline)
(require 'smart-mode-line)
(require 'nyan-mode)

(setq powerline-default-separator 'slant)
(sml/setup)
(sml/apply-theme 'powerline)

(setq sml/shorten-modes t)
(setq sml/shorten-directory t)
(setq sml/name-width 15)
(setq sml/mode-width 15)
(setq sml/position-percentage-format "")
(setq sml/use-projectile-p 'before-prefixes)

(setq rm-blacklist '(" GitGutter" " Gradle" " Grails" " company" " yas"
		     " Helm" " MRev" " Smrt" " wb"))

(setq nyan-bar-length 20)
(provide 'jacobo/smart-mode-line)
