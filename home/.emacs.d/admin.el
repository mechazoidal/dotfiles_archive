;; FIXME: not sure how to add this path to emacs load path, since this
;; is a MacPorts-ism
(setq-default ispell-program-name "/opt/local/bin/aspell")

;; use C-c C-m / C-x C-m instead of M-x
;; WARNING: these will not work in org-mode docs
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; use C-w for killing words
;(global-set-key "\C-w" 'backward-kill-word)
;(global-set-key "\C-x\C-k" 'kill-region)
;(global-set-key "\C-c\C-k" 'kill-region)

;; RVM integration
;;(require 'rvm)
;;(rvm-use-default) ;;use rvm's default ruby for the current session

;; full-ack setup
(setq ack-executable (executable-find "/opt/local/bin/ack"))

;; look-n-feel
(set-face-attribute 'default nil :font "Inconsolata-dz-13")
;; (color-theme-blackboard)
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 190))

;; (add-to-list 'load-path "~/.emacs.d/evil")
;; (require 'evil)  
;; (evil-mode 1)

;; Ace-jump-mode
;;(add-to-list 'load-path "which-folder-ace-jump-mode-file-in/")
;; (require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; Enable emacsclient
;; (Emacs.app: /Applications/Emacs.app/Contents/MacOS/bin/emacsclient)
(server-start)
;; Enable org-protocols
(require 'org-protocol)

;; Capture templates for: TODO tasks, Notes, appointments, phone calls, and org-protocol
(setq org-capture-templates
            (quote (("t" "todo" entry (file "~/Dropbox/org/refile.org")
                                    "* TODO %?\n%U\n%a\n" :immediate-finish t)
                    ("j" "Journal" entry (file+datetree "~/Dropbox/org/diary.org")
                                    "* %?\n%U\n" :immediate-finish t)
                    ("w" "org-protocol" entry (file "~/Dropbox/org/refile.org")
                                    "* TODO Review %i\n%U\n" :immediate-finish t)
                    ("p" "Phone call" entry (file "~/Dropbox/org/refile.org")
                                    "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
                    ("u" "URL" entry (file "~/Dropbox/org/refile.org")
                                    "* %c \"%i\"" :immediate-finish t))))
