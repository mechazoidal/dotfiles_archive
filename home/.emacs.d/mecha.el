(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(global-set-key (kbd "<f2>") 'org-agenda)

(setq org-agenda-files (list "~/Dropbox/Org/home.org" 
                              "~/Dropbox/Org/games.org"
                              "~/Dropbox/Org/projects.org"))

;; FIXME: not sure how to add this to emacs load path, since this
;; is a MacPorts-ism
(if (eq system-type 'darwin)
(setq-default ispell-program-name "/opt/local/bin/aspell"))
(if (eq system-type 'gnu/linux)
(setq flyspell-issue-welcome-flag nil)) ;;fix for Ubuntu 10.10

;; Vimpulse setup
;; FIXME: not sure if this is the right way: unlike Vim the first j will be captured
;; instead of echoed.
;; (vimpulse-imap (kbd "jj") vimpulse-exit-insert-state)

;; full-ack setup
(if (eq system-type 'darwin)
(setq ack-executable (executable-find "/opt/local/bin/ack")))

;; smart-tab setup
(require 'smart-tab)
(global-smart-tab-mode 1)

;; look-n-feel
(set-face-attribute 'default nil :font "Inconsolata-dz-13")
(color-theme-blackboard)
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 155))
