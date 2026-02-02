\version "2.24.3"

\header {
  title = "Kringja"
  subtitle = "Sentence A"
  composer = "Shawn Garbett"
}

melody = \relative c'' {
  \key des \minor
  \tempo "Moderate Chautal" 4 = 90
  \clef treble
  \time 4/4

  %% Sentence
  des2^"Basic Idea" aes \bar  "!"
  ees4 des c r8 des \bar "!"
  ees8 des ees fes aes4 ees |

  aes2^"Repetition" e \bar "!"
  c'4 bes aes r8 bes \bar "!"
  aes8 ges aes bes c4 aes |

  aes8^"Fragmentation" ges aes bes ces4 aes \bar "!"
  ges8 fes ges aes beses4 ges \bar "!"
  %fes16 ees fes ges a8 ges  ees16 des ees f ges8 f |
  \tuplet 3/2 {e8[ fes ges]} b8[ ges] \tuplet 3/2 {ees8[ fes g]} bes8[ g] |

  des2^"Resolution" fes4 aes \bar "!"
  g2   a4   des, \bar "!"
  aes8  c  ees4   c8 ees  aes4  |

  des1
}

harmony = \chordmode {
  des1:m
  aes/c
  des2:m aes/c

  des1:m
  aes/c
  des2:m aes/c

  aes1:m
  ges:m
  fes2 ees2:9-

  des1:m
  g:5-.9
  aes/c
}

% It+6 is #V7 with no 5th
% In C  V7   is G7  G  B  (D)  F  
% In C #V7   is #G7 Ab C  (Eb) Gb
% In Db #V7  is A7  A  Db (E)  G
% In Db It+6 is G6  G  A    Db  (inverted starting on A)
% In Db Fr+6 is G6  G  A  B Db  

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set minorChordModifier = \markup { "-" }
      \set Timing.beatStructure = 4,4,4
      \harmony
    }
    \new Staff \melody
  >>
  \layout {}
}
