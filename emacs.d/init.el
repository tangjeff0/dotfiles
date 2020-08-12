(setq inhibit-startup-message t)

(setq vc-follow-symlinks t) ;; cause I use stow.sh

; (find-file "~/.emacs.d/init.el")
; (find-file "~/.emacs.d/jeff.org")

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package-ensure)
(setq use-package-always-ensure t)

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/jeff.org"))

(find-file "~/.emacs.d/init.el")
(find-file "~/.emacs.d/jeff.org")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-pull-arguments nil)
 '(package-selected-packages
   (quote
    (clj-refactor ace-window avy paredit-everywhere paredit-mode highlight-parentheses clj-kondo smartparens ibuffer-projectile linum-relative spacemacs-theme which-key browse-kill-ring expand-region hydra counsel navigation org-tempo seoul256-theme use-package dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
