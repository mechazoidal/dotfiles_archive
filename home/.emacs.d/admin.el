(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

(global-set-key (kbd "<f2>") 'org-agenda)

(setq org-log-done t)

(setq org-agentda-files (list "/Users/admin/Documents/org/notes_2010.org"
                              "/Users/admin/Documents/org/depot_central.org"
                              "/Users/admin/Documents/org/refile.org"
                              "/Users/admin/Documents/org/ub.org"
                              "/Users/admin/Documents/org/yhr.org"))
;; FIXME: not sure how to add this path to emacs load path, since this
;; is a MacPorts-ism
(setq-default ispell-program-name "/opt/local/bin/aspell")

;; Vimpulse setup
;; FIXME: not sure if this is the right way: unlike Vim the first j will be captured
;; instead of echoed.
;; (vimpulse-imap (kbd "jj") vimpulse-exit-insert-state)

;; look-n-feel
(set-face-attribute 'default nil :font "Inconsolata-dz-13")
(color-theme-blackboard)
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 190))
