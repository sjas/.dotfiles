;; sjas emacs configuration file

(setq package-archives
      '(
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.milkbox.net/packages/")
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("elpa" . "http://tromey.com/elpa/")
        ))
(package-initialize)
; list the packages you want
             ;cider
             ;clojure-mode
             ;clj-refactor
(setq package-list '(
             color-theme
             evil-indent-textobject
             evil-leader
             evil-matchit
             evil-nerd-commenter
             evil-numbers
             evil-paredit
             evil
	     markdown-mode
	     markdown-mode+
	     markdown-toc
             powerline-evil
             ac-slime
             slime
             slime-annot
             slime-fuzzy
             slime-repl
             slime-scratch
             auto-complete
             key-chord
             paredit
             parscope
             rainbow-delimiters
             rainbow-mode
             use-package
             vimrc-mode 
             ))

(when (not package-archive-contents)
  (package-refresh-contents))
; install the missing packages
(dolist (package package-list)
  (when (not (package-installed-p package))
    (package-install package)))
(require 'package)


(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.post\\'" . markdown-mode))

;(require 'helm)
;(helm 1)

(require 'evil)
(evil-mode 1)


(defalias 'yes-or-no-p 'y-or-n-p)

;; starting layout
(menu-bar-mode 0)
(tool-bar-mode 0)
(custom-set-variables
  '(initial-frame-alist (quote ((fullscreen . maximized)))))

(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "jk" 'evil-normal-state)
;(key-chord-define-global "kfq" 'evil-normal-state)

;(require 'flymake-haskell-multi)
;(add-hook 'haskell-mode-hook 'flymake-haskell-multi-load)
;;(require 'haskell-decl-scan)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
;(require 'haskell-doc)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-doc)
;(require 'haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(require 'haskell-unicode-input-method)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-unicode-input-method)


(global-hl-line-mode 1)
(line-number-mode 1)
(column-number-mode 1)

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
;(add-to-list 'alist (get-tuple-from-plist the-plist))
;(setq the-plist (cddr the-plist)))
;alist))

;(defun helm-clojure-headlines ()
  ;"Display headlines for the current Clojure file."
  ;(interactive)
  ;(helm-mode t)
  ;(helm :sources '(((name . "Clojure Headlines")
                    ;(volatile)
                    ;(headline "^[;(]")))))
;(defun helm-haskell-headlines ()
  ;"Display headlines for the current Haskell file."
  ;(interactive)
  ;(setq haskell-mode t)
  ;(helm :sources '(((name . "Haskell Headlines")
                    ;(volatile)
                    ;(headline "^[a-z]+.+::")))))

(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

;; make own keys work always
(define-key my-keys-minor-mode-map (kbd "C-i") 'some-function)
(define-key my-keys-minor-mode-map (kbd "C-;") 'evilnc-comment-or-uncomment-lines)
;(define-key my-keys-minor-mode-map (kbd "C-c C-;") 'helm-haskell-headlines)
;(define-key my-keys-minor-mode-map (kbd "C-c ;") 'helm-clojure-headlines)
(define-key my-keys-minor-mode-map (kbd "M-j") 'next-buffer)
(define-key my-keys-minor-mode-map (kbd "M-k") 'previous-buffer)
(define-key my-keys-minor-mode-map (kbd "M-l")
                (lambda () (interactive)
                  (progn
                    (buffer-menu)
                    (other-window))))
(define-key my-keys-minor-mode-map (kbd "M-;") 'other-window)
;(define-key my-keys-minor-mode-map (kbd "C-c j") 'flymake-goto-next-error)
;(define-key my-keys-minor-mode-map (kbd "C-c k") 'flymake-goto-prev-error)
;(define-key my-keys-minor-mode-map (kbd "C-c h") 'flymake-display-err-menu-for-current-line)
(define-key my-keys-minor-mode-map (kbd "C-c C-v") 
                (lambda () (interactive) 
                  (progn
                    (find-file "~/.dotfiles/vim/.vimrc")
                    (vimrc-mode))))
(define-key my-keys-minor-mode-map (kbd "C-c C-e") 
                (lambda () (interactive) 
                  (find-file "~/.dotfiles/emacs/.emacs")))
(define-key my-keys-minor-mode-map (kbd "C-c C-g") 
                (lambda () (interactive) 
                  (find-file "~/.dotfiles/git/.gitconfig")))
;; deployment; to 'reload' changes in .emacs, goto changed expression and use C-x C-e
(define-key my-keys-minor-mode-map (kbd "C-c C-s") 
                (lambda () (interactive) 
                  (shell-command (format "bash -c %s" (shell-quote-argument "~/.dotfiles/dotfiles-setup-linux.sh")))))
;(global-set-key (kbd "C-c ;") 'package-list-packages)
;(global-set-key (kbd "C-c C-s") (lambda () (interactive) (find-file "")))
; moved so clojure fn headers works
;(global-set-key (kbd "C-c ;") 'package-list-packages)
(define-minor-mode my-keys-minor-mode
                     "A minor mode so that my key settings override annoying major modes."
                       t " my-keys" 'my-keys-minor-mode-map)
(my-keys-minor-mode 1)
;; disable for minibuffer
(defun my-minibuffer-setup-hook ()
    (my-keys-minor-mode 0))
(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)
;; make sure it works with (minor?) modes later loaded
(defadvice load (after give-my-keybindings-priority)
           "Try to ensure that my keybindings always have priority."
           (if (not (eq (car (car minor-mode-map-alist)) 'my-keys-minor-mode))
             (let ((mykeys (assq 'my-keys-minor-mode minor-mode-map-alist)))
               (assq-delete-all 'my-keys-minor-mode minor-mode-map-alist)
               (add-to-list 'minor-mode-map-alist mykeys))))
(ad-activate 'load)
