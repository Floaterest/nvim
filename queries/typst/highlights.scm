;; extends

; ((call 
;   item: (ident) @constant (#eq? @constant "cal") 
;   (formula (letter) @markup.math (#eq? @markup.math "F"))
;   ) @conceal (#set! conceal "F"))

("$" @markup.math (#set! conceal ""))
("*" @markup.strong (#set! conceal ""))
("_" @markup.italic (#set! conceal ""))

((ident) @markup.math (#eq? @markup.math "nothing") (#set! conceal "∅"))
((ident) @markup.math (#eq? @markup.math "in") (#set! conceal "∈"))
((ident) @markup.math (#eq? @markup.math "quad") (#set! conceal " "))

(attach sub: (number) @markup.math (#eq? @markup.math "0") (#set! conceal "₀"))
(attach sub: (number) @markup.math (#eq? @markup.math "1") (#set! conceal "₁"))
(attach sub: (number) @markup.math (#eq? @markup.math "2") (#set! conceal "₂"))
(attach sub: (number) @markup.math (#eq? @markup.math "3") (#set! conceal "₃"))
(attach sub: (number) @markup.math (#eq? @markup.math "4") (#set! conceal "₄"))
(attach sub: (number) @markup.math (#eq? @markup.math "5") (#set! conceal "₅"))
(attach sub: (number) @markup.math (#eq? @markup.math "6") (#set! conceal "₆"))
(attach sub: (number) @markup.math (#eq? @markup.math "7") (#set! conceal "₇"))
(attach sub: (number) @markup.math (#eq? @markup.math "8") (#set! conceal "₈"))
(attach sub: (number) @markup.math (#eq? @markup.math "9") (#set! conceal "₉"))
(attach sub: (letter) @markup.math (#eq? @markup.math "a") (#set! conceal "ₐ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "e") (#set! conceal "ₑ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "h") (#set! conceal "ₕ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "i") (#set! conceal "ᵢ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "j") (#set! conceal "ⱼ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "k") (#set! conceal "ₖ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "l") (#set! conceal "ₗ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "m") (#set! conceal "ₘ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "n") (#set! conceal "ₙ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "o") (#set! conceal "ₒ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "p") (#set! conceal "ₚ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "r") (#set! conceal "ᵣ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "s") (#set! conceal "ₛ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "t") (#set! conceal "ₜ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "u") (#set! conceal "ᵤ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "v") (#set! conceal "ᵥ"))
(attach sub: (letter) @markup.math (#eq? @markup.math "x") (#set! conceal "ₓ"))

((ident) @markup.math (#eq? @markup.math "AA") (#set! conceal "𝔸"))
((ident) @markup.math (#eq? @markup.math "BB") (#set! conceal "𝔹"))
((ident) @markup.math (#eq? @markup.math "CC") (#set! conceal "ℂ"))
((ident) @markup.math (#eq? @markup.math "DD") (#set! conceal "𝔻"))
((ident) @markup.math (#eq? @markup.math "EE") (#set! conceal "𝔼"))
((ident) @markup.math (#eq? @markup.math "FF") (#set! conceal "𝔽"))
((ident) @markup.math (#eq? @markup.math "GG") (#set! conceal "𝔾"))
((ident) @markup.math (#eq? @markup.math "HH") (#set! conceal "ℍ"))
((ident) @markup.math (#eq? @markup.math "II") (#set! conceal "𝕀"))
((ident) @markup.math (#eq? @markup.math "JJ") (#set! conceal "𝕁"))
((ident) @markup.math (#eq? @markup.math "KK") (#set! conceal "𝕂"))
((ident) @markup.math (#eq? @markup.math "LL") (#set! conceal "𝕃"))
((ident) @markup.math (#eq? @markup.math "MM") (#set! conceal "𝕄"))
((ident) @markup.math (#eq? @markup.math "NN") (#set! conceal "ℕ"))
((ident) @markup.math (#eq? @markup.math "OO") (#set! conceal "𝕆"))
((ident) @markup.math (#eq? @markup.math "PP") (#set! conceal "ℙ"))
((ident) @markup.math (#eq? @markup.math "QQ") (#set! conceal "ℚ"))
((ident) @markup.math (#eq? @markup.math "RR") (#set! conceal "ℝ"))
((ident) @markup.math (#eq? @markup.math "SS") (#set! conceal "𝕊"))
((ident) @markup.math (#eq? @markup.math "TT") (#set! conceal "𝕋"))
((ident) @markup.math (#eq? @markup.math "UU") (#set! conceal "𝕌"))
((ident) @markup.math (#eq? @markup.math "VV") (#set! conceal "𝕍"))
((ident) @markup.math (#eq? @markup.math "WW") (#set! conceal "𝕎"))
((ident) @markup.math (#eq? @markup.math "XX") (#set! conceal "𝕏"))
((ident) @markup.math (#eq? @markup.math "YY") (#set! conceal "𝕐"))
((ident) @markup.math (#eq? @markup.math "ZZ") (#set! conceal "ℤ"))