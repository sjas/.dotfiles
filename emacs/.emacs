;; sjas emacs configuration file

;;starting layout
(menu-bar-mode 0)
(tool-bar-mode 0)
;;fullscreen
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(require 'package)
(add-to-list 'package-archives 
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives 
             '("elpa" . "http://tromey.com/elpa/"))
(package-initialize)

(require 'evil)
(evil-mode 1)
;(load "~/.emacs.d/ess/lisp/ess-site")
;(require 'ess-site)

(defun plist-to-alist (the-plist)
    (defun get-tuple-from-plist (the-plist)
          (when the-plist
                  (cons (car the-plist) (cadr the-plist))))
    
      (let ((alist '()))
            (while the-plist
                         (add-to-list 'alist (get-tuple-from-plist the-plist))
                               (setq the-plist (cddr the-plist)))
              alist))

(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-monokai)

;(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
