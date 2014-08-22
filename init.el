;;.emacs.d/init.el
;;Author: Charlie Jae Yeun Yoon

(load-file "~/.emacs.d/init-packages.el")

(mapcar
 (lambda (f) (load-file f))
 (file-expand-wildcards "~/.emacs.d/init-*.el")
)
