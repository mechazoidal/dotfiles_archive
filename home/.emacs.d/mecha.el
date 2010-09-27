(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agentda-files (list "~/Dropbox/Org/home.org" 
                              "~/Dropbox/Org/projects.org"))

;; FIXME: not sure how to add this to emacs load path, since this
;; is a MacPorts-ism
(setq-default ispell-program-name "/opt/local/bin/aspell")

;; look-n-feel
(set-face-attribute 'default nil :font "Inconsolata-dz-13")
(color-theme-blackboard)
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 155))
