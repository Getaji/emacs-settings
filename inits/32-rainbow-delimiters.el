(require 'cl-lib)
(require 'color)
(use-package rainbow-delimiters
  :config
  (add-hook 'scheme-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
  (cl-loop
   for index from 1 to rainbow-delimiters-max-face-count
   do
   (let ((face (intern (format "rainbow-delimiters-depth-%d-face"
                               index))))
     (cl-callf color-saturate-name (face-foreground face) 30))))
