
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (seoul256)))
 '(custom-safe-themes
   (quote
    ("2296db63b1de14e65390d0ded8e2b5df4b9e4186f3251af56807026542a58201" default)))
 '(evil-mode t)
 '(ido-mode (quote both) nil (ido))
 '(menu-bar-mode nil)
 '(nyan-mode t)
 '(nyan-wavy-trail t)
 '(org-agenda-files (quote ("~/Dropbox/org/gtd.org" "~/Dropbox/org/todo.org")))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages
   (quote
    (org-preview-html org-cliplink ## smartparens org-attach-screenshot org-gcal org-download auto-complete smex powerline org-bullets htmlize magit evil evil-commentary evil-leader evil-matchit evil-numbers evil-quickscope evil-surround evil-visualstar nyan-mode seoul256-theme org)))
 '(ring-bell-function (quote ignore))
 '(server-mode t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 181 :width normal :foundry "PfEd" :family "DejaVu Sans Mono")))))
(put 'dired-find-alternate-file 'disabled nil)
;; Evil Settings
(setq evil-shift-width 2)
;; Load Evil
(require 'evil)
(evil-mode 1)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)
(require 'org-bullets)
(add-hook 'org-mode-hook 'org-bullets-mode)

; (global-set-key (kbpd "M-x") 'smex)
; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
; (ac-config-default)

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))

(setq org-directory "~/Dropbox/org")
(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(d)" "|" "DONE(x)")))
(setq org-todo-keyword-faces
      '(("DOING" . "yellow")))

; Org Capture Templates
(setq org-capture-templates
      '(("t" "Task" entry (file+headline "~/Dropbox/org/gtd.org" "Tasks")
         "* TODO %i%?\n  - %l")
        ("d" "Daily Review" entry (file+olp+datetree "~/Dropbox/org/review.org" "Daily")
        (file "~/Dropbox/org/templates/daily.org"))
        ("w" "Weekly Review" entry (file+olp+datetree "~/Dropbox/org/review.org" "Weekly")
        (file "~/Dropbox/org/templates/Weekly.org"))
        ("m" "Monthly Review" entry (file+olp+datetree "~/Dropbox/org/review.org" "Monthly")
        (file "~/Dropbox/org/templates/Monthly.org"))
        ))


        ;; ("a" "Area" entry (file+headline "~/Dropbox/org/gtd.org" "Areas")
        ;;  (file "~/Dropbox/org/templates/newareatemplate.org"))
        ;; ("r" "Resources" entry (file+headline "~/Dropbox/org/gtd.org" "Resources")
	;;   "* Resource %?\n %i\n %a")
        ;; ("g" "Goal" entry (file+headline "~/Dropbox/org/gtd.org" "Current Goals")
        ;;  (file "~/org/templates/newgoaltemplate.org"))

;; Set to the name of the file where new notes will be stored
(setq org-mobile-inbox-for-pull "~/Dropbox/org/flagged.org")
;; Set to <your Dropbox root directory>/MobileOrg.
(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
;; show images inline
(setq org-startup-with-inline-images t)
;; binding for pasting links
(global-set-key (kbd "C-x p i") 'org-cliplink)

; store when a TODO was marked DONE
(setq org-log-done 'time)
