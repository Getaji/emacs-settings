(defun before-save-hooks ()
  (untabify (point-min) (point-max)))
(add-hook 'before-save-hook 'before-save-hooks)
