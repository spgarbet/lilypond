\version "2.24.3"

\header {
  title = "Gormenghast 2077"
  subtitle = "Sonata No. 1 in C sharp minor"
  composer = "Shawn Garbett"
  tagline  = "Copyright 2026 Shawn Garbett"
}

harmony = \relative c'''
{
  \tempo "Moderate Chautal 12/4" 4 = 90 
  \key cis \minor
  \clef treble
  \time 4/4
  \ottava 1 

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

  %cis,2 r \bar "!"
  r1 \bar "!"
  r1 \bar "!"
  r1 |

  %% Repetition / Tihai into Cadence
  a,8-> gis a b dis4 b8-.->
  r8 \bar "!" r8
  a8-> gis a b dis4 b8-.-> \bar "!"
  r4
  gis8-> fis gis a cis4^\fermata |

  \repeat volta 2 { \ottava -1

  <e,, fis gis cis>8.  <e fis gis cis>8.  <e fis gis cis>8  <e fis gis cis>4 r \bar "!"
  <e fis gis cis>8.  <e fis gis cis>8.  <e fis gis cis>8  <e fis gis cis>4 r \bar "!"
  <fis gis ais dis>8.  <fis gis ais dis>8.  <fis gis ais dis>8  <fis gis ais dis>4 r |
  \ottava 2
  
  \autoBeamOff \stemDown cis'''8(^\markup {\italic pizz.} fis \autoBeamOn \stemUp cis'8 fis a 
    \tuplet 3/2 {b cis fis^"l.h.")} r8 \bar "!"
  \autoBeamOff \stemDown fis,,8( cis' \autoBeamOn \stemUp fis8 ais cis
    \tuplet 3/2 {dis e fis^"l.h.")} r8 \bar "!"
  \autoBeamOff \stemDown b,,8( fis' \autoBeamOn \stemUp b8 dis fis
    \tuplet 3/2 {gis ais b^"l.h.")} r8 |

  \ottava 0 }

  % Subordinate theme
  \repeat volta 2 {
  e,,,,,4( b dis8 e fis e \bar "!" 
  fis8) r gis4( fis e \bar "!"
  a,2 e'8-. r4. ) |
  }

  e4( b dis8 e fis e \bar "!" 
  fis8) r gis4( fis e \bar "!"

  % New Motif (Complex Harmony / Offset rhythms)
  % e8. gis b8 a r4 a8~ |
  % a16 b8. dis8 cis r4 
  b4.) fis'8 dis2 |

  gis,4. e'8 b2 \bar "!"
  ais4. f'8 cis4. gis8 \bar "!"
  b8 fis' dis b ais2 |

  b4. fis'8 dis2 \bar "!"
  fis4. c'8 a4. dis,8 \bar "!"
  e b' gis e fis2 |

  e4. b'8 gis2 \bar "!"
  fis4. dis'8 b4. gis8 \bar "!" 
  e'8 b gis e fis8-. r8 r4 |
 
  % Cadential (evaded)
  \repeat volta 2 {
  r8 e' e' dis d cis b dis \bar "!"
  ais gis a fis e f dis cis \bar "!"
  a gis fis e fis e fis e |

  fis b dis cis d dis e f \bar "!" 
  fis gis fis gis ais gis a fis \bar "!"
  e f dis cis a gis fis4 |
  }

  gis8 fis gis a r4 gis \bar "!"
  r4 e dis r \bar "!"

  gis8 fis gis a r4 gis |
  r4 e dis r \bar "!"

  gis8 fis gis a r4 gis \bar "!"
  r4 e dis r^\fermata |

  <a' dis b' >1\>
  <e gis b e>4\! r2. \bar "||"
}

melody = \relative c' {
  \key cis \minor
  \clef bass
  \time 4/4

  %% Main Sentence
  cis2\>^"X"-^^\markup {\italic gremendo} gis^"0"\! \bar  "!"
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
  <gis cis>2-^ dis \bar  "!"
  a4-> gis fis r8 gis \bar "!"
  ais8 gis ais bis dis4 gis, |

  <e' gis a cis>4 <fis a cis e> <fis b dis> <e gis b>8-. 
  r8 \bar "!" r8
  <e gis a cis>4 <fis a cis e> <fis b dis> <e gis b>8-.  \bar "!"
  r4
  <gis b e>4 <fis a cis> < fis ais cis e> |

  %% Period

   \ottava -1
   
   b,,,16^\markup {\italic feroce} b b b-> b b b-> b b4-^ r \bar "!"
   b16-^ b b b-> b b b-> b b4-^ r \bar "!"
   cis16-^ cis cis cis-> cis cis cis-> cis cis4-^ r |
   
   \ottava 0

   r1^\markup{\italic {freddo}} r r

   %% Subordinate Theme in E

   b'8^\markup{\italic {crescendo con moto}}^\mp b' b, b' b, b' b, b' \bar "!"
   b,8 b' b, b' b, b' b, b' \bar "!"
   \tuplet 3/2 {a,8 a' a, a' a, a'} a,8-.  r4. |

   b8^\ff b' b, b' b, b' b, b' \bar "!"
   b,8 b' b, b' a b a b \bar "!"
   gis8^\mf b gis b fis b fis b |

   e, b' e, b' e, b' e, b'  \bar "!" 
   cis, a' e a cis, a' e a  \bar "!"    
   b, b' dis, b' cis, a' e a |

   b, b' dis, b' b, b' dis, b' \bar "!"
   a fis' c fis a, fis' c fis \bar "!"
   gis, e' b e a, fis' c fis |

   gis, e' b e gis, e' b e \bar "!"
   dis, dis' b dis dis, dis' b dis \bar "!" 
   % e, e' b e fis,-. r4. %fis' b, fis' |
   \tuplet 3/2 {e,8 e' b e e, e' } fis,8-. r8 r4  |

   % Cadential (evaded)
   gis4^\markup{\italic zeloso} b2 e4 \bar "!" 
   gis,4 b2 e4 \bar "!" 
   a,4 cis2 fis4 |

   fis,4 b2 dis4 \bar "!"
   fis8 r gis4( fis e \bar "!"
   b2 a)  |

   % Codetta
   e4^\markup{\italic{con espressione}} e' r <ais, cis e gis>-. \bar "!"
   r4 <fis b dis>-. r <fis cis' e>-. \bar "!"
   r4 <e' gis>-. r <ais, cis e gis>-. |

   r4 <fis b dis>-. r <fis cis' e>-. \bar "!"
   r4^\markup{\italic melting}\> <e' gis>-. r <ais, cis e gis>-. \bar "!"
   r4 <fis b dis>-. r <fis cis' e>-.\!^\ppp |

   <e' fis a b dis>1^\ff |
   <e gis b>4^\p r2. \bar "||"
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

  b1:11
  b1:11
  cis1:11

  fis1:m
  fis1:7
  b

  % Subordinate theme
  e1/b
  e1/b
  e1/a

  e1/b
  e1/b % New Motive introduction
  e2/b b/dis

  e1 
  ais:m/cis
  b2 ais:m/cis

  b1
  fis:dim
  e2/gis fis:dim 

  e1/gis
  b1
  e2 b  

  % Cadential, ECP
  e1/gis
  e1/gis
  fis1:m/a

  b1/fis
  b/fis
  b1:7

  e2 ais:dim7 
  b/fis b:7
  e2 ais:dim7 
  b/fis b:7
  e2 ais:dim7 
  b/fis b:7

  e1 e
  
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
