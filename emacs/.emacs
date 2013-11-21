

;; sjas emacs configuration file


(require 'package)
(setq package-archives
      '(
        ("elpa" . "http://tromey.com/elpa/")
        ("melpa" . "http://melpa.milkbox.net/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")
        ))
(package-initialize)
(global-set-key (kbd "C-c ;") 'package-list-packages)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.post\\'" . markdown-mode))

(global-set-key (kbd "M-j") 'next-buffer)
(global-set-key (kbd "M-k") 'previous-buffer)
(global-set-key (kbd "C-;") 'other-window)
(global-set-key (kbd "C-c j") 'flymake-goto-next-error)
(global-set-key (kbd "C-c k") 'flymake-goto-prev-error)
(global-set-key (kbd "C-c h") 'flymake-display-err-menu-for-current-line)

(require 'evil)
(evil-mode 1)

(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(defalias 'yes-or-no-p 'y-or-n-p)

;; starting layout
(menu-bar-mode 0)
(tool-bar-mode 0)
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(require 'ido)
(ido-mode 1)

(require 'hlinum)
(setq linum-mode t)

(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "jk" 'evil-normal-state)

(require 'flymake-haskell-multi)
(add-hook 'haskell-mode-hook 'flymake-haskell-multi-load)
;(require 'haskell-decl-scan)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
(require 'haskell-doc)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc)
(require 'haskell-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(require 'haskell-unicode-input-method)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-unicode-input-method)


;(load "~/.emacs.d/ess/lisp/ess-site")
;(require 'ess-site)

;;; set from within emacs via 'M-x customize-themes'
(require 'color-theme)
(setq color-theme-is-global t)
(load-theme 'manoj-dark)
;(color-theme-monokai)

;mode-specific scratch buffers
;(autoload 'scratch "scratch" nil t)

;; dirty fix for having AutoComplete everywhere
;(define-globalized-minor-mode real-global-auto-complete-mode
  ;auto-complete-mode (lambda ()
                       ;(if (not (minibufferp (current-buffer)))
                         ;(auto-complete-mode 1))
                       ;)
;(real-global-auto-complete-mode t)

; no tabs!!!
;(add-hook 'after-change-major-mode-hook 
          ;'(lambda () 
             ;(setq-default indent-tabs-mode nil)
             ;(setq c-basic-indent 4)
             ;(setq tab-stop-list (number-sequence 4 200 4))
             ;(setq tab-width 4)))

;;; FIX FOR OLD COLOR THEMES
;(defun plist-to-alist (the-plist)
    ;(defun get-tuple-from-plist (the-plist)
          ;(when the-plist
                  ;(cons (car the-plist) (cadr the-plist))))
      ;(let ((alist '()))
            ;(while the-plist
                         ;(add-to-list 'alist (get-tuple-from-plist the-plist))
                               ;(setq the-plist (cddr the-plist)))
              ;alist))
