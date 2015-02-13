; hightlight-symbol
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

;; font
(set-face-attribute 'default nil
            :family "Consolas" ;; font
            :height 109)       ;; font size
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Arial"
            :height: 90))

;; color
(load-theme 'tangotango t)
(global-hl-line-mode 1)
(set-face-background hl-line-face "gray13")
(set-cursor-color "orange")
