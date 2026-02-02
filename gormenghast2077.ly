\version "2.24.3"

\header {
  title = "Gormenghast 2077"
  subtitle = "Sonata No. 1 in C sharp minor"
  composer = "Shawn Garbett"
  tagline  = "Copyright 2026 Shawn Garbett"
}

harmony = \relative c''''
{
  \tempo "Moderate Chautal" 4 = 90
  \key cis \minor
  \clef treble
  \time 4/4
  \ottava #2

  % Basic Idea
  <cis e   gis>1 \bar "!"
  <bis dis gis>1 \bar "!"
  <cis e   gis>2 <bis dis gis> |

  % Repetition
  <cis e   gis>1 \bar "!"
  <bis dis gis>1 \bar "!"
  <cis e   gis>2 <bis dis gis> |

  % Fragmentation
  <dis gis b>1 \bar "!"
  <cis fis a>1 \bar "!"
  <e gis b>2 <c dis fis a> |

  % Cadential Resolution
  <cis e gis>1 \bar "!"
  <cis g' a>1 \bar "!"
  <bis dis gis>1 |

  \ottava 0

  cis,,2 r \bar "!"
  r1 \bar "!"
  r1 |

  %% Repetition / Tihai into Cadence
  a8-> gis a b dis4 b8-.->
  r8 \bar "!" r8
  a8-> gis a b dis4 b8-.-> \bar "!"
  r4
  gis8-> fis gis a cis4 |

  \repeat volta 2 { \ottava -1

  <e,, fis gis cis>8.  <e fis gis cis>8.  <e fis gis cis>8  <e fis gis cis>4 r \bar "!"
  <e fis gis cis>8.  <e fis gis cis>8.  <e fis gis cis>8  <e fis gis cis>4 r \bar "!"
  <fis gis ais dis>8.  <fis gis ais dis>8.  <fis gis ais dis>8  <fis gis ais dis>4 r |
  \ottava 1
  
  \autoBeamOff \stemDown fis''8(^\markup {\italic pizz.} cis' \autoBeamOn \stemUp fis8 a cis
    \tuplet 3/2 {dis e fis^"l.h.")} r8 \bar "!"
  \autoBeamOff \stemDown fis,,8( cis' \autoBeamOn \stemUp fis8 ais cis
    \tuplet 3/2 {dis e fis^"l.h.")} r8 \bar "!"
  \autoBeamOff \stemDown b,,8( fis' \autoBeamOn \stemUp b8 dis fis
    \tuplet 3/2 {gis ais b^"l.h.")} r8 |

  \ottava 0 }

  % Subordinate theme
  \repeat volta 2 {
  e,,,,4( b dis8 e fis e \bar "!" 
  fis8) r gis4( fis e \bar "!"
  a,2 e') |
  }

}

melody = \relative c'' {
  \key cis \minor
  \clef treble
  \time 4/4

  %% Main Sentence
  cis2\>^"X"-^^\markup {\italic melancholic} gis^"0"\! \bar  "!"
  dis4^"2"\>-> cis bis^"0"\! r8 cis\< \bar "!"
  dis8^"3" cis dis e gis4^"4" dis |

  gis2\!^"X ..."_\markup{\italic simile } e \bar "!"
  bis'4 ais gis r8 ais \bar "!"
  gis8 fis gis ais bis4 gis |

  gis8 fis gis a b4 gis \bar "!"
  fis8 e fis gis a4 fis \bar "!"
  <e gis>4( b'-.) <dis, fis>( a'-.) |
  %\tuplet 3/2 {e8[ fis gis]} b8[ gis] \tuplet 3/2 {dis8[ e fis]} a8[ fis] |

  cis,2 e4 gis \bar "!"
  g2  a4  cis8 b\bar "!"
  a8 gis4 r8 gis8 ais8 bis4  | 

  %% Transition
  \clef bass
  gis,2-^ dis \bar  "!"
  a4-> gis fis r8 gis \bar "!"
  ais8 gis ais bis dis4 gis, |

  <e' gis a cis>4 <fis a cis e> <fis b dis> <e gis b>8-. 
  r8 \bar "!" r8
  <e gis a cis>4 <fis a cis e> <fis b dis> <e gis b>8-.  \bar "!"
  r4
  <gis b e>4 <fis a cis> < fis ais cis e> |

  %% Period

   \ottava -1
   
   b,,,16-^^\markup {\italic Agitato} b b b-> b b b-> b b4-^ r \bar "!"
   b16-^ b b b-> b b b-> b b4-^ r \bar "!"
   cis16-^ cis cis cis-> cis cis cis-> cis cis4-^ r |
   
   \ottava 0

   r1^\markup{\italic delicately} r r

   %% Subordinate Theme in E

   b8' b' b, b' b, b' r4 \bar "!"
   b8, b' b, b' b, b' r4 \bar "!"
   \tuplet 3/2 {a8, a' a, a' a, a'} b,8-.  r4 |
}



chordnames = \chordmode {
  cis1:m
  gis/c
  cis2:m gis/c

  cis1:m
  gis/c
  cis2:m gis/c

  gis1:m
  fis:m
  e2 dis2:dim

  cis1:m
  g:5-.9
  gis/c

  gis1
  dis:dim/fis
  gis2. e4

  a4:7/e fis:m7 b e4.
  a4:7/e fis:m7 b e4.
  e4/gis fis:m fis:7 

  b1:13
  b1:13
  cis1:13

  fis1:m
  fis1:7
  b

  % Subordinate theme
  e/b1
  e/b1
  e/a1

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
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { \char ##x2013 }
      \set Timing.beatStructure = 4,4,4
      \chordnames
    }
    \new Staff \harmony
    \new Staff \melody
  >>
  \layout {}
}
