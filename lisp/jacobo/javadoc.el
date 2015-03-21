(require 'javadoc-lookup)

(define-key global-map (kbd "C-c jd") 'javadoc-lookup)
(javadoc-add-roots "/Users/djmijares/dev/worldwind/doc")
(define-key global-map (kbd "C-c ji") 'add-java-import)
(provide 'jacobo/javadoc)
