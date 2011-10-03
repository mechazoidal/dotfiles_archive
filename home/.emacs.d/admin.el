;; FIXME: not sure how to add this path to emacs load path, since this
;; is a MacPorts-ism
(setq-default ispell-program-name "/opt/local/bin/aspell")

;; full-ack setup
(setq ack-executable (executable-find "/opt/local/bin/ack"))

;; look-n-feel
(set-face-attribute 'default nil :font "Inconsolata-dz-13")
;; (color-theme-blackboard)
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 190))

