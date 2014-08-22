;;;;;;;;;;;;;;;;;;
;;Web-mode Setup;;
;;;;;;;;;;;;;;;;;;

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tmpl\\'" . web-mode))

(setq web-mode-engines-alist
      '(("django"    . "\\.tmpl\\'"))
)

(setq web-mode-ac-sources-alist
  '(("css" . (ac-source-css-property)))
)