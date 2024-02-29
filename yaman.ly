\version "2.20.0"

\header {
  title   = "Kalyani / Yaman"
  composer = "Classical 16th century"
  tagline  = ""
}

ns = \hide Score.Stem
ws = \undo \hide Score.Stem

\new PianoStaff <<

  \hide Score.BarLine
  \hide PianoStaff.SpanBar
  \new Staff { \relative c' {

    \tempo "Timeless" 
    \key c \major

     \override BreathingSign.text =
       \markup { \musicglyph "scripts.rcomma" }

    \omit Score.TimeSignature

    \time 2/4 \ns f4^Pakad \ws \slashedGrace { e32( g d f} \ns e4)  \breathe |
    \time 9/4 d4 e \ws \slashedGrace a8( \ns g4) \ws \slashedGrace g16( \ns a1)  g4 f \breathe |
    \time 10/4 e4 \ws \slashedGrace a8( \ns g4) \ws \slashedGrace b8( \ns a4) b c1 b4 a  \breathe | 
    \time 9/4 a4 b d e1 \ws \slashedGrace e16( \ns d4) c \breathe | \break
    \time 5/4 b4 d e f s \breathe  |
    \time 10/4 d4 e \ws \slashedGrace a8( \ns g4) \ws \slashedGrace g16( \ns a1) g4 f s \breathe  | 
    \time 9/4 g4 e f e1 d4 c \breathe   | 
    \time 7/4 d4 c1 b4 a \breathe |
    \time 8/4 b4 g a1 g4 f \breathe | 
    \time 11/4 e4 g a8 b c4 g4 \ws \slashedGrace g16( \ns a1) g4 f
    \undo \hide Score.BarLine \bar "||"
  }}

  \new Staff { \relative c {

    \clef "bass"
    \key c \major

    \omit Score.TimeSignature

    c4 <g' a> <g a>
      \override NoteHead.style = #'mensural
        \parenthesize c16
        \parenthesize d
        \parenthesize e
        \parenthesize f
      \override NoteHead.style = #'default
      \ws \slashedGrace c,,8( \ns f4)
      \override NoteHead.style = #'mensural
        \parenthesize <a,, f' d'>
      \override NoteHead.style = #'default
  }}
>>


\new PianoStaff <<
  \new Staff { \relative c' {
    \clef "treble"
    \key c \major
    \tempo "Gat 1 - sthayi" 4 = 60    
 
    \bar ".|:" 
    \override TextSpanner.bound-details.left.text = "2x only"
    a'\startTextSpan g16 e e8\stopTextSpan 
      \override TextSpanner.bound-details.left.text = "(both x)"
      \magnifyMusic 0.7 { f8.\turn\startTextSpan g16 } a8 a8\stopTextSpan
    g4 \slashedGrace {a16( g} f8) f e4 g
    \slashedGrace { c,8( f g } a4) \slashedGrace <c' c,>16( a,4) a4
      \slashedGrace {b16( a} g8) g8\mordent a4 
      \slashedGrace {d,8( g a c} b8) b \slashedGrace d16 c4 \slashedGrace { d16( c } b4)

    \slashedGrace {d16( c b a g } a4) \slashedGrace a8( g8)\mordent g16 e f4 
      \slashedGrace {f16(} e8) e16 d32 e 
    f4 e8 e8 d4  \slashedGrace {e16( d} c4)
    b4 d8 e\mordent f4 \slashedGrace f8( e8) e16 d32 e 
    g4 a8 a \slashedGrace d16( c4) \slashedGrace {d16( c} b4)

    \bar ":|."
  }}

  \new Staff { \relative c {
    \clef "bass"
    \key c \major

    c4 <g' a> <g a> f,
    \parenthesize <f' g> <g a> <g a> f,
    <c' \parenthesize f,>8 <g' a>4 <g a> <g a>16 f,~ f8 <f' g>8~
    <f g>8 <g a>4 <g a>4 <g a>8~ <g a>16 f,8 f16

    c'4 <g' a> <g a> f,
    \parenthesize <f' g> <g a> <g a> f,
    <c' \parenthesize f,>8 <g' a>4 <g a> <g a>16 f,~ f8 <f' g>8~
    <f g>8 <g a>4 <g a>4 <g a>8~ <g a>16 f,8 f16

  }}
>>

\new PianoStaff <<
  \new Staff { \relative c' {
    \clef "treble"
    \key c \major
    \tempo "tihai 1" 4 = 60    
 
    e'8 e8 d16\mordent c \tuplet 3/2 8 { f e d c b a } c d  \slashedGrace d16( b8) \slashedGrace {c16( b} a8) f4

   <g b d>-^

    e'8 e8 d16\mordent c \tuplet 3/2 8 { f e d c b a } c d  \slashedGrace d16( b8) \slashedGrace {c16( b} a8) f4
 
   <g c e>-^

    e'8 e8 d16\mordent c \tuplet 3/2 8 { f e d c b a } c d  \slashedGrace e16( d8) \slashedGrace {g16( f} e8) f4
  }}

  \new Staff { \relative c {
    \clef "bass"
    \key c \major
    
    c4 <g' a> <g a> f, <f' g>
    g
    c,4 <g' a> <g a> f, <f' g>
    b,
    c4 <g' a> <g a> f, c'
  }}
>>
