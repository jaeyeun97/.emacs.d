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

;;;;;;;;;;;;;;;;;
;;Smooth Scroll;;
;;;;;;;;;;;;;;;;;

(global-set-key [mouse-4] 'scroll-down)
(global-set-key [mouse-5] 'scroll-up)
(setq mouse-wheel-scroll-amount     '(1))
(setq mouse-wheel-progressive-speed nil)
(setq scroll-margin 1
      scroll-conservatively 0
      scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)
(setq-default scroll-up-aggressively 0.01
      scroll-down-aggressively 0.01)
(setq scroll-conservatively 10000)

;;;;;;;;;;;;;;;;
;; Unset Kill ;;
;;;;;;;;;;;;;;;;

(global-unset-key (kbd "C-x C-c"))

;;;;;;;;;;;;;;;;;;
;; Server Start ;;
;;;;;;;;;;;;;;;;;;

(server-start)
