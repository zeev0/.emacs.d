;;
;; init.el
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)

(push '("marmalade" . "http://marmalade-repo.org/packages/")
              package-archives)
(push '("melpa" . "http://melpa.milkbox.net/packages/")
              package-archives)

(add-to-list 'load-path (concat user-emacs-directory "config"))

(package-initialize)

; packages I use
(setq package-list '(use-package auto-complete helm web-mode 
                      js2-mode magit evil-magit evil-org flyspell
                      evil-leader evil spacemacs-theme zenburn-theme solarized-theme neotree
                      dired-hacks-utils dired-ranger))

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
    (unless (package-installed-p package)
          (package-install package)))

(require 'use-package)

(require 'linum-off)
(require 'tls)
(require 'magit)
(require 'evil-magit)
(require 'js2-mode)

(require 'my-evil)
(require 'my-evil-leader)
(require 'my-core)
(require 'my-neotree)
(require 'my-ibuffer)
(require 'my-dired)
;(require 'my-erc)
(require 'my-orgmode)
(require 'my-skewer)
(require 'my-web-mode)
(require 'my-auto-complete)

(require 'tramp)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "20e359ef1818a838aff271a72f0f689f5551a27704bf1c9469a5c2657b417e6c" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(js2-strict-missing-semi-warning t)
 '(web-mode-enable-auto-closing t)
 '(web-mode-enable-auto-quoting nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-error ((t nil)))
 '(js2-warning ((t nil)))
 '(show-paren-match ((t (:background "#292b2e" :foreground "lawn green" :weight extra-bold)))))
