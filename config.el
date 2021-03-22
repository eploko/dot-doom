;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Andrey Subbotin"
      user-mail-address "andrey@subbotin.me")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "MesloLGS NF" :size 14 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "MesloLGS NF" :size 15))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'plokodelika)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/kb/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

;; When at the beginning of the line, make Ctrl-K remove the whole line, instead
;; of just emptying it.
(setq kill-whole-line t)

;; Disable exit confirmation.
(setq confirm-kill-emacs nil)

;; Maximize the window upon startup.
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; Always blink the cursor
(blink-cursor-mode)

;;;
;;; Keybindings
;;;

;; There are additional methods to obtain special characters other than the one
;; mentioned in this answer, but I personally prefer the best of both worlds --
;; i.e., I use the left alt/option key as meta, and I use the right alt/option
;; key for stock Apple stuff -- e.g., special characters like the ones
;; mentioned by the original poster:
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'super)
  (setq mac-right-option-modifier nil)
  (setq mac-control-modifier 'control))

;; Make sure all the bindings work even in the Russian input mode.
(use-package! dvorak-russian-computer)
(use-package! reverse-im
  :config
  (reverse-im-activate "dvorak-russian-computer"))

;; Enable Swiper on C-s
(map! "C-s" 'swiper-isearch)

;; Avy jump on C-'
(map! "C-'" 'avy-goto-char-2)

;; Counsel imenu on C-i
(map! "M-i" 'counsel-imenu)

;; Replace the default goto-line keybindings with avy-goto-line, which is more
;; flexible and also falls back to goto-line if a number is typed.
(map! "M-g g" #'avy-goto-line)
(map! "M-g M-g" #'avy-goto-line)

;;;
;;; Popups
;;;

;; Ignore the popup rules for Cider REPL windows, so they open on the right,
;; splitting the frame vertically.
(after! cider
  (set-popup-rule! "^\\*cider-repl " :ignore t))

;;;
;;; Programming
;;;

;; Make smartparens use paredit bindings, so M-r raises sexp and so on.
(sp-use-paredit-bindings)

;; Make wrapping sexps a little easier.
;; M-( is handled by default.
(define-key smartparens-mode-map (kbd "M-[") 'sp-wrap-square)
(define-key smartparens-mode-map (kbd "M-{") 'sp-wrap-curly)

;; Preserve parens a-la paredit
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)
(add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)
(add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode)
(add-hook 'typescript-mode-hook #'smartparens-mode)
(add-hook 'js-mode-hook #'smartparens-mode)
(add-hook 'markdown-mode-hook #'smartparens-mode)

;; Allow cljr to scan projects
(setq cljr-warn-on-eval nil)

;; Enabling CamelCase support for editing commands(like forward-word,
;; backward-word, etc) in clojure-mode is quite useful since we often have to
;; deal with Java class and method names. The built-in Emacs minor mode
;; subword-mode provides such functionality.
(add-hook 'clojure-mode-hook #'subword-mode)
(add-hook 'cider-repl-mode-hook #'subword-mode)

;; Keep my code always indented.
(use-package! aggressive-indent
  :hook
  (clojure-mode . aggressive-indent-mode)
  (emacs-lisp-mode . aggressive-indent-mode)
  (lisp-mode . aggressive-indent-mode)
  (css-mode . aggressive-indent-mode)
  (typescript-mode . aggressive-indent-mode)
  (js-mode . aggressive-indent-mode))

;;(setq lsp-lens-auto-enable t)
(setq lsp-ui-sideline-show-code-actions nil)
(setq company-show-numbers t)

(use-package! ledger-mode)
