; Package ======================================================================
(require 'package)

; package-archives‚É’Ç‰Á
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

; ‰Šú‰»
(package-initialize)

; melpa.el(“®‚©‚È‚¢)
; (require 'melpa)

; helm
(add-to-list 'load-path "%APPDATA%/.emacs.d/emacs-async")
(add-to-list 'load-path "%APPDATA%/.emacs.d/helm")
(require 'helm-config)

; Cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

; auto-complete =============================================================
(add-hook 'emacs-lisp-mode-hook '(lambda ()
                                   (require 'auto-complete)
                                   (auto-complete-mode t)))
(add-hook 'scheme-other-window '(lambda ()
				  (require 'auto-complete)
				  (auto-complete-mode t)))
(require 'auto-complete-config)
(ac-config-default)

; View config===================================================================
;; font
(set-face-attribute 'default nil
            :family "Consolas" ;; font
            :height 110)       ;; font size
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Meiryo"
	    :height: 90))      ;; font

;; color
(load-theme 'tangotango t)

;; hlinum
(require 'hlinum)
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
 '(linum-highlight-face ((t (:foreground "white" :background "black")))))

;; scroll
(require 'smooth-scroll)
(smooth-scroll-mode t)

;; Expand region ==============================================================
(require 'expand-region)
(global-set-key (kbd "C-@") 'er/expand-region)
(global-set-key (kbd "C-M-@") 'er/contract-region) ;; ƒŠ[ƒWƒ‡ƒ“‚ð‹·‚ß‚é

;; transient-mark-mode‚ª nil‚Å‚Í“®ì‚µ‚Ü‚¹‚ñ‚Ì‚Å’ˆÓ
(transient-mark-mode t)

;; Rainbow Delimiters =========================================================
(require 'rainbow-delimiters)
(add-hook 'scheme-mode-hook 'rainbow-delimiters-mode)



(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
