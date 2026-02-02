\version "2.24.3"

\header {
  title = "Bhairav"
  subtitle = "Drupad Antara"
  tagline = ""
}

melody = \relative c' {
  \key b \major
  \tempo "Moderate Chautal" 4 = 90
  \clef treble
  \time 4/4

  \override Stem.neutral-direction = #up

  \repeat volta 2
  {
    \bar ".|:"

    fis4^"+" fis fis^"0" \appoggiatura ais16 g4 \bar "!"
    g4^"2" g \appoggiatura b16 ais4^"0"( b) \bar "!"
    ais^"3" b b^"4" b |

    \appoggiatura ais16 g4 g g ais( \bar "!"
    b4) b c2 \bar "!"
    b4 ais8( b8) \appoggiatura ais16 g4 fis | 
  }

  fis4( g) ais b \bar "!"
  b4 b \appoggiatura ais16 g2 \bar "!"
  g4 \appoggiatura ais16 g4 \appoggiatura ais16 g4 fis |

  e4 e \tuplet 3/2 {e8( dis e} \appoggiatura dis16 c4) \bar "!"
  dis16( c e dis g4) e4( dis) \bar "!"
  e4 \appoggiatura dis16 c4 \appoggiatura dis16 c4 b |

  b4 c dis e~ \bar "!"
  e4 e fis2 \bar "!"
  g4 c b2 | 

  \appoggiatura ais16 g2 g4 r4 \bar "!"
  \appoggiatura g16 ais4 g fis8( g fis e) \bar "!"
  r1 \bar "||"

  
}

\score {
  <<
    \new Staff \melody
  >>
  \layout {}
}
