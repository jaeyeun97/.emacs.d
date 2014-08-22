;;;;;;;;;;;;;;;
;;Theme Setup;;
;;;;;;;;;;;;;;;

(add-to-list 'load-path' "~/.emacs.d/themes/")

(custom-set-variables
 
 '(ansi-term-color-vector
   [unspecified "#282a2e" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#e0e0e0"])
 '(custom-enabled-themes (quote (tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("1157a4055504672be1df1232bed784ba575c60ab44d8e6c7b3800ae76b42f8bd" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" default)
   )
  )
 '(custom-theme-directory "~/.emacs.d/themes/")
)
(custom-set-faces
      '(default ((t (:height 155 :family "Inconsolata"))))
)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-splash-screen t)
