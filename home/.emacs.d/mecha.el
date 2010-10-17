(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(global-set-key (kbd "<f2>") 'org-agenda)

(setq org-agenda-files (list "/Users/mecha/Dropbox/Org/home.org" 
                              "/Users/mecha/Dropbox/Org/games.org"
                              "/Users/mecha/Dropbox/Org/projects.org"))

;; FIXME: not sure how to add this to emacs load path, since this
;; is a MacPorts-ism
(setq-default ispell-program-name "/opt/local/bin/aspell")

;; Vimpulse setup
;; FIXME: not sure if this is the right way: unlike Vim the first j will be captured
;; instead of echoed.
;; (vimpulse-imap (kbd "jj") vimpulse-exit-insert-state)

;; full-ack setup
(setq ack-executable (executable-find "/opt/local/bin/ack"))

;; smart-tab setup
(require 'smart-tab)
(global-smart-tab-mode 1)

;; look-n-feel
(set-face-attribute 'default nil :font "Inconsolata-dz-13")
(color-theme-blackboard)
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 155))
