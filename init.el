;a

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(require 'use-package)

(use-package init-loader
  :config
  (init-loader-load "~/.emacs.d/inits")
  (setq init-loader-show-log-after-init t))
