; Package ======================================================================
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(add-to-list 'load-path "%APPDATA%/.emacs.d/emacs-async")
(add-to-list 'load-path "%APPDATA%/.emacs.d/helm")


(require 'use-package)

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


; Cask

; auto-complete =============================================================
(use-package auto-complete
  :config
  (global-auto-complete-mode t))
(use-package auto-complete-config
  :config
  (ac-config-default))

; View config===================================================================
;; hlinum

;; scroll
(use-package smooth-scroll
  :config
  (smooth-scroll-mode t))


(use-package init-loader
  :config
  (init-loader-load "~/.emacs.d/inits")
  (setq init-loader-show-log-after-init t))
