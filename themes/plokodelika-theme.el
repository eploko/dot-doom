(require 'color)

(autothemer-deftheme
 plokodelika "An old skool awesomeness."

 ((((class color) (min-colors #xFFFFFF)))

  ;; Specify the color palette for each of the classes above.
  (blue-dark            "#002240")
  (blue-light           "#0088FF")
  (blue-sky             "#41a1bf")
  (white                "#FFFFFF")
  (green                "#2DD00B")
  (raspberry            "#FF628C")
  (orange               "#FF9D00")
  (gray                 "#CCCCCC")
  (gray-15             (color-darken-name gray 15))
  (yellow               "#FFDD00")
  (sticky-note          "#FFF4DB")
  (red                  "#F02311")

  (bg                   blue-dark)
  (bg+5                 (color-lighten-name bg 5))
  (bg+10                (color-lighten-name bg 10))
  (bg+15                (color-lighten-name bg 15))
  (bg+40                (color-lighten-name bg 40))
  (bg-5                 (color-darken-name bg 5))
  (bg-10                (color-darken-name bg 10))
  (bg-15                (color-darken-name bg 15))
  (bg-40                (color-darken-name bg 40))
  (fg                   white)

  )

 ;; specifications for Emacs faces.
 ((default (:background bg :foreground fg))
  (highlight (:background bg+15))
  (match (:foreground orange))
  (error (:foreground red))
  (warning (:foreground orange))
  (success (:foreground green))
  (region (:background bg+40 :foreground white))
  (shadow (:foreground gray-15))
  (link (:foreground blue-light :underline t))

  (fringe (:background blue-dark :foreground blue-sky))
  (window-divider (:foreground "black"))

  (hl-line (:background bg+5))
  (show-paren-match (:foreground white))

  (header-line (:background blue-dark :foreground blue-dark))
  (mode-line (:background "#111111" :foreground "#888888"))
  (mode-line-inactive (:background "#222222" :foreground "#888888"))
  (doom-modeline-project-dir (:foreground white))
  (lsp-modeline-code-actions-face (:foreground yellow))
  (doom-modeline-buffer-modified (:inherit 'error :weight 'normal))
  (doom-modeline-info (:foreground white))

  (minibuffer-prompt (:foreground blue-light))

  (font-lock-comment-face (:foreground blue-light))
  (font-lock-builtin-face (:foreground raspberry))
  (font-lock-function-name-face (:foreground blue-sky))
  (font-lock-string-face (:foreground green))
  (font-lock-constant-face (:foreground raspberry))
  (font-lock-keyword-face (:foreground orange))
  (font-lock-type-face (:foreground yellow))
  (font-lock-variable-name-face (:foreground gray))

  (rainbow-delimiters-depth-1-face (:foreground orange))
  (rainbow-delimiters-depth-2-face (:foreground yellow))
  (rainbow-delimiters-depth-3-face (:foreground green))
  (rainbow-delimiters-depth-4-face (:foreground blue-light))
  (rainbow-delimiters-depth-5-face (:foreground orange))
  (rainbow-delimiters-depth-6-face (:foreground yellow))
  (rainbow-delimiters-depth-7-face (:foreground green))
  (rainbow-delimiters-depth-8-face (:foreground blue-light))
  (rainbow-delimiters-depth-9-face (:foreground orange))
  (rainbow-delimiters-unmatched-face (:background red :foreground white))
  (rainbow-delimiters-mismatched-face (:background red :foreground white))

  (company-tooltip (:background bg-5 :foreground white))
  (company-tooltip-selection (:background bg+15))
  (company-tooltip-annotation (:inherit 'company-tooltip :foreground gray-15))
  (company-tooltip-annotation-selection (:inherit 'company-tooltip-annotation :background bg+15))
  (company-tooltip-common (:inherit 'company-tooltip :foreground yellow))
  (company-tooltip-common-selection (:background bg+15))
  (company-scrollbar-bg (:inherit 'company-tooltip))
  (company-scrollbar-fg (:inherit 'company-tooltip :background bg+5))
  (company-box-scrollbar (:background bg+5))

  (magit-section-highlight (:inherit 'highlight))

  (markdown-header-face (:foreground blue-sky))
  (markdown-header-face-1 (:inherit 'markdown-header-face :height 160))

  (ledger-font-xact-highlight-face (:inherit 'highlight))

  ;;
  ))
