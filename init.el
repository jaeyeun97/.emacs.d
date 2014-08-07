;;.emacs.d/init.el
;;Author: Charlie Jae Yeun Yoon

;;;;;;;;;;
;; Macs ;;
;;;;;;;;;;
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

(add-to-list 'load-path' "~/.emacs.d/utils/")
(add-to-list 'load-path' "~/.emacs.d/themes/")

;;;;;;;;;;;;;;;
;;Theme Setup;;
;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be carefu
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector
   [unspecified "#282a2e" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#e0e0e0"])
 '(custom-enabled-themes (quote (tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("1157a4055504672be1df1232bed784ba575c60ab44d8e6c7b3800ae76b42f8bd" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" default)))
 '(custom-theme-directory "~/.emacs.d/themes/"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t ( :height 155 :family "Inconsolata") )) )
 )
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;;;;;;;;;;;;;;;;;;;;
;;Line Number Setup;;
;;;;;;;;;;;;;;;;;;;;;

(require 'linum)
(global-linum-mode t)

;;;;;;;;;;;;;;;;;;;;
;; Ido Mode Setup ;;
;;;;;;;;;;;;;;;;;;;;

(require 'ido)
(ido-mode t)

;;;;;;;;;;;;;;
;; Set Path ;;
;;;;;;;;;;;;;;

(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(load-file "~/.emacs.d/utils/eshell-path-env.el")

;;;;;;;;;;;;;;;;;
;;Smooth Scroll;;
;;;;;;;;;;;;;;;;;

(setq scroll-margin 1
      scroll-conservatively 0
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)
(setq-default scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)
(setq scroll-conservatively 10000)

;;;;;;;;;;;;;;;;;
;;Package Setup;;
;;;;;;;;;;;;;;;;;

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("elpy" . "http://jorgenschaefer.github.io/packages/")
			)
)
(package-initialize)

;;;;;;;;;;;;;;;;
;; Elpy Setup ;;
;;;;;;;;;;;;;;;;

(elpy-enable)
(setq elpy-rpc-python-command "/usr/local/bin/python")
(setq elpy-rpc-backend "rope")
(define-key global-map (kbd "C-c o") 'iedit-mode)
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
(elpy-use-ipython)

(when (require 'flycheck nil t)
 (setq elpy-modules (delete 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode)
)

;;;;;;;;;;;;;;;;;;
;;Web-mode Setup;;
;;;;;;;;;;;;;;;;;;

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tmpl\\'" . web-mode))

(setq web-mode-engines-alist
      '(("django"    . "\\.tmpl\\'"))
)

(setq web-mode-ac-sources-alist
  '(("css" . (ac-source-css-property)))
)

;;;;;;;;;;;;;;;;
;; Unset Kill ;;
;;;;;;;;;;;;;;;;

(global-unset-key (kbd "C-x C-c"))

;;;;;;;;;;;;;;;;;;
;; Server Start ;;
;;;;;;;;;;;;;;;;;;

(server-start)
