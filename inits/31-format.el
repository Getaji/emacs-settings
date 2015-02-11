(defun after-save-hooks ()
  (untabify (point-min) (point-max)))
(add-hook 'after-save-hook 'after-save-hooks)
