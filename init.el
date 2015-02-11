; Package ======================================================================
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(require 'use-package)

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
