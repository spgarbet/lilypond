\version "2.22.1"
\header {
  title   = \markup {\italic{Rāga Jogiya Kalingra} 'Aroma of Saffron'}
  composer = "Deccan Classical 18th century"
  tagline  = ""
}

\layout{
  #(layout-set-staff-size 16)  
}

ns = \hide Score.Stem
ws = \undo \hide Score.Stem
sm = \tweak font-size -3

% Why does the first Staff never appear?
\new Staff { \relative c' {
  <a b>1
}}

\new Staff { \relative c' {
  \clef "bass"
  \key b \major
  \omit Score.TimeSignature
   
  \time 4/4 \ottava -1 <a,,, b>1^Opening  \ottava 0 

  \time 5/4 \ns \repeat volta 2 { fis''4 \parenthesize b \parenthesize <b c>  b b,} 

  \time 2/4 s2
  \hide Score.BarLine
  \clef "treble"

  \time 10/4 b'''4-(^"R.H." ais g e-) fis-(_"L.H." dis c b-)
  s2 
  \time 3/4 \ottava 1 \grace {\ws fis''''32 c b \ns} fis4 \ottava 0
  s2 
  \time 16/4 b,,4-( c e dis b ais^2 b^3 ais g fis e dis c b-)
  s2 
  \time 1/4 \ottava 1 \grace {\ws fis''''32 c b \ns} fis4

  \bar "||"
}}

\new Staff { \relative c' {
  \tempo "Timeless and delicately nimble" 
  \key b \major
  \override BreathingSign.text = \markup { \musicglyph "scripts.rcomma" }
  \omit Score.TimeSignature
  \hide Score.BarLine

  \time 1/4 \ns g4\pp^Pakad  |
  \time 2/4 \ws \slashedGrace g16( \ns b4 c)  |
  \time 3/4 c( b ais) |
  \time 3/4 \ws \slashedGrace g16(\> \ns b4 c \ws \slashedGrace e,16 \ns e'4)\! |
  \breathe 

  \time 4/4 dis(\pp e \ws \grace {e16 dis} \ns c4 b)  |
  \time 3/4 ais( b c) |
  \time 5/4 ais( b \ws \slashedGrace e16 \ns dis4 e fis) |
  \time 5/4 fis( g fis e dis)
  \time 7/4 dis( fis e dis c b ais) |
  \breathe

  \time 3/4 b( c dis) |
  \time 2/4 e( dis\<) |
  \time 2/4 e( dis\!) |
  \time 2/4 c(\ppp\prall^\markup {\natural} b) |
  \breathe

  \time 5/4 ais(\p\< b dis^> dis dis) |
  \time 5/4 \ws \slashedGrace g,16 \ns b4( c e^> e e) |
  \time 5/4 \ws \slashedGrace {fis16 e} \ns  dis4( e g^> g g\!) |
  \time 2/4 g(\prall\ppp^\markup {\natural} fis) |
  \breathe

  \time 6/4 \ws \slashedGrace {fis16 e} \ns dis4(\p e g ais ais \ws \slashedGrace { b16 ais g} fis4) |
  \time 7/4 c'\prall\pp^\markup {\natural}( b\> ais\prall g fis e dis) |
  \time 1/4 \ws \slashedGrace dis16( \ns dis'4)\!
}}

\new Staff { \relative c' {
  \tempo "Medium Keherwa tal" 
  \key b \major
  \clef "bass"

  \time 8/4

  \repeat volta 2 {\bar ".|:" <\parenthesize b,, fis'>4^X\pp b' b^"+" b, <\tweak font-size -3 fis' c'>^O <\tweak font-size -3 c' b> b^"+" b,}
  \repeat volta 2 {<b fis'>4^X b' fis^+ b fis^O b b^+ b, | fis'^X b b^+ b, <fis' c'>^O <b c> b^+ b,}
}}

\new Staff { \relative c' {
  \tempo "Gat 1 - sthāyī" 
  \key b \major
  \clef "treble"
  \time 8/4
 
  \partial 2 r8^+ b16 c dis8 e |
  e8^X \slashedGrace fis16 g8 g g g^+\prall^\markup{\natural}\ppp fis fis e
    \tuplet 3/2 {dis16^O e g} fis8~ fis4~ fis4.^+ \tuplet 3/2 {g16 fis e} |
  dis8^X e \slashedGrace {e16 dis} c4~ c^+ \slashedGrace {e16 dis c} b4 \slashedGrace b16
    ais8^O b g4 r8^+ fis16 g ais8 c |
  \slashedGrace b16 c8^X dis dis dis dis^+\prall c c\prall^\markup{\natural}\ppp b
    \tuplet 3/2 {ais16^O c dis} c8~ c4 c4.^+ \tuplet 3/2 {e16 dis c} |
  \clef "bass"
  ais8^X b \slashedGrace {b16 ais} g4~ g8^+ g8\prall^\markup{\natural}\ppp fis4 
    \slashedGrace {g16 fis} e8^O fis dis4 r2^+ |
}}

\new Staff { \relative c, {
  \tempo "Gat 1 - antara" 
  \key b \major
  \clef "bass"
  \time 8/4

  \partial 2 r8^+ <ais' ais'>8~ <ais ais'>16 <b b'>8. |
  \clef "treble"
  <dis dis'>8.^X <e e'>16~ <e e'>8 <g g'>8~ <g g'>16^+ <ais ais'>8. <ais ais'>8. <ais ais'>16~ 
    <ais ais'>8^O  <ais ais'>8~ <ais ais'>16 <ais ais'>8. <b b'>8.^+ <fis fis'>16 ~ <fis fis'>4~ |
  <fis fis'>2~^X <fis fis'>8^+  <dis dis'>8~ <dis dis'>16 <e e'>8. 
    <g g'>8.^O <ais ais'>16~ <ais ais'>8 <c c'>8~ <c c'>16^+ <dis dis'>16 <dis dis'>8 <dis dis'> <dis dis'> |
  <e e'>8^X \slashedGrace fis'16 <g, g'>8~ <g g'> g' g^+\ppp\prall^\markup{\natural} fis fis\prall e
    e^O\prall e dis16 e fis8~ fis2^+ |
  \slashedGrace {g16 fis e} dis8^X e \slashedGrace {e dis} c2 \slashedGrace {e16 dis c} b4
    \slashedGrace b16 ais8^O b \slashedGrace fis,16 fis'4~ fis8^+ r8 r4 |
}}

\new Staff { \relative c' {
  \tempo "tihāī" 
  \key b \major
  \clef "treble"
  \time 8/4
  
  r8^X
  b16->( c dis8 e16-> fis g8^+ ais16 b)
  b,16->( c dis8 e16^O-> fis g8 ais16 b)
  b,16->( c dis8^+ e16-> fis g8 ais16 c) |
  b4^X 
}}
