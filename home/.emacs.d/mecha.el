;;(require 'org-install)
;;(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;;(define-key global-map "\C-cl" 'org-store-link)
;;(define-key global-map "\C-ca" 'org-agenda)
;;(setq org-log-done t)

;;(global-set-key (kbd "<f2>") 'org-agenda)

;;(setq org-agenda-files (list "~/Dropbox/Org/home.org" 
;;                              "~/Dropbox/Org/games.org"
;;                              "~/Dropbox/Org/projects.org"))

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)  
(evil-mode 1)

;; FIXME: not sure how to add this to emacs load path, since this
;; is a MacPorts-ism
(if (eq system-type 'darwin)
(setq-default ispell-program-name "/opt/local/bin/aspell"))
(if (eq system-type 'gnu/linux)
(setq flyspell-issue-welcome-flag nil)) ;;fix for Ubuntu 10.10


;; full-ack setup
(if (eq system-type 'darwin)
(setq ack-executable (executable-find "/opt/local/bin/ack")))

;; fix buffer switching
;; (iswitchb-mode 1)
;; (setq iswitchb-buffer-ignore '("^\\*"))
;; (setq iswitchb-default-method 'samewindow)

;; RVM integration
(require 'rvm)
(rvm-use-default) ;;use rvm's default ruby for the current session

;; look-n-feel
(set-face-attribute 'default nil :font "Inconsolata-dz-13")
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 155))
