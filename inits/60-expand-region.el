(use-package expand-region
  :bind (("C-@" . er/expand-region)
         ("C-M-@" . er/contract-region))
  :config
  (transient-mark-mode t))
;; transient-mark-modeが nilでは動作しませんので注意
