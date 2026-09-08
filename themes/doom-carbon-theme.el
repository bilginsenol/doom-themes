;;; doom-carbon-theme.el --- inspired by IBM Carbon Design System -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: May 28, 2026
;; Author: B. Bilgin Senol <https://github.com/bilginsenol>
;; Maintainer: B. Bilgin Senol <https://github.com/bilginsenol>
;; Source: https://carbondesignsystem.com/elements/color/overview/#resources
;;
;;; Commentary:
;;
;; IBM Carbon Design System ported to doom-themes.
;; Color codes are baed on "IBM_Colors_RGB_HEX_v2.1_REFERENCE.pdf"
;;
;;; Code:

(require 'doom-themes)


;;
;;; Variables

(defgroup doom-carbon-theme nil
  "Options for the `doom-carbon' theme."
  :group 'doom-themes)

(defcustom doom-carbon-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-carbon-theme
  :type 'boolean)

(defcustom doom-carbon-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-carbon-theme
  :type 'boolean)

(defcustom doom-carbon-comment-bg doom-carbon-brighter-comments
  "If non-nil, comments will have a subtle highlight to enhance their
legibility."
  :group 'doom-carbon-theme
  :type 'boolean)

(defcustom doom-carbon-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-carbon-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-carbon
  "A dark theme inspired by IBM Carbon Design System."
  :family 'doom-carbon
  :background-mode 'dark

  ;; name        default   256           16
  ((bg         '("#161616" "black"       "black"        )) ; gray_100, 0
   (fg         '("#e0e0e0" "#d7d7d7"     "white"        )) ; gray_20, 188
   
   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#060606" "black"       "black"        )) ;~gray_110, 0
   (fg-alt     '("#8d8d8d" "#878787"     "brightblack"  )) ; gray_50, 102

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, base0 should be white and base8 should be black.
   (base0      '("#0e0e0e" "black"       "black"        )) ;~gray_105, 0
   (base1      '("#1e1e1e" "black"       "black"        )) ;~gray_95, 0
   (base2      '("#262626" "black"       "brightblack"  )) ; gray_90, 0
   (base3      '("#393939" "#5f5f5f"     "brightblack"  )) ; gray_80, 59
   (base4      '("#525252" "#5f5f5f"     "brightblack"  )) ; gray_70, 59
   (base5      '("#6f6f6f" "#5f5f5f"     "brightblack"  )) ; gray_60, 59
   (base6      '("#a8a8a8" "#afafaf"     "brightblack"  )) ; gray_40, 145
   (base7      '("#c6c6c6" "#c0c0c0"     "brightwhite"  )) ; gray_30, 7
   (base8      '("#f4f4f4" "#ffffff"     "white"        )) ; gray_10, 15

   (grey       base2)
   (red        '("#ea363f" "#d75f5f" "red"          )) ;~red_55,    167
   (orange     '("#ff832b" "#ff8700" "brightred"    )) ;orange_40,  208
   (green      '("#42be65" "#5faf5f" "green"        )) ;green_40,   71
   (teal       '("#08bdba" "#00afaf" "brightgreen"  )) ;teal_40,    37
   (yellow     '("#f1c21b" "#ffaf00" "yellow"       )) ;yellow_30,  214
   (blue       '("#4589ff" "#5f87ff" "brightblue"   )) ;blue_50,    69
   (dark-blue  '("#0043ce" "#005fd7" "blue"         )) ;blue_70,    26
   (magenta    '("#ee5396" "#ff5f87" "brightmagenta")) ;magenta_50, 204
   (violet     '("#a56eff" "#af5fff" "magenta"      )) ;purple_50,  135
   (cyan       '("#82cfff" "#87d7ff" "cyan"         )) ;cyan_30,  117
   (dark-cyan  '("#0072c3" "#005faf" "cyan"         )) ;cyan_60,    25

   ;;; red variants
   (red20      '("#ffd7d9" "#ffd7d7" "red"          )) ;red_20, 224
   (red40      '("#ff8389" "#ff8787" "red"          )) ;red_40, 210
   (red50      '("#fa4d56" "#ff5f5f" "red"          )) ;red_50, 203
   (red60      '("#da1e28" "#d70000" "red"          )) ;red_60, 160
   (red70      '("#a2191f" "#af0000" "red"          )) ;red_70, 124
   (red80      '("#750e13" "#800000" "red"          )) ;red_80, 1
   (red90      '("#520408" "#5f0000" "red"          )) ;red_90, 52

   ;;; other color variants
   (blue40       '("#78a9ff" "#87afff" "brightblue"   )) ;blue_40,    111
   (cyan40       '("#33b1ff" "#5fafff" "brightcyan"   )) ;cyan_40,    75
   (purple40     '("#be95ff" "#af87ff" "magenta"      )) ;purple_40,  141
   (teal30       '("#3ddbd9" "#5fd7d7" "brightgreen"  )) ;teal_30,  80
   (magenta40    '("#ff7eb6" "#ff87af" "brightmagenta")) ;magenta_40, 211
   (orange35     '("#ff9d58" "#ffaf5f" "brightred"    )) ;~orange_35, 215
   (orange30     '("#ffb784" "#ffaf87" "brightred"    )) ;orange_30, 216
   (yellow20     '("#fddc69" "#ffd75f" "brightred"    )) ;yellow_20, 221
   
   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   ;MAYBE: swap functions and variables color
   (highlight      blue)
   (vertical-bar   (doom-darken base1 0.1))
   (selection      dark-blue)
   (builtin        magenta)
   (comments       (if doom-carbon-brighter-comments dark-cyan base5))
   (doc-comments   (doom-lighten (if doom-carbon-brighter-comments dark-cyan base5) 0.25))
   (constants      violet)
   (functions      magenta)
   (keywords       blue)
   (methods        (doom-lighten magenta 0.4)) ;not sure where this applies to
   (operators      blue)
   (type           (doom-lighten orange 0.2))
   (strings        green)
   (variables      cyan)
   (numbers        orange)
   (region         `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr base1) 0.35)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          base5)
   (modeline-bg              (if doom-carbon-brighter-modeline
                                 (doom-darken blue 0.45)
                               (doom-darken bg-alt 0.0)))
   (modeline-bg-alt          (if doom-carbon-brighter-modeline
                                 (doom-darken blue 0.475)
                               `(,(doom-darken (car bg-alt) 0.15) ,@(cdr bg))))
   (modeline-bg-inactive     `(,(car bg-alt) ,@(cdr base1)))
   (modeline-bg-inactive-alt `(,(doom-darken (car bg-alt) 0.1) ,@(cdr bg)))

   (-modeline-pad
    (when doom-carbon-padded-modeline
      (if (integerp doom-carbon-padded-modeline) doom-carbon-padded-modeline 4))))


  ;;;; Base theme face overrides
  (((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground fg)
   ((font-lock-comment-face &override)
    :background (if doom-carbon-comment-bg (doom-lighten bg 0.05) 'unspecified))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis :foreground (if doom-carbon-brighter-modeline base8 highlight))

   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-carbon-brighter-modeline modeline-bg highlight))
   (doom-modeline-buffer-file :inherit 'mode-line-buffer-id :weight 'bold)
   (doom-modeline-buffer-path :inherit 'mode-line-emphasis :weight 'bold)
   (doom-modeline-buffer-project-root :foreground green :weight 'bold)
   ;;;; elscreen
   (elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")
   ;;;; ivy
   (ivy-current-match :background dark-blue :distant-foreground base0 :weight 'normal)
   ;;;; LaTeX-mode
   (font-latex-math-face :foreground green)
   ;;;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   ((markdown-code-face &override) :background (doom-lighten base3 0.05))
   ;;;; rjsx-mode
   (rjsx-tag :foreground red)
   (rjsx-attr :foreground orange)
   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-alt)))
   ;;;; magit
   (magit-diff-removed
    :foreground (doom-darken vc-deleted 0.2)
    :background (doom-blend vc-deleted base0 0.15)
    :extend t)
   (magit-diff-removed-highlight
    :weight 'bold
    :foreground vc-deleted
    :background (doom-blend vc-deleted base0 0.25)
    :extend t)
   ;;;; org
   (org-block :background (doom-darken bg 0.18) :extend t)
   ;;;; markdown
   (markdown-code-face :background (doom-darken bg 0.18) :extend t)
   ;;;; tab-bar
   (tab-bar-tab :foreground fg :background bg :underline `(:color ,blue :style line :position 0))
   )
  ;;;; Base theme variable overrides-
  ())

;;; doom-carbon-theme.el ends here

