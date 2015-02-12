(use-package org
  :config
  (setq org-directory "~/Documents/junk")
  (setq org-agenda-files (list org-directory))
  (setq org-src-fontify-natively t)
  (setq org-todo-keywords '((type "TODO" "FREEZE" "DOING" "CANCELLED" "DONE")))
  (setq org-todo-keyword-faces
        '(("TODO" :foreground "red" :weight bold)
          ("FREEZE" :foreground "skyblue" :weight bold)
          ("DOING" :foreground "orange" :weight bold)
          ("CANCELLED" :foreground "cyan" :weight bold))))
