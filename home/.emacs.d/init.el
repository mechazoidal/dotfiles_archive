(require 'package)
(add-to-list 'package-archives
                          '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Autoload packages
(when (not package-archive-contents)
    (package-refresh-contents))

;; Add in your own as you wish:
;; starter-kit-bindings
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-ruby undo-tree full-ack yasnippet yasnippet-bundle)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
      (package-install p)))
