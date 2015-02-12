(add-to-list 'load-path "%APPDATA%/.emacs.d/emacs-async")
(add-to-list 'load-path "%APPDATA%/.emacs.d/helm")
(add-to-list 'load-path "%APPDATA%/.emacs.d/elisps")

(use-package package
  :config
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list 'package-archives '
               ("marmalade" . "http://marmalade-repo.org/packages/"))
  (when (< emacs-major-version 24)
    (add-to-list 'package-archives
                 '("gnu" . "http://elpa.gnu.org/packages/")))
  (package-initialize))
