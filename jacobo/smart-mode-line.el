(require 'smart-mode-line)

(sml/setup)
(sml/apply-theme 'powerline)

(setq sml/shorten-modes t)
(setq sml/shorten-directory t)
(setq sml/name-width 40)
(setq sml/mode-width 'full)

(setq rm-blacklist '(" GitGutter" " Gradle" " Grails" " company" " yas"
		     " Helm" " MRev" " Smrt"))

(provide 'jacobo/smart-mode-line)
