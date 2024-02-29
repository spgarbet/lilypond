
\header {
  title   = "Kalyani"
  composer = "Classical 16th century"
  tagline  = ""
}

\layout{
  #(layout-set-staff-size 16)  
}


ns = \hide Score.Stem
ws = \undo \hide Score.Stem


\new Staff { \relative c' {
  \clef "treble"
  \key c \major
  \omit Score.TimeSignature
  
  \time 4/4 \grace {e32->^mohra g} f4-> f \slashedGrace f16->  <c' f>4-> 
    \grace {g32-> f} e4->
  \time 4/4 e4 \clef "bass" <f,, c' f>8. \clef "treble" a''32 g32 
    << { f4. s8 } { s8 s4 \grace  <c' f>4.} >> 
  \bar "||"
 
  \time 9/4  \clef "bass"
  c,,4^Drone <g' a> <g a>
    \ns
    \override NoteHead.style = #'mensural
      \parenthesize c,
      \parenthesize d
      \parenthesize e
      \parenthesize f
    \ws
    \override NoteHead.style = #'default
    \ws \slashedGrace c,8( \ns f4)
    \override NoteHead.style = #'mensural
      \parenthesize <a,, f' d'>
    \override NoteHead.style = #'default
  \bar "||"
}}

\new Staff { \relative c' {
  \tempo "Timeless" 
  \key c \major
  \override BreathingSign.text =
  \markup { \musicglyph "scripts.rcomma" }
  \omit Score.TimeSignature
  \hide Score.BarLine

  \time 13/8 \ns g'4(^Pakad a \slashedGrace c b4 b4 b16 b b4^\prall-> a4) \breathe |
  \time 2/8 g8( a) \breathe |
  \time 6/4 \slashedGrace d4( c b^\prall a g g16 e e g f4^\mordent) \breathe |
  \time 4/8 g16( e4^\prall d16 e8->)  |

  \undo \hide Score.BarLine \bar "||"
}}

\new Staff { \relative c' {
  \key c \major
  \override BreathingSign.text =
  \markup { \musicglyph "scripts.rcomma" }
  \omit Score.TimeSignature
  \hide Score.BarLine
  \ns
  \time 1/4 \grace {a'16( b} d16 d d^\prall c) \breathe |
  \time 11/16 \ws \grace {a16( b d} \ns e8 g g^\prall f e) s16  \breathe |
  \time 5/8 d8( e^\mordent g a g)  |

  \undo \hide Score.BarLine \bar "||" 

  \time 6/8 d8( e^\mordent c b^\prall d c) \hide Score.BarLine \breathe |
  \time 10/8 a8( g a c^\prall b^\prall a g^\prall e e f) \breathe |
  \time 5/8 \ws \grace {g16( e} \ns e8^\prall d c \grace {b} d c)  |

  \undo \hide Score.BarLine \bar "||"

}}

\new PianoStaff <<
  \new Staff { \relative c' {
    \clef "treble"
    \key c \major
    \tempo "Gat 1 - sthayi" 4 = 60    

    r4^"o" r4 \magnifyMusic 0.7 { f8.\turn g16 } a8 a8 |
    g4 \slashedGrace {a16( g} f8) f e4 g
   

    \repeat volta 2 {

    \slashedGrace { c,8( f g } a4)^"X" \slashedGrace <c' c,>16( a,4) a4
      \slashedGrace {b16( a} g8) g8\mordent a4 
    \slashedGrace {d,8( g a c} b8) b \slashedGrace d16 c4 \slashedGrace { d16( c } b4)
    \slashedGrace {d16(^"o" c b a g } a4) 
      \slashedGrace a8( g8)\prall g16 e f4 \slashedGrace {f16(} e8) e16 d32 e 
    f4 e8 e8 d4  \slashedGrace {e16( d} c4)
    b4^"X" d8 e\mordent f4 \slashedGrace f8( e8) e16 d32 e 
    g4 a8 a \slashedGrace d16( c4) \slashedGrace {d16( c} b4)
    }

    \alternative {
      { 
        a4^"o" g16 e e8 \magnifyMusic 0.7 { f8.\turn g16 } a8 a8 |
        g4 \slashedGrace {a16( g} f8) f e4 g |
      }
      { 
        %\tempo \markup "antara"
        r2.^"o antara"  c8 c16 d32 c |
        b4 d8 d \slashedGrace f32 e4 \slashedGrace {g16 f e} d4  |
      } 
    }
 
    \slashedGrace {a16 b c e} f4^"X" f4 f4 \slashedGrace {g16( f} e16 d e8 |
    \slashedGrace a16 g4 a8 a \slashedGrace c16 b4 \slashedGrace {c16 b} a4 |

    g16^"o" e e g f g32 f e8 d8. c16) a'8( a16 b32 a |
    g4 \slashedGrace {a16 g} f8\prall f32 g f16 e8. d32 e \tuplet 3/2 {f8 e f} | 
    f32^"X" e d8. \slashedGrace {f16 e d} c4 \slashedGrace {b16 c d} e8. f16) e16( d d e32 d |
    c4 b8 b16. e32 \slashedGrace c8 d8 c a4) |  \bar "||"
  }}

  \new Staff { \relative c {
    \clef "bass"
    \key c \major

    % Pickup "o"
    c4 <g' a> <g a> f,
    \parenthesize <f' g> <g a> <g a> f,

    \repeat volta 2 {

      \slashedGrace {s4.}

      % X
      <c' \parenthesize f,>8 <g' a>4 <g a> <g a>16 f,~ f8 <f' g>8~
      <f g>8 <g a>4 <g a>4 <g a>8~ <g a>16 f,8 f16 

      % o
      c'4 <g' a> <g a> f,
      \parenthesize <f' g> <g a> <g a> f,

      % X
      <c' \parenthesize f,>8 <g' a>4 <g a> <g a>16 f,~ f8 <f' g>8~
      <f g>8 <g a>4 <g a>4 <g a>8~ <g a>16 f,8 f16 
    }

    \alternative {
      { 
        c'4 <g' a> <g a> f,
        \parenthesize <f' g> <g a> <g a> f,
      }
      { 
        c'4 <g' a> <g a> f,
        \parenthesize <f' g> <g a> <g a> f,
      }
    }

    % X
    <c' \parenthesize f,>8 <g' a>4 <g a> <g a>16 f,~ f8 <f' g>8~
    <f g>8 <g a>4 <g a>4 <g a>8~ <g a>16 f,8 f16

    % o
    c'4 <g' a> <g a> f,
    \parenthesize <f' g> <g a> <g a> f,

    % X
    <c' \parenthesize f,>8 <g' a>4 <g a> <g a>16 f,~ f8 <f' g>8~
    <f g>8 <g a>4 <g a>4 <g a>8~ <g a>16 f,8 f16

  }}
>>

\new PianoStaff <<
  \new Staff { \relative c' {
    \clef "treble"
    \key c \major
    \tempo "Variations" 4 = 60    

    % tan
    r4^"o" e16 g^\mordent a16 b c b\prall a g \slashedGrace c16 b a g f |
    g4 \grace {a16 g} f8 f e4 g |

    % Laykari 3/4 + tihai
    a8^\mordent^"X  Laykari 3/4" c,16 a'~ a c, a'8^\mordent c,16 g'8 g16 a8^\mordent c,16 b'~ |
    b b c8^\mordent c,16 b'8 c,16 a'8^\mordent c,16 g'~ g c, f8^\mordent |
    c16^"o" a'8 a16 g8^\prall c,16 f~ f f e8^\prall 
    
    r16 c16->^"(tihai)" g'8 | g16 c, e^\prall r16
    c16-> g'8 g16  c, e^\prall r16
    c16-> g'8 g16 c,  |


    % Chand 2+2+3
    <a' a'>8^"X  Chand" <a a'> <a a'>8.-> a16~ a16 a8 a16->~ a8 g8 |
    g8^\mordent a8~-> a16 a8 \grace {d,8 g a c} b16~ b16 b8.-> \slashedGrace {d16} c8 \slashedGrace {d16} c8 |
    \slashedGrace {d16 c} b8.->^"o" b16~ b \grace {d16 c b a g} a8 a16~-> a8 \slashedGrace{a16} g8^\prall g16 e f8~-> |
    f8
    %tihai
    e16^"(tihai)" d32 e32 f8 \grace {f32} e8->
    e16 d32 e32 f8 \grace {f32} e8-> 
    e16 f32 g32 

    a4^"X  left hand" a a g8 g |
    a4 b8 b c4 b |
    \grace {c16 b} a4^"o" g <f a>16. <f a>16. <f a>16~  <f a>4 |
    g8 g~-> g f16-> <e g>~ <e g>8. f16-> <e g>8. g16
 
    \grace {f16 g} a4^"X ret. to Gat 1"  
  }}

  \new Staff { \relative c {
    \clef "bass"
    \key c \major

    % o
    c4 <g' a> <g a> f,
    \parenthesize <f' g> <g a> <g a> f,

    % X
    <c' \parenthesize f,>8 <g' a>4 <g a> <g a>16 f,~ f8 <f' g>8~
    <f g>8 <g a>4 <g a>4 <g a>8~ <g a>16 f,8 f16
    % o
    c'4 <g' a> <g a> f,
    \parenthesize <f' g> <g a> <g a> f,

    % X
    <c' \parenthesize f,>8 <g' a>4 <g a> <g a>16 f,~ f8 <f' g>8~
    <f g>8 <g a>4 <g a>4 <g a>8~ <g a>16 f,8 f16
    % o
    c'4 <g' a> <g a> f,
    \parenthesize <f' g> <g a> <g a> f,

    % Spotlight
    <f c'>16-> f'32 e f g f e 
      f16 <f, c'>16-> f'32 g f e
      f16 c g <c f,>->
      f32 e f c f e f c |

    f32 d f c f d f c
      g' d  g  c, g' d  g  c,
      a' d, a' c, a' d, a' c,
      b' c, b' c, b' c, b' c, |

    c'32 c, c' c, c' c, c' c,
      b'32 c, b' c, b' c, b' c,
      a'32-> c,16 a'32-> c,16 a'32-> c,32
      f32 g f c f-> f,16 f'32-> |

    f,8 g'32 f e c
      d16 e f-> g32-> f 
      e32 c32 d16 e f->
      g32-> f e c d16 e |

    <f, f'>8 <f' g>
  }}
>>

\new PianoStaff <<
  \new Staff { \relative c' {
    \clef "treble"
    \key c \major
    \tempo "tihai 1" 4 = 60    

    r2.^"o" d16 e\mordent g a |
    e g\mordent a b g16 a\mordent b d a b d e b d\mordent e g  |
 
    e8^"X" e8 d16\mordent c \tuplet 3/2 8 { f e d c b a } c d  \slashedGrace d16( b8) \slashedGrace {c16( b} a8) f4

   <g b d>-^

    e'8 e8 d16\mordent c \tuplet 3/2 8 { f e d c^"o" b a } c d  \slashedGrace d16( b8) \slashedGrace {c16( b} a8) f4
 
   <g b e>-^

    e'8 e8 d16\mordent c \tuplet 3/2 8 { f e d c b a } c d  \slashedGrace e16( d8) \slashedGrace {g16( f} e8) f4^"X"
  }}

  \new Staff { \relative c {
    \clef "bass"
    \key c \major
    
    % o
    c4 <g' a> <g a> f,
    \parenthesize <f' g> <g a> <g a> f,

    % X
    <c' f,>8 <f g>4 <g a>8~ <g a> <g a>16 f,~ f8 <f' g>8 c4
    g'
    <c, f,>8 <f g>4 <g a>8~ <g a> <g a>16 f,~ f8 <f' g>8 c4
    b
    <c f,>8 <f g>4 <g a>8~ <g a> <g a>16 f,~ f8 <f' g>8 c4
  }}
>>
