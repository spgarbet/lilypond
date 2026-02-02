\version "2.24.3"

\header {
  title = "En Kringja (alt)"
  subtitle = "Sentence A"
  composer = "Shawn Garbett"
  tagline  = ""
}

harmony = \relative c''''
{
  \tempo "Moderate Chautal" 4 = 90
  \key cis \minor
  \clef treble
  \time 4/4
  \ottava #2

  <cis e   gis>1^"Basic Idea" \bar "!"
  <bis dis gis>1 \bar "!"
  <cis e   gis>2 <bis dis gis> |

  <cis e   gis>1^"Repetition" \bar "!"
  <bis dis gis>1 \bar "!"
  <cis e   gis>2 <bis dis gis> |

  <dis gis b>1^"Fragmentation" \bar "!"
  <cis fis a>1 \bar "!"
  <e gis b>2 <c dis fis a> |

  <cis e gis>1^"Resolution" \bar "!"
  <cis g' a>1 \bar "!"
  <bis dis gis>1 \bar "||"

  \ottava 0

  r1^"Period"
  r1
  r1
  
  \autoBeamOff \stemDown cis,,,8-.( gis'-. \autoBeamOn \stemUp cis8-. e-. gis-.
    \tuplet 3/2 {ais-. bis-. cis^"l.h."-.)} r8 \bar "!"
  \autoBeamOff \stemDown fis,,8-.( cis'-. \autoBeamOn \stemUp fis8-. ais-. cis-.
    \tuplet 3/2 {dis-. e-. fis^"l.h."-.)} r8 \bar "!"
  \autoBeamOff \stemDown gis,,8-.( dis'-. \autoBeamOn \stemUp gis8-. bis-. dis-.
    \tuplet 3/2 {e-. fis-. gis^"l.h."-.)} r8 |

  r1
  r1
  r1

  \autoBeamOff \stemDown dis,,8-.( ais'-. \autoBeamOn \stemUp dis8-. fis-. ais-.
    \tuplet 3/2 {bis-. cis-. dis^"l.h."-.)} r8 \bar "!"
  \autoBeamOff \stemDown gis,,8-.( dis'-. \autoBeamOn \stemUp gis8-. bis-. dis-.
    \tuplet 3/2 {e-. fis-. gis^"l.h."-.)} r8 \bar "!"
  \autoBeamOff \stemDown cis,,,8-.( gis'-. \autoBeamOn \stemUp cis8-. e-. gis-.
    \tuplet 3/2 {ais-. bis-. cis^"l.h."-.)} r8 \bar "||"

}

melody = \relative c'' {
  \key cis \minor
  \clef treble
  \time 4/4

  %% Main Sentence
  cis2\>^"X"-^ gis^"0"\! \bar  "!"
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

  %% Period

  \clef bass

  \ottava -1

  gis,,,16-^ gis gis gis-> gis gis gis-> gis gis4 r \bar "!"
  gis16-^ gis gis gis-> gis gis gis-> gis gis4 r \bar "!"
  ais16-^ ais ais ais-> ais ais ais-> ais ais4 r |

  \ottava 0

  r1 \bar "!"
  r1 \bar "!"
  r1 |

  \ottava -1

  gis16-^ gis gis gis-> gis gis gis-> gis gis4 r \bar "!"
  gis16-^ gis gis gis-> gis gis gis-> gis gis4 r \bar "!"
  ais16-^ ais ais ais-> ais ais ais-> ais ais4 r |

  \ottava 0

  r1 \bar "!"
  r1 \bar "!"
  r1 |
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

  r1
  r1
  r1

  cis1:m
  fis1
  gis1

  r1
  r1 
  r1
 
  dis1:m
  gis1
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
