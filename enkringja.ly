\version "2.24.3"

\header {
  title = "En Kringja"
  subtitle = "Sentence A"
  composer = "Shawn Garbett"
}

melody = \relative c'' {
  \key cis \minor
  \tempo "Moderate Chautal" 4 = 90
  \clef treble
  \time 4/4

  %% Sentence
  cis2^"Basic Idea" gis \bar  "!"
  dis4 cis bis r8 cis \bar "!"
  dis8 cis dis e gis4 dis |

  gis2^"Repetition" e \bar "!"
  bis'4 ais gis r8 ais \bar "!"
  gis8 fis gis ais bis4 gis |

  gis8^"Fragmentation" fis gis a b4 gis \bar "!"
  fis8 e fis gis a4 fis \bar "!"
  \tuplet 3/2 {e8[ fis gis]} b8[ gis] \tuplet 3/2 {dis8[ e fis]} a8[ fis] |

  cis2^"Resolution" e4 gis \bar "!"
  g2   a4   cis, \bar "!"
  gis8  bis  dis4   bis8 dis  gis4  |

  cis1
}

harmony = \chordmode {
  cis1:m
  gis/c
  cis2:m gis/c

  cis1:m
  gis/c
  cis2:m gis/c

  gis1:m
  fis:m
  e2 dis2:dim %dis2:9-

  cis1:m
  g:5-.9
  gis/c

  cis1:m
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
      \set minorChordModifier = \markup { \char ##x2013 }
      \set Timing.beatStructure = 4,4,4
      \harmony
    }
    \new Staff \melody
  >>
  \layout {}
}
