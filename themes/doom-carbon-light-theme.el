;;; doom-carbon-light-theme.el --- inspired by IBM Carbon Design System -*- lexical-binding: t; no-byte-compile: t; -*-
;;
;; Added: Jul 8, 2026
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

(defgroup doom-carbon-light-theme nil
  "Options for the `doom-carbon-light' theme."
  :group 'doom-themes)

(defcustom doom-carbon-light-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-carbon-light-theme
  :type 'boolean)

(defcustom doom-carbon-light-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-carbon-light-theme
  :type 'boolean)

(defcustom doom-carbon-light-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-carbon-light-theme
  :type '(choice integer boolean))


;;
;;; Theme definition

(def-doom-theme doom-carbon-light
  "A light theme inspired by IBM Carbon Design System."
  :family 'doom-carbon
  :background-mode 'light

  ;; name        default   256       16
  ((bg         '("#f4f4f4" "#ffffff"     "white"        )) ; gray_10, 15
   (fg         '("#262626" "black"       "brightblack"  )) ; gray_90, 0

   ;; These are off-color variants of bg/fg, used primarily for `solaire-mode',
   ;; but can also be useful as a basis for subtle highlights (e.g. for hl-line
   ;; or region), especially when paired with the `doom-darken', `doom-lighten',
   ;; and `doom-blend' helper functions.
   (bg-alt     '("#eaeaea" "#d7d7d7"     "white"        )) ; ~gray_15, 188
   (fg-alt     '("#525252" "#5f5f5f"     "brightblack"  )) ; gray_70, 59

   ;; These should represent a spectrum from bg to fg, where base0 is a starker
   ;; bg and base8 is a starker fg. For example, if bg is light grey and fg is
   ;; dark grey, base0 should be white and base8 should be black.
   (base0      '("#fefefe" "#ffffff"     "white"        )) ;~gray_5, 15
   (base1      '("#e0e0e0" "#d7d7d7"     "white"        )) ; gray_20, 188
   (base2      '("#d3d3d3" "#d7d7d7"     "white"        )) ;~gray_25, 188
   (base3      '("#c6c6c6" "#c0c0c0"     "brightwhite"  )) ; gray_30, 7
   (base4      '("#a8a8a8" "#afafaf"     "brightblack"  )) ; gray_40, 145
   (base5      '("#8d8d8d" "#878787"     "brightblack"  )) ; gray_50, 102
   ;; (base5      '("#6f6f6f" "#5f5f5f"     "brightblack"  )) ; gray_60, 59
   (base6      '("#464646" "#5f5f5f"     "brightblack"  )) ;~gray_75, 59
   (base7      '("#303030" "#5f5f5f"     "brightblack"  )) ; gray_85, 59
   (base8      '("#161616" "black"       "black"        )) ; gray_100, 0
   ;; (base7      '("#1e1e1e" "black"       "black"        )) ;~gray_95, 0

   (grey       base5)
   (red        '("#ea363f" "#d75f5f" "red"          )) ;~red_55,    167
   (orange     '("#ff832b" "#ff8700" "brightred"    )) ;orange_40,  208
   (green      '("#24a148" "#00af5f" "green"        )) ;green_50,   35
   (teal       '("#08bdba" "#00afaf" "brightgreen"  )) ;teal_40,    37
   (yellow     '("#f1c21b" "#ffaf00" "yellow"       )) ;yellow_30,  214
   (blue       '("#0f62fe" "#005fff" "brightblue"   )) ;blue_60,    27
   (dark-blue  '("#002d9c" "#0000af" "blue"         )) ;blue_80,    19
   (magenta    '("#d02670" "#d7005f" "brightmagenta")) ;magenta_60, 161
   (violet     '("#8a3ffc" "#875fff" "magenta"      )) ;purple_60,  99
   (cyan       '("#22A2F4" "#00afff" "brightcyan"   )) ;~cyan_45,    39
   (dark-cyan  '("#00539a" "#005f87" "cyan"         )) ;cyan_70,    24

   ;;; some color variants
   (red50        '("#fa4d56" "#ff5f5f" "red"          )) ;red_50, 203
   (red60        '("#da1e28" "#d70000" "red"          )) ;red_60, 160
   (red70        '("#a2191f" "#af0000" "red"          )) ;red_70, 124
   (green40      '("#42be65" "#5faf5f" "green"        )) ;green_40,   71
   (green60      '("#198038" "#00875f" "green"        )) ;green_60,   29
   (magenta50    '("#ee5396" "#ff5f87" "brightmagenta")) ;magenta_50, 204
   (purple50     '("#a56eff" "#af5fff" "magenta"      )) ;purple_50,  135
   (cyan30       '("#82cfff" "#87d7ff" "cyan"         )) ;cyan_30,  117
   (cyan40       '("#33b1ff" "#5fafff" "brightcyan"   )) ;cyan_40,    75
   (cyan50       '("#1192e8" "#0087d7" "brightcyan"   )) ;cyan_50,    32
   (cyan60       '("#0072c3" "#005faf" "cyan"         )) ;cyan_60,    25
   
   ;; These are the "universal syntax classes" that doom-themes establishes.
   ;; These *must* be included in every doom themes, or your theme will throw an
   ;; error, as they are used in the base theme defined in doom-themes-base.
   (highlight      blue)
   (vertical-bar   (doom-darken base2 0.1))
   (selection      dark-blue)
   (builtin        magenta)
   (comments       (if doom-carbon-light-brighter-comments cyan base5))
   (doc-comments   (doom-darken comments 0.15))
   (constants      violet)
   (functions      magenta)
   (keywords       blue)
   (methods        (doom-darken magenta 0.4))
   (operators      blue)
   (type           (doom-darken orange 0.15))
   (strings        green)
   (variables      cyan)
   (numbers        orange)
   (region         `(,(doom-darken (car bg-alt) 0.1) ,@(doom-darken (cdr base0) 0.3)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; These are extra color variables used only in this theme; i.e. they aren't
   ;; mandatory for derived themes.
   (modeline-fg              fg)
   (modeline-fg-alt          (doom-blend
                              violet base4
                              (if doom-carbon-light-brighter-modeline 0.5 0.2)))
   (modeline-bg              (if doom-carbon-light-brighter-modeline
                                 (doom-darken base2 0.05)
                               base1))
   (modeline-bg-alt          (if doom-carbon-light-brighter-modeline
                                 (doom-darken base2 0.1)
                               base2))
   (modeline-bg-inactive     (doom-darken bg 0.1))
   (modeline-bg-alt-inactive `(,(doom-darken (car bg-alt) 0.05) ,@(cdr base1)))

   (-modeline-pad
    (when doom-carbon-light-padded-modeline
      (if (integerp doom-carbon-light-padded-modeline) doom-carbon-light-padded-modeline 4))))

  ;;;; Base theme face overrides
  (((font-lock-comment-face &override)
    :background (if doom-carbon-light-brighter-comments base0 'unspecified))
   ((font-lock-doc-face &override) :slant 'italic)
   ((line-number &override) :foreground (doom-lighten base4 0.15))
   ((line-number-current-line &override) :foreground base8)
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis
    :foreground (if doom-carbon-light-brighter-modeline base8 highlight))
   (shadow :foreground base4)
   (tooltip :background base1 :foreground fg)

   ;;;; centaur-tabs
   (centaur-tabs-unselected :background bg-alt :foreground base4)
   ;;;; css-mode <built-in> / scss-mode
   (css-proprietary-property :foreground orange)
   (css-property             :foreground green)
   (css-selector             :foreground blue)
   ;;;; doom-modeline
   (doom-modeline-bar :background (if doom-carbon-light-brighter-modeline modeline-bg highlight))
   ;;;; ediff <built-in>
   (ediff-current-diff-A        :foreground red   :background (doom-lighten red 0.8))
   (ediff-current-diff-B        :foreground green :background (doom-lighten green 0.8))
   (ediff-current-diff-C        :foreground blue  :background (doom-lighten blue 0.8))
   (ediff-current-diff-Ancestor :foreground teal  :background (doom-lighten teal 0.8))
   ;;;; helm
   (helm-candidate-number :background blue :foreground bg)
   ;;;; lsp-mode
   (lsp-ui-doc-background      :background base0)
   ;;;; magit
   (magit-blame-heading     :foreground orange :background bg-alt)
   (magit-diff-removed :foreground (doom-darken red 0.2) :background (doom-blend red bg 0.1))
   (magit-diff-removed-highlight :foreground red :background (doom-blend red bg 0.2) :bold bold)
   ;;;; markdown-mode
   (markdown-markup-face     :foreground base5)
   (markdown-header-face     :inherit 'bold :foreground red)
   ((markdown-code-face &override)       :background base1)
   (mmm-default-submode-face :background base1)
   ;;;; outline <built-in>
   ((outline-1 &override) :foreground red)
   ((outline-2 &override) :foreground orange)
   ;;;; org <built-in>
   ((org-block &override) :background base1)
   ((org-block-begin-line &override) :foreground fg :slant 'italic)
   (org-ellipsis :underline nil :background bg     :foreground red)
   ((org-quote &override) :background base1)
   ;;;; posframe
   (ivy-posframe               :background base0)
   ;;;; selectrum
   (selectrum-current-candidate :background base2)
   ;;;; vertico
   (vertico-current :background base2)
   ;;;; solaire-mode
   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-alt-inactive
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt-inactive)))
   ;;;; web-mode
   (web-mode-current-element-highlight-face :background dark-blue :foreground bg)
   ;;;; wgrep <built-in>
   (wgrep-face :background base1)
   ;;;; whitespace
   ((whitespace-tab &override)         :background (if (not (default-value 'indent-tabs-mode)) base0 'unspecified))
   ((whitespace-indentation &override) :background (if (default-value 'indent-tabs-mode) base0 'unspecified)))

  ;;;; Base theme variable overrides-
  ()
  )

;;; doom-carbon-light-theme.el ends here
