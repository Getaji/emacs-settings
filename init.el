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
(use-package hlinum
  :config
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(custom-safe-themes (quote ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
   '(global-linum-mode t)
   '(smooth-scroll/vscroll-step-size 1))
  (hlinum-activate)
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(linum-highlight-face ((t (:foreground "white"
                               :background "black"))))))

;; scroll
(use-package smooth-scroll
  :config
  (smooth-scroll-mode t))


(use-package init-loader
  :config
  (init-loader-load "~/.emacs.d/inits")
  (setq init-loader-show-log-after-init t))
