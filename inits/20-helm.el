;(require 'helm-config)
;(require 'helm-mode)

;(require 'helm-descbinds)

(use-package helm
  :commands (helm-mini)
  :bind (("C-M-;" . helm-mini))
  :defer t
  :config
  )
(use-package helm-swoop
  :commands (helm-swoop)
  :defer t
  :config
  )
(use-package helm-migemo
  :defer t
  :config)
