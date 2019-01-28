(set-background-color "#4b4b4b") ; prevent the white flash
(setq inhibit-startup-message t) ; hide the propganda


(dired "~/code/strata/hydra/")
(find-file "~/.emacs.d/init.el")
(find-file "~/Dropbox/org/myinit.org")
(find-file "~/Dropbox/org/idx.org")
;; (setq initial-buffer-choice "~/Dropbox/org/idx.org")

;; load package manager module
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
'("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))
(setq use-package-always-ensure t)

(require 'org)

;; (use-package evil
;;     :ensure t
;;     :init
;;     (setq evil-want-keybinding nil)
;;     :config
;;     (evil-mode 1))


(org-babel-load-file (expand-file-name "~/Dropbox/org/myinit.org"))
(org-babel-load-file (expand-file-name "~/Dropbox/org/secrets.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-log-arguments (quote ("--graph" "--color" "--decorate" "-n256")))
 '(org-agenda-custom-commands
   (quote
    (("L" "Timeline"
      ((agenda ""
               ((org-agenda-span 7)
                (org-agenda-prefix-format
                 (quote
                  ((agenda . " %1c %?-12t% s")))))))
      nil)
     ("d" "Day view: agenda and all TODOs"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     ("n" "Agenda and all TODOs"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     ("u" "Unscheduled TODOs"
      ((todo ""
             ((org-agenda-overriding-header "
Unscheduled TODO")
              (org-agenda-skip-function
               (quote
                (org-agenda-skip-entry-if
                 (quote timestamp)
                 (quote todo)
                 (quote
                  ("DONE"))))))))
      nil))) t)
 '(org-archive-location "~/Dropbox/org/idx.org::* Archives")
 '(package-selected-packages
   (quote
    (org-cliplink highlight-indentation yaml-mode org-download magi exec-path-from-shell workgroups kubernetes-evil kubernetes terraform-mode docker powerline-evil autopair discover-my-major discover company-tern tern yasnippet-snippets smartparens beacon rainbow-delimiters evil-collection all-the-icons neotree emacs-neotree expand-region js2-refactor js2-mode counsel evil-org evil-visualstar evil-surround org-gcal org-bullets linum-relative nlinum-relative evil-numbers evil-magit evil-matchit evil-commentary magit company auto-complete seoul256-theme which-key use-package try)))
 '(undo-tree-auto-save-history t)
 '(undo-tree-history-directory-alist (quote (("" . "~/.emacs.d/undo")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.0))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.0))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.0))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))
