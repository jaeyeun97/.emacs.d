;;;;;;;;;;;;;;;;
;; Elpy Setup ;;
;;;;;;;;;;;;;;;;

(elpy-enable)

(define-key global-map (kbd "C-c o") 'iedit-mode)
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
(elpy-use-ipython)
(setq elpy-rpc-backend "rope")
(setq elpy-rpc-python-command "/usr/local/bin/pypy")
(setq flymake-gui-warnings-enabled nil)
(setq initial-buffer-choice t)
(setq python-check-command "/usr/local/share/pypy/flake8")
(setq python-shell-exec-path (quote ("/usr/local/bin/pypy")))
(setq python-shell-interpreter "/usr/local/bin/pypy")
