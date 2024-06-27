; extends

;; misc
("\\item"
  @punctuation.special
  @conceal
  (#set! conceal "•"))

;; greek
(generic_command
  command: (command_name) @text.math
  (#has-ancestor? @text.math math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @text.math label_definition text_mode)
  (#any-of? @text.math
    "\\Chi"
    "\\Delta"
    "\\Gamma"
    "\\Lambda"
    "\\Omega"
    "\\Phi"
    "\\Pi"
    "\\Psi"
    "\\Sigma"
    "\\Theta"
    "\\Upsilon"
    "\\Xi"
    "\\alpha"
    "\\beta"
    "\\chi"
    "\\delta"
    "\\eta"
    "\\gamma"
    "\\iota"
    "\\kappa"
    "\\lambda"
    "\\mu"
    "\\nu"
    "\\omega"
    "\\phi"
    "\\pi"
    "\\psi"
    "\\rho"
    "\\sigma"
    "\\tau"
    "\\theta"
    "\\upsilon"
    "\\varepsilon"
    "\\varphi"
    "\\varpi"
    "\\varrho"
    "\\varsigma"
    "\\vartheta"
    "\\xi"
    "\\zeta")
  (#set-pairs! @text.math conceal
    "\\Chi" "Χ"
    "\\Delta" "Δ"
    "\\Gamma" "Γ"
    "\\Lambda" "Λ"
    "\\Omega" "Ω"
    "\\Phi" "Φ"
    "\\Pi" "Π"
    "\\Psi" "Ψ"
    "\\Sigma" "Σ"
    "\\Theta" "Θ"
    "\\Upsilon" "Υ"
    "\\Xi" "Ξ"
    "\\alpha" "α"
    "\\beta" "β"
    "\\chi" "χ"
    "\\delta" "δ"
    "\\eta" "η"
    "\\gamma" "γ"
    "\\iota" "ι"
    "\\kappa" "κ"
    "\\lambda" "λ"
    "\\mu" "μ"
    "\\nu" "ν"
    "\\omega" "ω"
    "\\phi" "ϕ"
    "\\pi" "π"
    "\\psi" "ψ"
    "\\rho" "ρ"
    "\\sigma" "σ"
    "\\tau" "τ"
    "\\theta" "θ"
    "\\upsilon" "υ"
    "\\varepsilon" "ε"
    "\\varphi" "φ"
    "\\varpi" "ϖ"
    "\\varrho" "ϱ"
    "\\varsigma" "ς"
    "\\vartheta" "ϑ"
    "\\xi" "ξ"
    "\\zeta" "ζ"))

;; operators
(generic_command
  command: (command_name) @operator
  (#has-ancestor? @operator math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @operator label_definition text_mode)
  (#any-of? @operator
    "\\Downarrow"
    "\\Im"
    "\\Leftarrow"
    "\\Leftrightarrow"
    "\\P"
    "\\Re"
    "\\Rightarrow"
    "\\S"
    "\\Uparrow"
    "\\Updownarrow"
    "\\amalg"
    "\\angle"
    "\\approx"
    "\\ast"
    "\\asymp"
    "\\backslash"
    "\\because"
    "\\bigcap"
    "\\bigcirc"
    "\\bigcup"
    "\\bigodot"
    "\\bigoplus"
    "\\bigotimes"
    "\\bigsqcup"
    "\\bigtriangledown"
    "\\bigtriangleup"
    "\\bigvee"
    "\\bigwedge"
    "\\bot"
    "\\bowtie"
    "\\bullet"
    "\\cap"
    "\\cdot"
    "\\cdots"
    "\\circ"
    "\\cong"
    "\\coprod"
    "\\copyright"
    "\\cup"
    "\\dagger"
    "\\dashv"
    "\\ddagger"
    "\\ddots"
    "\\diamond"
    "\\div"
    "\\doteq"
    "\\dots"
    "\\downarrow"
    "\\enspace"
    "\\equiv"
    "\\exists"
    "\\flat"
    "\\forall"
    "\\frown"
    "\\ge"
    "\\geq"
    "\\gets"
    "\\gg"
    "\\gt"
    "\\hookleftarrow"
    "\\hookrightarrow"
    "\\iff"
    "\\impliedby"
    "\\implies"
    "\\in"
    "\\int"
    "\\jmath"
    "\\land"
    "\\langle"
    "\\lceil"
    "\\ldots"
    "\\le"
    "\\left"
    "\\leftarrow"
    "\\leftharpoondown"
    "\\leftharpoonup"
    "\\leftrightarrow"
    "\\leq"
    "\\lfloor"
    "\\ll"
    "\\lmoustache"
    "\\lor"
    "\\lt"
    "\\mapsto"
    "\\mid"
    "\\models"
    "\\mp"
    "\\nabla"
    "\\natural"
    "\\ne"
    "\\nearrow"
    "\\neg"
    "\\neq"
    "\\nexists"
    "\\ni"
    "\\notin"
    "\\nwarrow"
    "\\odot"
    "\\oint"
    "\\ominus"
    "\\operatorname"
    "\\oplus"
    "\\oslash"
    "\\otimes"
    "\\owns"
    "\\parallel"
    "\\partial"
    "\\perp"
    "\\pm"
    "\\prec"
    "\\preceq"
    "\\prime"
    "\\prod"
    "\\propto"
    "\\qquad"
    "\\quad"
    "\\rangle"
    "\\rceil"
    "\\rfloor"
    "\\right"
    "\\rightarrow"
    "\\rightleftharpoons"
    "\\rightrightarrows"
    "\\rmoustache"
    "\\searrow"
    "\\setminus"
    "\\sharp"
    "\\sim"
    "\\simeq"
    "\\smile"
    "\\sqcap"
    "\\sqcup"
    "\\sqrt"
    "\\sqsubset"
    "\\sqsubseteq"
    "\\sqsupset"
    "\\sqsupseteq"
    "\\star"
    "\\subset"
    "\\subseteq"
    "\\succ"
    "\\succeq"
    "\\sum"
    "\\supset"
    "\\supseteq"
    "\\surd"
    "\\swarrow"
    "\\therefore"
    "\\times"
    "\\to"
    "\\top"
    "\\triangle"
    "\\triangleleft"
    "\\triangleright"
    "\\twoheadrightarrow"
    "\\uparrow"
    "\\updownarrow"
    "\\upharpoonright"
    "\\vdash"
    "\\vdots"
    "\\vee"
    "\\vert"
    "\\wedge"
    "\\wp"
    "\\wr")
  (#set-pairs! @operator conceal
    "\\Downarrow" "⇓"
    "\\Im" "ℑ"
    "\\Leftarrow" "⇐"
    "\\Leftrightarrow" "⇔"
    "\\P" "¶"
    "\\Re" "ℜ"
    "\\Rightarrow" "⇒"
    "\\S" "§"
    "\\Uparrow" "⇑"
    "\\Updownarrow" "⇕"
    "\\amalg" "∐"
    "\\angle" "∠"
    "\\approx" "≈"
    "\\ast" "∗"
    "\\asymp" "≍"
    "\\backslash" "∖"
    "\\because" "∵"
    "\\bigcap" "∩"
    "\\bigcirc" "○"
    "\\bigcup" "∪"
    "\\bigodot" "⊙"
    "\\bigoplus" "⊕"
    "\\bigotimes" "⊗"
    "\\bigsqcup" "⊔"
    "\\bigtriangledown" "∇"
    "\\bigtriangleup" "∆"
    "\\bigvee" "⋁"
    "\\bigwedge" "⋀"
    "\\bot" "⊥"
    "\\bowtie" "⋈"
    "\\bullet" "•"
    "\\cap" "∩"
    "\\cdot" "·"
    "\\cdots" "⋯"
    "\\circ" "∘"
    "\\cong" "≅"
    "\\coprod" "∐"
    "\\copyright" "©"
    "\\cup" "∪"
    "\\dagger" "†"
    "\\dashv" "⊣"
    "\\ddagger" "‡"
    "\\ddots" "⋱"
    "\\diamond" "⋄"
    "\\div" "÷"
    "\\doteq" "≐"
    "\\dots" "…"
    "\\downarrow" "↓"
    "\\enspace" " "
    "\\equiv" "≡"
    "\\exists" "∃"
    "\\flat" "♭"
    "\\forall" "∀"
    "\\frown" "⁔"
    "\\ge" "≥"
    "\\geq" "≥"
    "\\gets" "←"
    "\\gg" "⟫"
    "\\gt" ">"
    "\\hookleftarrow" "↩"
    "\\hookrightarrow" "↪"
    "\\iff" "⇔"
    "\\impliedby" "⇐"
    "\\implies" "⇒"
    "\\in" "∈"
    "\\int" "∫"
    "\\jmath" "𝚥"
    "\\land" "∧"
    "\\langle" "⟨"
    "\\lceil" "⌈"
    "\\ldots" "…"
    "\\le" "≤"
    "\\left" ""
    "\\leftarrow" "←"
    "\\leftharpoondown" "↽"
    "\\leftharpoonup" "↼"
    "\\leftrightarrow" "↔"
    "\\leq" "≤"
    "\\lfloor" "⌊"
    "\\ll" "≪"
    "\\lmoustache" "╭"
    "\\lor" "∨"
    "\\lt" "<"
    "\\mapsto" "↦"
    "\\mid" "∣"
    "\\models" "╞"
    "\\mp" "∓"
    "\\nabla" "∇"
    "\\natural" "♮"
    "\\ne" "≠"
    "\\nearrow" "↗"
    "\\neg" "¬"
    "\\neq" "≠"
    "\\nexists" "∄"
    "\\ni" "∋"
    "\\notin" "∉"
    "\\nwarrow" "↖"
    "\\odot" "⊙"
    "\\oint" "∮"
    "\\ominus" "⊖"
    "\\operatorname" ""
    "\\oplus" "⊕"
    "\\oslash" "⊘"
    "\\otimes" "⊗"
    "\\owns" "∋"
    "\\parallel" "║"
    "\\partial" "∂"
    "\\perp" "⊥"
    "\\pm" "±"
    "\\prec" "≺"
    "\\preceq" "⪯"
    "\\prime" "′"
    "\\prod" "∏"
    "\\propto" "∝"
    "\\qquad" " "
    "\\quad" " "
    "\\rangle" "⟩"
    "\\rceil" "⌉"
    "\\rfloor" "⌋"
    "\\right" ""
    "\\rightarrow" "→"
    "\\rightleftharpoons" "⇌"
    "\\rightrightarrows" "⇉"
    "\\rmoustache" "╮"
    "\\searrow" "↘"
    "\\setminus" "∖"
    "\\sharp" "♯"
    "\\sim" "∼"
    "\\simeq" "⋍"
    "\\smile" "‿"
    "\\sqcap" "⊓"
    "\\sqcup" "⊔"
    "\\sqrt" "√"
    "\\sqsubset" "⊏"
    "\\sqsubseteq" "⊑"
    "\\sqsupset" "⊐"
    "\\sqsupseteq" "⊒"
    "\\star" "✫"
    "\\subset" "⊂"
    "\\subseteq" "⊆"
    "\\succ" "≻"
    "\\succeq" "⪰"
    "\\sum" "∑"
    "\\supset" "⊃"
    "\\supseteq" "⊇"
    "\\surd" "√"
    "\\swarrow" "↙"
    "\\therefore" "∴"
    "\\times" "×"
    "\\to" "→"
    "\\top" "⊤"
    "\\triangle" "∆"
    "\\triangleleft" "⊲"
    "\\triangleright" "⊳"
    "\\twoheadrightarrow" "↠"
    "\\uparrow" "↑"
    "\\updownarrow" "↕"
    "\\upharpoonright" "↾"
    "\\vdash" "⊢"
    "\\vdots" "⋮"
    "\\vee" "∨"
    "\\vert" "|"
    "\\wedge" "∧"
    "\\wp" "℘"
    "\\wr" "≀"))

;; symbols
(generic_command
  command: (command_name) @text.math
  (#has-ancestor? @text.math math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @text.math label_definition text_mode)
  (#any-of? @text.math
    "\\#"
    "\\aleph"
    "\\clubsuit"
    "\\diamondsuit"
    "\\ell"
    "\\emptyset"
    "\\hbar"
    "\\heartsuit"
    "\\imath"
    "\\infty"
    "\\spadesuit"
    "\\square"
    "\\varnothing")
  (#set-pairs! @text.math conceal
    "\\#" "#"
    "\\aleph" "ℵ"
    "\\clubsuit" "♣"
    "\\diamondsuit" "♢"
    "\\ell" "ℓ"
    "\\emptyset" "∅"
    "\\hbar" "ℏ"
    "\\heartsuit" "♡"
    "\\imath" "ɩ"
    "\\infty" "∞"
    "\\spadesuit" "♠"
    "\\square" "□"
    "\\varnothing" "∅"))

;; delimiters
(curly_group "{" @conceal
  (#not-has-grandparent?
    @conceal
    title_declaration
    author_declaration
    chapter
    part
    section
    subsection
    subsubsection
    paragraph
    subparagraph
    generic_command)
  (#set! conceal ""))

(curly_group "}" @conceal
  (#not-has-grandparent?
    @conceal
    title_declaration
    author_declaration
    chapter
    part
    section
    subsection
    subsubsection
    paragraph
    subparagraph
    generic_command)
  (#set! conceal ""))

(math_delimiter left_command: _ @conceal 
  (#set! conceal ""))

(math_delimiter right_command: _ @conceal 
  (#set! conceal ""))

(inline_formula "$" @conceal 
  (#set! conceal ""))

(inline_formula "\\(" @conceal 
  (#set! conceal ""))

(inline_formula "\\)" @conceal 
  (#set! conceal ""))

(displayed_equation "\\[" @conceal 
  (#set! conceal ""))

(displayed_equation "\\]" @conceal 
  (#set! conceal ""))

(displayed_equation "$$" @conceal 
  (#set! conceal ""))

(text_mode command: _ @conceal 
  (#set! conceal ""))

;; typography
(generic_command
  command: (command_name) @conceal
  (#any-of? @conceal
    "\\emph"
    "\\mathit"
    "\\textit"
    "\\mathbf"
    "\\textbf")
  (#set! conceal ""))

;; scripts
((generic_command
    command: (command_name)
    arg: (curly_group))
  @text.math
  (#any-of? @text.math
    "\\mathbb{A}"
    "\\mathbb{B}"
    "\\mathbb{C}"
    "\\mathbb{D}"
    "\\mathbb{E}"
    "\\mathbb{F}"
    "\\mathbb{G}"
    "\\mathbb{H}"
    "\\mathbb{I}"
    "\\mathbb{J}"
    "\\mathbb{K}"
    "\\mathbb{L}"
    "\\mathbb{M}"
    "\\mathbb{N}"
    "\\mathbb{O}"
    "\\mathbb{P}"
    "\\mathbb{Q}"
    "\\mathbb{R}"
    "\\mathbb{S}"
    "\\mathbb{T}"
    "\\mathbb{U}"
    "\\mathbb{V}"
    "\\mathbb{W}"
    "\\mathbb{X}"
    "\\mathbb{Y}"
    "\\mathbb{Z}"
    "\\mathcal{A}"
    "\\mathcal{B}"
    "\\mathcal{C}"
    "\\mathcal{D}"
    "\\mathcal{E}"
    "\\mathcal{F}"
    "\\mathcal{G}"
    "\\mathcal{H}"
    "\\mathcal{I}"
    "\\mathcal{J}"
    "\\mathcal{K}"
    "\\mathcal{L}"
    "\\mathcal{M}"
    "\\mathcal{N}"
    "\\mathcal{O}"
    "\\mathcal{P}"
    "\\mathcal{Q}"
    "\\mathcal{R}"
    "\\mathcal{S}"
    "\\mathcal{T}"
    "\\mathcal{U}"
    "\\mathcal{V}"
    "\\mathcal{W}"
    "\\mathcal{X}"
    "\\mathcal{Y}"
    "\\mathcal{Z}"
    "\\mathfrak{A}"
    "\\mathfrak{B}"
    "\\mathfrak{C}"
    "\\mathfrak{D}"
    "\\mathfrak{E}"
    "\\mathfrak{F}"
    "\\mathfrak{G}"
    "\\mathfrak{H}"
    "\\mathfrak{I}"
    "\\mathfrak{J}"
    "\\mathfrak{K}"
    "\\mathfrak{L}"
    "\\mathfrak{M}"
    "\\mathfrak{N}"
    "\\mathfrak{O}"
    "\\mathfrak{P}"
    "\\mathfrak{Q}"
    "\\mathfrak{R}"
    "\\mathfrak{S}"
    "\\mathfrak{T}"
    "\\mathfrak{U}"
    "\\mathfrak{V}"
    "\\mathfrak{W}"
    "\\mathfrak{X}"
    "\\mathfrak{Y}"
    "\\mathfrak{Z}"
    "\\mathfrak{a}"
    "\\mathfrak{b}"
    "\\mathfrak{c}"
    "\\mathfrak{d}"
    "\\mathfrak{e}"
    "\\mathfrak{f}"
    "\\mathfrak{g}"
    "\\mathfrak{h}"
    "\\mathfrak{i}"
    "\\mathfrak{j}"
    "\\mathfrak{k}"
    "\\mathfrak{l}"
    "\\mathfrak{m}"
    "\\mathfrak{n}"
    "\\mathfrak{o}"
    "\\mathfrak{p}"
    "\\mathfrak{q}"
    "\\mathfrak{r}"
    "\\mathfrak{s}"
    "\\mathfrak{t}"
    "\\mathfrak{u}"
    "\\mathfrak{v}"
    "\\mathfrak{w}"
    "\\mathfrak{x}"
    "\\mathfrak{y}"
    "\\mathfrak{z}"
    "\\mathscr{A}"
    "\\mathscr{B}"
    "\\mathscr{C}"
    "\\mathscr{D}"
    "\\mathscr{E}"
    "\\mathscr{F}"
    "\\mathscr{G}"
    "\\mathscr{H}"
    "\\mathscr{I}"
    "\\mathscr{J}"
    "\\mathscr{K}"
    "\\mathscr{L}"
    "\\mathscr{M}"
    "\\mathscr{N}"
    "\\mathscr{O}"
    "\\mathscr{P}"
    "\\mathscr{Q}"
    "\\mathscr{R}"
    "\\mathscr{S}"
    "\\mathscr{T}"
    "\\mathscr{U}"
    "\\mathscr{V}"
    "\\mathscr{W}"
    "\\mathscr{X}"
    "\\mathscr{Y}"
    "\\mathscr{Z}"
    "\\mathsf{A}"
    "\\mathsf{B}"
    "\\mathsf{C}"
    "\\mathsf{D}"
    "\\mathsf{E}"
    "\\mathsf{F}"
    "\\mathsf{G}"
    "\\mathsf{H}"
    "\\mathsf{I}"
    "\\mathsf{J}"
    "\\mathsf{K}"
    "\\mathsf{L}"
    "\\mathsf{M}"
    "\\mathsf{N}"
    "\\mathsf{O}"
    "\\mathsf{P}"
    "\\mathsf{Q}"
    "\\mathsf{R}"
    "\\mathsf{S}"
    "\\mathsf{T}"
    "\\mathsf{U}"
    "\\mathsf{V}"
    "\\mathsf{W}"
    "\\mathsf{X}"
    "\\mathsf{Y}"
    "\\mathsf{Z}"
    "\\mathsf{a}"
    "\\mathsf{b}"
    "\\mathsf{c}"
    "\\mathsf{d}"
    "\\mathsf{e}"
    "\\mathsf{f}"
    "\\mathsf{g}"
    "\\mathsf{h}"
    "\\mathsf{i}"
    "\\mathsf{j}"
    "\\mathsf{k}"
    "\\mathsf{l}"
    "\\mathsf{m}"
    "\\mathsf{n}"
    "\\mathsf{o}"
    "\\mathsf{p}"
    "\\mathsf{q}"
    "\\mathsf{r}"
    "\\mathsf{s}"
    "\\mathsf{t}"
    "\\mathsf{u}"
    "\\mathsf{v}"
    "\\mathsf{w}"
    "\\mathsf{x}"
    "\\mathsf{y}"
    "\\mathsf{z}")
  (#set-pairs! @text.math conceal
    "\\mathbb{A}" "𝔸"
    "\\mathbb{B}" "𝔹"
    "\\mathbb{C}" "ℂ"
    "\\mathbb{D}" "𝔻"
    "\\mathbb{E}" "𝔼"
    "\\mathbb{F}" "𝔽"
    "\\mathbb{G}" "𝔾"
    "\\mathbb{H}" "ℍ"
    "\\mathbb{I}" "𝕀"
    "\\mathbb{J}" "𝕁"
    "\\mathbb{K}" "𝕂"
    "\\mathbb{L}" "𝕃"
    "\\mathbb{M}" "𝕄"
    "\\mathbb{N}" "ℕ"
    "\\mathbb{O}" "𝕆"
    "\\mathbb{P}" "ℙ"
    "\\mathbb{Q}" "ℚ"
    "\\mathbb{R}" "ℝ"
    "\\mathbb{S}" "𝕊"
    "\\mathbb{T}" "𝕋"
    "\\mathbb{U}" "𝕌"
    "\\mathbb{V}" "𝕍"
    "\\mathbb{W}" "𝕎"
    "\\mathbb{X}" "𝕏"
    "\\mathbb{Y}" "𝕐"
    "\\mathbb{Z}" "ℤ"
    "\\mathcal{A}" "𝓐"
    "\\mathcal{B}" "𝓑"
    "\\mathcal{C}" "𝓒"
    "\\mathcal{D}" "𝓓"
    "\\mathcal{E}" "𝓔"
    "\\mathcal{F}" "𝓕"
    "\\mathcal{G}" "𝓖"
    "\\mathcal{H}" "𝓗"
    "\\mathcal{I}" "𝓘"
    "\\mathcal{J}" "𝓙"
    "\\mathcal{K}" "𝓚"
    "\\mathcal{L}" "𝓛"
    "\\mathcal{M}" "𝓜"
    "\\mathcal{N}" "𝓝"
    "\\mathcal{O}" "𝓞"
    "\\mathcal{P}" "𝓟"
    "\\mathcal{Q}" "𝓠"
    "\\mathcal{R}" "𝓡"
    "\\mathcal{S}" "𝓢"
    "\\mathcal{T}" "𝓣"
    "\\mathcal{U}" "𝓤"
    "\\mathcal{V}" "𝓥"
    "\\mathcal{W}" "𝓦"
    "\\mathcal{X}" "𝓧"
    "\\mathcal{Y}" "𝓨"
    "\\mathcal{Z}" "𝓩"
    "\\mathfrak{A}" "𝔄"
    "\\mathfrak{B}" "𝔅"
    "\\mathfrak{C}" "ℭ"
    "\\mathfrak{D}" "𝔇"
    "\\mathfrak{E}" "𝔈"
    "\\mathfrak{F}" "𝔉"
    "\\mathfrak{G}" "𝔊"
    "\\mathfrak{H}" "ℌ"
    "\\mathfrak{I}" "ℑ"
    "\\mathfrak{J}" "𝔍"
    "\\mathfrak{K}" "𝔎"
    "\\mathfrak{L}" "𝔏"
    "\\mathfrak{M}" "𝔐"
    "\\mathfrak{N}" "𝔑"
    "\\mathfrak{O}" "𝔒"
    "\\mathfrak{P}" "𝔓"
    "\\mathfrak{Q}" "𝔔"
    "\\mathfrak{R}" "ℜ"
    "\\mathfrak{S}" "𝔖"
    "\\mathfrak{T}" "𝔗"
    "\\mathfrak{U}" "𝔘"
    "\\mathfrak{V}" "𝔙"
    "\\mathfrak{W}" "𝔚"
    "\\mathfrak{X}" "𝔛"
    "\\mathfrak{Y}" "𝔜"
    "\\mathfrak{Z}" "ℨ"
    "\\mathfrak{a}" "𝔞"
    "\\mathfrak{b}" "𝔟"
    "\\mathfrak{c}" "𝔠"
    "\\mathfrak{d}" "𝔡"
    "\\mathfrak{e}" "𝔢"
    "\\mathfrak{f}" "𝔣"
    "\\mathfrak{g}" "𝔤"
    "\\mathfrak{h}" "𝔥"
    "\\mathfrak{i}" "𝔦"
    "\\mathfrak{j}" "𝔧"
    "\\mathfrak{k}" "𝔨"
    "\\mathfrak{l}" "𝔩"
    "\\mathfrak{m}" "𝔪"
    "\\mathfrak{n}" "𝔫"
    "\\mathfrak{o}" "𝔬"
    "\\mathfrak{p}" "𝔭"
    "\\mathfrak{q}" "𝔮"
    "\\mathfrak{r}" "𝔯"
    "\\mathfrak{s}" "𝔰"
    "\\mathfrak{t}" "𝔱"
    "\\mathfrak{u}" "𝔲"
    "\\mathfrak{v}" "𝔳"
    "\\mathfrak{w}" "𝔴"
    "\\mathfrak{x}" "𝔵"
    "\\mathfrak{y}" "𝔶"
    "\\mathfrak{z}" "𝔷"
    "\\mathscr{A}" "𝓐"
    "\\mathscr{B}" "𝓑"
    "\\mathscr{C}" "𝓒"
    "\\mathscr{D}" "𝓓"
    "\\mathscr{E}" "𝓔"
    "\\mathscr{F}" "𝓕"
    "\\mathscr{G}" "𝓖"
    "\\mathscr{H}" "𝓗"
    "\\mathscr{I}" "𝓘"
    "\\mathscr{J}" "𝓙"
    "\\mathscr{K}" "𝓚"
    "\\mathscr{L}" "𝓛"
    "\\mathscr{M}" "𝓜"
    "\\mathscr{N}" "𝓝"
    "\\mathscr{O}" "𝓞"
    "\\mathscr{P}" "𝓟"
    "\\mathscr{Q}" "𝓠"
    "\\mathscr{R}" "𝓡"
    "\\mathscr{S}" "𝓢"
    "\\mathscr{T}" "𝓣"
    "\\mathscr{U}" "𝓤"
    "\\mathscr{V}" "𝓥"
    "\\mathscr{W}" "𝓦"
    "\\mathscr{X}" "𝓧"
    "\\mathscr{Y}" "𝓨"
    "\\mathscr{Z}" "𝓩"
    "\\mathsf{A}" "𝖠"
    "\\mathsf{B}" "𝖡"
    "\\mathsf{C}" "𝖢"
    "\\mathsf{D}" "𝖣"
    "\\mathsf{E}" "𝖤"
    "\\mathsf{F}" "𝖥"
    "\\mathsf{G}" "𝖦"
    "\\mathsf{H}" "𝖧"
    "\\mathsf{I}" "𝖨"
    "\\mathsf{J}" "𝖩"
    "\\mathsf{K}" "𝖪"
    "\\mathsf{L}" "𝖫"
    "\\mathsf{M}" "𝖬"
    "\\mathsf{N}" "𝖭"
    "\\mathsf{O}" "𝖮"
    "\\mathsf{P}" "𝖯"
    "\\mathsf{Q}" "𝖰"
    "\\mathsf{R}" "𝖱"
    "\\mathsf{S}" "𝖲"
    "\\mathsf{T}" "𝖳"
    "\\mathsf{U}" "𝖴"
    "\\mathsf{V}" "𝖵"
    "\\mathsf{W}" "𝖶"
    "\\mathsf{X}" "𝖷"
    "\\mathsf{Y}" "𝖸"
    "\\mathsf{Z}" "𝖹"
    "\\mathsf{a}" "𝖺"
    "\\mathsf{b}" "𝖻"
    "\\mathsf{c}" "𝖼"
    "\\mathsf{d}" "𝖽"
    "\\mathsf{e}" "𝖾"
    "\\mathsf{f}" "𝖿"
    "\\mathsf{g}" "𝗀"
    "\\mathsf{h}" "𝗁"
    "\\mathsf{i}" "𝗂"
    "\\mathsf{j}" "𝗃"
    "\\mathsf{k}" "𝗄"
    "\\mathsf{l}" "𝗅"
    "\\mathsf{m}" "𝗆"
    "\\mathsf{n}" "𝗇"
    "\\mathsf{o}" "𝗈"
    "\\mathsf{p}" "𝗉"
    "\\mathsf{q}" "𝗊"
    "\\mathsf{r}" "𝗋"
    "\\mathsf{s}" "𝗌"
    "\\mathsf{t}" "𝗍"
    "\\mathsf{u}" "𝗎"
    "\\mathsf{v}" "𝗏"
    "\\mathsf{w}" "𝗐"
    "\\mathsf{x}" "𝗑"
    "\\mathsf{y}" "𝗒"
    "\\mathsf{z}" "𝗓"))

;; subscripts
(text
  word: (word) @text.math
  (#has-ancestor? @text.math subscript)
  (#has-ancestor? @text.math math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @text.math label_definition text_mode)
  (#any-of? @text.math
    "0"
    "1"
    "2"
    "3"
    "4"
    "5"
    "6"
    "7"
    "8"
    "9"
    "a"
    "e"
    "h"
    "i"
    "j"
    "k"
    "l"
    "m"
    "n"
    "o"
    "p"
    "r"
    "s"
    "t"
    "u"
    "v"
    "x")
  (#set-pairs! @text.math conceal
    "0" "₀"
    "1" "₁"
    "2" "₂"
    "3" "₃"
    "4" "₄"
    "5" "₅"
    "6" "₆"
    "7" "₇"
    "8" "₈"
    "9" "₉"
    "a" "ₐ"
    "e" "ₑ"
    "h" "ₕ"
    "i" "ᵢ"
    "j" "ⱼ"
    "k" "ₖ"
    "l" "ₗ"
    "m" "ₘ"
    "n" "ₙ"
    "o" "ₒ"
    "p" "ₚ"
    "r" "ᵣ"
    "s" "ₛ"
    "t" "ₜ"
    "u" "ᵤ"
    "v" "ᵥ"
    "x" "ₓ"))

(text
  word: (subscript) @text.math
  (#has-ancestor? @text.math math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @text.math label_definition text_mode)
  (#any-of? @text.math
    "_0"
    "_1"
    "_2"
    "_3"
    "_4"
    "_5"
    "_6"
    "_7"
    "_8"
    "_9"
    "_a"
    "_e"
    "_h"
    "_i"
    "_j"
    "_k"
    "_l"
    "_m"
    "_n"
    "_o"
    "_p"
    "_r"
    "_s"
    "_t"
    "_u"
    "_v"
    "_x")
  (#set-pairs! @text.math conceal
    "_0" "₀"
    "_1" "₁"
    "_2" "₂"
    "_3" "₃"
    "_4" "₄"
    "_5" "₅"
    "_6" "₆"
    "_7" "₇"
    "_8" "₈"
    "_9" "₉"
    "_a" "ₐ"
    "_e" "ₑ"
    "_h" "ₕ"
    "_i" "ᵢ"
    "_j" "ⱼ"
    "_k" "ₖ"
    "_l" "ₗ"
    "_m" "ₘ"
    "_n" "ₙ"
    "_o" "ₒ"
    "_p" "ₚ"
    "_r" "ᵣ"
    "_s" "ₛ"
    "_t" "ₜ"
    "_u" "ᵤ"
    "_v" "ᵥ"
    "_x" "ₓ"))

(text
  word: (word) @operator
  (#has-ancestor? @operator subscript)
  (#has-ancestor? @operator math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @operator label_definition text_mode)
  (#any-of? @operator
    "+"
    "-"
    "/")
  (#set-pairs! @operator conceal
    "+" "₊"
    "-" "₋"
    "/" "ˏ"))

(text
  word: (subscript) @operator
  (#has-ancestor? @operator math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @operator label_definition text_mode)
  (#any-of? @operator
    "_+"
    "_-"
    "_/")
  (#set-pairs! @operator conceal
    "_+" "₊"
    "_-" "₋"
    "_/" "ˏ"))

;; superscripts
(text
  word: (word) @text.math
  (#has-ancestor? @text.math superscript)
  (#has-ancestor? @text.math math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @text.math label_definition text_mode)
  (#any-of? @text.math
    "0"
    "1"
    "2"
    "3"
    "4"
    "5"
    "6"
    "7"
    "8"
    "9"
    "A"
    "B"
    "D"
    "E"
    "G"
    "H"
    "I"
    "J"
    "K"
    "L"
    "M"
    "N"
    "O"
    "P"
    "R"
    "T"
    "U"
    "V"
    "W"
    "a"
    "b"
    "c"
    "d"
    "e"
    "f"
    "g"
    "h"
    "i"
    "j"
    "k"
    "l"
    "m"
    "n"
    "o"
    "p"
    "r"
    "s"
    "t"
    "u"
    "v"
    "w"
    "x"
    "y"
    "z")
  (#set-pairs! @text.math conceal
    "0" "⁰"
    "1" "¹"
    "2" "²"
    "3" "³"
    "4" "⁴"
    "5" "⁵"
    "6" "⁶"
    "7" "⁷"
    "8" "⁸"
    "9" "⁹"
    "A" "ᴬ"
    "B" "ᴮ"
    "D" "ᴰ"
    "E" "ᴱ"
    "G" "ᴳ"
    "H" "ᴴ"
    "I" "ᴵ"
    "J" "ᴶ"
    "K" "ᴷ"
    "L" "ᴸ"
    "M" "ᴹ"
    "N" "ᴺ"
    "O" "ᴼ"
    "P" "ᴾ"
    "R" "ᴿ"
    "T" "ᵀ"
    "U" "ᵁ"
    "V" "ⱽ"
    "W" "ᵂ"
    "a" "ᵃ"
    "b" "ᵇ"
    "c" "ᶜ"
    "d" "ᵈ"
    "e" "ᵉ"
    "f" "ᶠ"
    "g" "ᵍ"
    "h" "ʰ"
    "i" "ⁱ"
    "j" "ʲ"
    "k" "ᵏ"
    "l" "ˡ"
    "m" "ᵐ"
    "n" "ⁿ"
    "o" "ᵒ"
    "p" "ᵖ"
    "r" "ʳ"
    "s" "ˢ"
    "t" "ᵗ"
    "u" "ᵘ"
    "v" "ᵛ"
    "w" "ʷ"
    "x" "ˣ"
    "y" "ʸ"
    "z" "ᶻ"))

(text
  word: (superscript) @text.math
  (#has-ancestor? @text.math math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @text.math label_definition text_mode)
  (#any-of? @text.math
    "_0"
    "_1"
    "_2"
    "_3"
    "_4"
    "_5"
    "_6"
    "_7"
    "_8"
    "_9"
    "_A"
    "_B"
    "_D"
    "_E"
    "_G"
    "_H"
    "_I"
    "_J"
    "_K"
    "_L"
    "_M"
    "_N"
    "_O"
    "_P"
    "_R"
    "_T"
    "_U"
    "_V"
    "_W"
    "_a"
    "_b"
    "_c"
    "_d"
    "_e"
    "_f"
    "_g"
    "_h"
    "_i"
    "_j"
    "_k"
    "_l"
    "_m"
    "_n"
    "_o"
    "_p"
    "_r"
    "_s"
    "_t"
    "_u"
    "_v"
    "_w"
    "_x"
    "_y"
    "_z")
  (#set-pairs! @text.math conceal
    "_0" "⁰"
    "_1" "¹"
    "_2" "²"
    "_3" "³"
    "_4" "⁴"
    "_5" "⁵"
    "_6" "⁶"
    "_7" "⁷"
    "_8" "⁸"
    "_9" "⁹"
    "_A" "ᴬ"
    "_B" "ᴮ"
    "_D" "ᴰ"
    "_E" "ᴱ"
    "_G" "ᴳ"
    "_H" "ᴴ"
    "_I" "ᴵ"
    "_J" "ᴶ"
    "_K" "ᴷ"
    "_L" "ᴸ"
    "_M" "ᴹ"
    "_N" "ᴺ"
    "_O" "ᴼ"
    "_P" "ᴾ"
    "_R" "ᴿ"
    "_T" "ᵀ"
    "_U" "ᵁ"
    "_V" "ⱽ"
    "_W" "ᵂ"
    "_a" "ᵃ"
    "_b" "ᵇ"
    "_c" "ᶜ"
    "_d" "ᵈ"
    "_e" "ᵉ"
    "_f" "ᶠ"
    "_g" "ᵍ"
    "_h" "ʰ"
    "_i" "ⁱ"
    "_j" "ʲ"
    "_k" "ᵏ"
    "_l" "ˡ"
    "_m" "ᵐ"
    "_n" "ⁿ"
    "_o" "ᵒ"
    "_p" "ᵖ"
    "_r" "ʳ"
    "_s" "ˢ"
    "_t" "ᵗ"
    "_u" "ᵘ"
    "_v" "ᵛ"
    "_w" "ʷ"
    "_x" "ˣ"
    "_y" "ʸ"
    "_z" "ᶻ"))

(text
  word: (word) @operator
  (#has-ancestor? @operator superscript)
  (#has-ancestor? @operator math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @operator label_definition text_mode)
  (#any-of? @operator
    "+"
    "-"
    "/"
    "<"
    "="
    ">"
    "\.")
  (#set-pairs! @operator conceal
    "+" "⁺"
    "-" "⁻"
    "/" "ˊ"
    "<" "˂"
    "=" "˭"
    ">" "˃"
    "\." "˙"))

(text
  word: (superscript) @operator
  (#has-ancestor? @operator math_environment inline_formula displayed_equation)
  (#not-has-ancestor? @operator label_definition text_mode)
  (#any-of? @operator
    "_+"
    "_-"
    "_/"
    "_<"
    "_="
    "_>"
    "_\.")
  (#set-pairs! @operator conceal
    "_+" "⁺"
    "_-" "⁻"
    "_/" "ˊ"
    "_<" "˂"
    "_=" "˭"
    "_>" "˃"
    "_\." "˙"))

