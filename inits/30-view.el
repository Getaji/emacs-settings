; hightlight-symbol
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

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
