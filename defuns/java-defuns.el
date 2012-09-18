(defun javadoc-method-comment ()
  ;; Insert a javadoc method comment at the cursor position
  (interactive)
  (insert
"/**
 *
 *
 *
 *
 * @param
 * @return
 * @exeption
 * @see
 */
")/
  (previous-line 8)
  (end-of-line))
