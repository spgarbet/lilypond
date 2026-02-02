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

  \ottava -1
  <e,, fis gis cis>8.  <e fis gis cis>8.  <e fis gis cis>8  <e fis gis cis>4 r \bar "!"
  <e fis gis cis>8.  <e fis gis cis>8.  <e fis gis cis>8  <e fis gis cis>4 r \bar "!"
  <fis gis ais dis>8.  <fis gis ais dis>8.  <fis gis ais dis>8  <fis gis ais dis>4 r |
  \ottava 1
  
  \autoBeamOff \stemDown fis''8-.( cis'-. \autoBeamOn \stemUp fis8-. a-. cis-.
    \tuplet 3/2 {dis-. e-. fis^"l.h."-.)} r8 \bar "!"
  \autoBeamOff \stemDown fis,,8-.( cis'-. \autoBeamOn \stemUp fis8-. ais-. cis-.
    \tuplet 3/2 {dis-. e-. fis^"l.h."-.)} r8 \bar "!"
  \autoBeamOff \stemDown b,,8-.( fis'-. \autoBeamOn \stemUp b8-. dis-. fis-.
    \tuplet 3/2 {gis-. ais-. b^"l.h."-.)} r8 |
  
%  \autoBeamOff \stemDown cis,,,8-.( gis'-. \autoBeamOn \stemUp cis8-. e-. gis-.
%    \tuplet 3/2 {ais-. bis-. cis^"l.h."-.)} r8 \bar "!"
%  \autoBeamOff \stemDown fis,,8-.( cis'-. \autoBeamOn \stemUp fis8-. ais-. cis-.
%    \tuplet 3/2 {dis-. e-. fis^"l.h."-.)} r8 \bar "!"
%  \autoBeamOff \stemDown gis,,8-.( dis'-. \autoBeamOn \stemUp gis8-. bis-. dis-.
%    \tuplet 3/2 {e-. fis-. gis^"l.h."-.)} r8 |

%  r1
%  r1
%  r1

%  \autoBeamOff \stemDown dis,,8-.( ais'-. \autoBeamOn \stemUp dis8-. fis-. ais-.
%    \tuplet 3/2 {bis-. cis-. dis^"l.h."-.)} r8 \bar "!"
%  \autoBeamOff \stemDown gis,,8-.( dis'-. \autoBeamOn \stemUp gis8-. bis-. dis-.
%    \tuplet 3/2 {e-. fis-. gis^"l.h."-.)} r8 \bar "!"
%  \autoBeamOff \stemDown cis,,,8-.( gis'-. \autoBeamOn \stemUp cis8-. e-. gis-.
%    \tuplet 3/2 {ais-. bis-. cis^"l.h."-.)} r8 \bar "||"

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
   
   b,,,16-^ b b b-> b b b-> b b4 r \bar "!"
   b16-^ b b b-> b b b-> b b4 r \bar "!"
   cis16-^ cis cis cis-> cis cis cis-> cis cis4 r |
   
   \ottava 0

   r1 r r


%  gis,,,16-^ gis gis gis-> gis gis gis-> gis gis4 r \bar "!"
%  gis16-^ gis gis gis-> gis gis gis-> gis gis4 r \bar "!"
%  ais16-^ ais ais ais-> ais ais ais-> ais ais4 r |
%
%  \ottava 0
%
%  r1 \bar "!"
%  r1 \bar "!"
%  r1 |
%
%  \ottava -1

%  gis16-^ gis gis gis-> gis gis gis-> gis gis4 r \bar "!"
%  gis16-^ gis gis gis-> gis gis gis-> gis gis4 r \bar "!"
%  ais16-^ ais ais ais-> ais ais ais-> ais ais4 r |
%
%  \ottava 0
%
%  r1 \bar "!"
%  r1 \bar "!"
%  r1 |
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

%  r1
%  r1
%  r1
%
%  cis1:m
%  fis1
%  gis1
%
%  r1
%  r1 
%  r1
% 
%  dis1:m
%  gis1
%  cis1:m
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
