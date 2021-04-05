
;; Basic package setup.
(require 'package)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Exec-Path-From-Shell ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(use-package exec-path-from-shell
  :if (eq system-type 'darwin)
  :init
  (setq exec-path-from-shell-variables
        '("JULIA_HOME"
          "JULIA_NUM_THREADS"
	  "ZSH")
        exec-path-from-shell-arguments '("-l"))
  (exec-path-from-shell-initialize))


;;;;;;;;;;;;
;; direnv ;;
;;;;;;;;;;;;
(use-package direnv
  :config (direnv-mode))

;;
;; Navigation/completion.
(use-package counsel
  :custom
  ivy-use-virtual-buffers t
  ivy-count-format "(%d/%d) "
  :config
  (counsel-mode)
  :bind
  ("C-s" . swiper)
  ("C-r" . swiper-backward)
  ("C-x b" . counsel-ibuffer)
  ("C-x C-f" . counsel-find-file)
  ("C-c r g" . counsel-rg)
  :delight)

;; Projectile is for project management (finding files, etc.).
(use-package projectile
  :custom projectile-mode-line "Projectile"
  :config (projectile-mode)
  :bind-keymap ("C-c p" . projectile-command-map)
  :delight)

;; Show helpful keybinding popups.
(use-package which-key
  :custom which-key-idle-delay 0.5
  :config (which-key-mode)
  :delight)

;; Company is for autocompletion.
(use-package company
  :config
  (global-company-mode)
  :bind
  ("C-;" . company-complete)
  (:map company-active-map
        ("C-n" . company-select-next)
        ("C-p" . company-select-previous)
        ("TAB" . company-complete-common-or-cycle))
  :custom company-minimum-prefix-length 1
  :delight)
(use-package company-quickhelp
  :config (company-quickhelp-mode))

;;;;;;;;;;;;;
;; Linting ;;
;;;;;;;;;;;;;
(use-package flycheck
  :config (global-flycheck-mode)
  :delight)
(add-hook 'flymake-mode-hook
          (lambda ()
            (setq-local flymake-mode-hook nil)
            (flymake-mode -1)))

;;;;;;;;;;
;; EVIL ;;
;;;;;;;;;;
(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode))

(evil-define-key 'insert global-map
  (kbd "M-j") 'evil-next-line
  (kbd "M-k") 'evil-previous-line
  (kbd "M-l") 'evil-forward-char
  (kbd "M-h") 'evil-backward-char)

(use-package evil-leader
  :ensure t
  :config
  (require 'evil-leader)
  (global-evil-leader-mode))

(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
  "ws" 'split-window-below
  "wv" 'split-window-right
  "wh" 'evil-window-left
  "wl" 'evil-window-right
  "wj" 'evil-window-down
  "wk" 'evil-window-up

  "tp" 'term-paste

  "oa" 'org-agenda
  "ol" 'org-store-list
  "oc" 'org-capture)


;;;;;;;;;;;;;;
;; Terminal ;;
;;;;;;;;;;;;;;
(use-package vterm
    :ensure t)

;;;;;;;;;;;
;; Theme ;;
;;;;;;;;;;;
(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one-light t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-colors") ; use the colorful treemacs theme
  (doom-themes-treemacs-config)
  
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package evil-collection
  :after evil
  :ensure t
  :custom (evil-collection-setup-minibuffer t)
  :config
  (evil-collection-init))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

