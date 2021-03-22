;;; cobalt-theme.el --- cobalt theme

;; Copyright (C) 2012 by Nick Ewing
;; Copyright (C) 2014 by Syohei YOSHIDA

;; Author: Nick Ewing
;; URL: https://github.com/emacs-jp/replace-colorthemes
;; Version: 0.01

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Port of cobalt theme from `color-themes'

;;; Code:

(deftheme cobalt
  "cobalt theme")

;; (custom-theme-set-variables
;;  'cobalt

;;  '(cursor-type 'bar))

(custom-theme-set-faces
 'cobalt

 '(default ((t (:background "#002240" :foreground "#FFFFFF"))))
 '(cursor ((t (:background "#FFFFFF"))))
 '(border ((t (:foreground "black"))))

 '(window-divider ((t (:foreground "black"))))
 '(error ((t (:foreground "red"))))

 '(buffers-tab ((t (:background "#09223F" :foreground "white"))))
 '(font-lock-builtin-face ((t (:foreground "#40FFB9"))))
 '(font-lock-comment-face ((t (:foreground "#008AFF"))))
 '(font-lock-constant-face ((t (:foreground "#FF518C"))))
 '(font-lock-doc-face ((t (:foreground "#008AFF"))))
 '(font-lock-function-name-face ((t (:foreground "#FFDD00"))))
 '(font-lock-keyword-face ((t (:foreground "#FA9E18"))))
 '(font-lock-preprocessor-face ((t (:foreground "#8090A2"))))
 '(font-lock-reference-face ((t (:foreground "#CCCCCC"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "red"))))
 '(font-lock-string-face ((t (:foreground "#42D915"))))
 '(font-lock-type-face ((t (:foreground "#FFEF79"))))
 '(font-lock-variable-name-face ((t (:foreground "#CCCCCC"))))
 '(font-lock-warning-face ((t (:foreground "Pink"))))
 '(hl-line ((t (:background "#00162A"))))
 '(linum ((t (:background "#09223F" :foreground "#49627F"
              :underline nil))))
 '(gui-element ((t (:background "#303030" :foreground "black"))))
 '(region ((t (:background "#444444"))))
 '(highlight ((t (:background "#26425D"))))
 '(show-paren-match ((t (:background "#26425D"))))
 '(show-paren-mismatch ((t (:background "#FF0000"))))
 '(ecb-default-highlight-face ((t (:background "#26425D"))))
 '(minibuffer-prompt ((t (:foreground "#008AFF"))))
 '(modeline ((t (:background "#111111" :foreground "#888888"))))
 '(modeline-inactive ((t (:background "#222222" :foreground "#888888"))))
 '(italic ((t (nil))))
 '(left-margin ((t (nil))))
 '(toolbar ((t (nil))))
 '(vertical-border ((t (:foreground "#111111" :background "#111111"))))
 '(fringe ((t (:background "#09223F"))))

 ;; rainbow-delimiters-mode
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#FA9E18"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#FFDD00"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#42D915"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#008AFF"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#006ADD"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#CC8AFF"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "#FA9E18"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#FFDD00"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#42D915"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#FF0000"))))
 '(rainbow-delimiters-mismatched-face ((t (:foreground "#FF0000"))))

 ;; doom-modeline
 '(mode-line ((t (:background "#111111" :foreground "#888888"))))
 '(mode-line-inactive ((t (:background "#222222" :foreground "#888888"))))
 '(doom-modeline-warnging ((t (:foreground "#E9C062"))))
 '(doom-modeline-project-dir ((t (:foreground "#FFFFFF"))))

 ;; LSP
 '(lsp-ui-sideline-code-action ((t (:foreground "#E9C062"))))

 )

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'cobalt)

;;; cobalt-theme.el ends here
