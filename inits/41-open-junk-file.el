(use-package open-junk-file
  :commands open-junk-file
  :bind (("C-x j" . open-junk-file))
  :config
  (setq open-junk-file-format "~/Documents/junk/%Y-%m-%d.org"))
(display "Hello")
