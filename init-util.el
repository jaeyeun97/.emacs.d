(add-to-list 'load-path' "~/.emacs.d/utils/")

;;;;;;;;;;;;;;
;; Set Path ;;
;;;;;;;;;;;;;;

(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(load-file "~/.emacs.d/utils/eshell-path-env.el")
