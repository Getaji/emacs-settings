(use-package recentf-ext
  :bind (("C-x C-r" . recentf-open-files))
  :config
  (setq inhibit-startup-message t)
  (setq recentf-max-saved-items 10)
  (setq recentf-max-menu-items 10))
