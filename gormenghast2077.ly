\version "2.24.3"

\header {
  title = "Gormenghast 2077"
  subtitle = "Sonata No. 1 in C sharp minor"
  composer = "Composer Shawn Garbett"
  copyright  = "Copyright 2026 Shawn Garbett"
  arranger = "Arranger Shawn Garbett, Buffy Rhea"
  tagline = ""
  midititle= "gormenghast2077.midi"
}

exposition_treble = \relative c'''
{
  \tempo "Gemendo" 4 = 90 
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
  r8 e' e' dis-3 d-1 cis-3 b-1 dis-5 \bar "!"
  ais-3 gis-2 a-3 fis-2 e-1 f-4 dis cis \bar "!"
  a-1 gis-3 fis e fis e fis e |

  fis b-1 dis-3 cis d-1 dis-2 e-1 f \bar "!" 
  fis-3 gis-4 fis-2 gis-3 ais gis a fis \bar "!"
  e f dis cis a-1 gis-3 fis4 |

  %r8 e e'' dis-3 d-1 cis-3 b-1 dis-5 \bar "!"
  r8 e \tuplet 3/2 {gis8 a ais b c dis} e fis \bar "!"
  ais-3 gis-2 a-3 fis-2 e-1 f-4 dis cis \bar "!"
  a-1 gis-3 fis e fis e fis e |

  fis b-1 dis-3 cis d-1 dis-2 e-1 f \bar "!" 
  fis-3 gis-4 fis-2 gis-3 ais gis a fis \bar "!"
  e f dis cis a-1 gis-3 fis4 |

  gis8 fis gis a r4 gis \bar "!"
  r4 e dis r \bar "!"

  gis8 fis gis a r4 gis |
  r4 e dis r \bar "!"

  gis8 fis gis a r4 gis \bar "!"
  r4 e dis r^\fermata |

  <a' dis b' >1\>
  <gis b e>4\! r2. \bar "|."
}

exposition_bass = \relative c' {
  \key cis \minor
  \clef bass
  \time 4/4

  %% Main Sentence
  cis2\>^"X"-^^\markup {\italic {played as chautal 12/4}} gis^"0"\! \bar  "!"
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
   
   \repeat volta 2 {
   b,,,16^\markup {\italic feroce} b b b-> b b b-> b b4-^ r \bar "!"
   b16-^ b b b-> b b b-> b b4-^ r \bar "!"
   cis16-^ cis cis cis-> cis cis cis-> cis cis4-^ r |
   
   \ottava 0

   r1^\markup{\italic {freddo}} r r
   }

   %% Subordinate Theme in E

   \repeat volta 2 {
   b'8^\markup{\italic {crescendo con moto}}^\mp b' b, b' b, b' b, b' \bar "!"
   b,8 b' b, b' b, b' b, b' \bar "!"
   \tuplet 3/2 {a,8 a' a, a' a, a'} a,8-.  r4. |
   }

   b8^\ff b' b, b' b, b' b, b' \bar "!"
   b,8 b' b, b' a b a b \bar "!"
   gis8^\mf b gis b fis b fis b |

   e, b' e, b' e, b' e, b'  \bar "!" 
   cis, ais' e ais cis, ais' e ais  \bar "!"    
   b, b' dis, b' cis, ais' e ais |

   b, b' dis, b' b, b' dis, b' \bar "!"
   a fis' c fis a, fis' c fis \bar "!"
   gis, e' b e a, fis' c fis |

   gis, e' b e gis, e' b e \bar "!"
   dis, dis' b dis dis, dis' b dis \bar "!" 
   \tuplet 3/2 {e,8 e' b e e, e' } fis,8-. r8 r4  |

   % Cadential (evaded)
   gis4^\markup{\italic appassionato} b2 e4 \bar "!" 
   gis,4 b2 e4 \bar "!" 
   a,4 cis2 fis4 |

   fis,4 b2 dis4 \bar "!"
   fis8 r gis4( fis e \bar "!"
   b2 a)  |

   gis4 b2 e4 \bar "!" 
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
   <e gis b e>4^\p r2. \bar "|."
}

exposition_chords = \chordmode {
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

  \repeat volta 2{
  b1:11
  b1:11
  cis1:11

  fis1:m
  fis1:7
  b
  }

  % Subordinate theme
  \repeat volta 2 {
  e1/b
  e1/b
  e1/a
  }

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

theExposition = {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { \char ##x2013 }
      \set Timing.beatStructure = 4,4,4
      \exposition_chords
    }
    \new Staff \exposition_treble
    \new Staff \exposition_bass
  >>
}

\score {
  \theExposition
  \layout {}
}
\score {
  \unfoldRepeats{ \theExposition }
  \midi {}
}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%
%% Development
%%
dev_chords = \chordmode {
  % Pre Core
  e2.
  e2.
  b2./dis
  b2./dis
  e2.
  b2./dis

  a2.:dim
  ais2.:m
  dis2.:7
  d2.:7 
  dis4./ais dis4.:7
  gis2.:m

  % Core 1
  \repeat volta 2 {
    gis2.:m/dis
    gis2.:m/dis
    gis2.:m/dis
    gis2.:m/dis
    gis2.:m/dis
    gis2.:m/dis
  }
  gis2.:m/dis
  gis2.:m/dis
  dis2.:m

  gis2.:m/dis
  gis2.:m/dis
  dis4.:m d/f

  dis2.:m
  ais2.:dim
  gis4.:m ais4.:dim

  a2.:dim
  a2.:dim
  ais2.:m

  ais2.:dim
  ais2.:dim
  b2.
   
  r2.
  c2.:dim
  c2.:dim
  cis2.

  d2.:dim
  d2.:dim
  dis2.

  dis2.:dim
  dis2.:dim
  e2.

  % 1st Core Cadence
  ais2.:m/f
  dis2.:7
  d2.:dim7/f 
  dis2./ais
  dis2.:7
  gis2.:m

  % retransition (false ending)
  cis2.:m
  cis2.:m
  cis2.:m

  gis2.:m7
  gis2.:m7
  gis2.:m7

  cis2.:m
  cis2.:m
  cis2.:m

  gis2.:m7
  gis2.:m7
  gis2.:m7

  ais2.:dim
  dis2.:m
  gis2.:m

  cis2.:m/e
  dis2.:m/fis
  dis2.:7

  % Dramatic flourish Standing on the dominant
  gis2.
  gis2.  
  gis2.  
  gis2.  
  gis2.  
  gis2.  
  
  % Final short recap of main theme in I
  cis2.:m 
  cis2.:m 
  cis2.:m 
  cis2.:m 
  cis2.:m 
  cis2.:m 
}


dev_treble = \relative c''
{
  \tempo "Allegro" 4. = 140
  \key b \major
  \clef treble
  \time 6/8

  %%%%%%%%%%%%%%%%
  % pre-core
  e1*6/8-^    |
  b1*6/8      |
  fis4.-> e4. |  
  dis4. r8 e8 fis |
  e8 fis e fis gis4 |
  b4.fis4. 
  
  dis1*6/8-^    |
  ais'1*6/8      |
  f4.-> dis4. |  
  d4. r8 dis8 f |
  dis8 f dis f g4 |
  <gis b dis gis>8-. r4 r4.^\fermata 

  %%%%%%%%%%%%%%%%%%%
  % 1st Core
  \repeat volta 2
  {
    gis'4._\mf dis4.
    fisis8 gis ais gis ais gis 
    ais8 r4 b4.

    ais4. gis
    cis1*6/8  
    gis8 r4 r4.
  }
  gis4._\mp^\markup{\italic sostendo} dis4.
  fisis8 gis ais gis ais gis 
  dis4 ais8 fis4.

  r1*6/8 % Catch your breath
  <dis gis>4-._\p r4 ais8_\mf dis
  ais'8^\markup{\italic {a tempo}} fis dis d4.
  
  dis4 ais'8 fis4.
  ais4 e'8 c4 ais8
  dis8 b gis ais4. 

  % Adim is a c dis fis, scale: a ais c cis dis e ais 
  a4 dis8 c4. 
  c4 ais'8 fis4.
  \slashedGrace { fis16 } f8^\sfz cis ais~ ais4.

  % A#dim is ais cis e g, scale ais b cis d e f g 
  ais4. e4.
  g8 ais b ais b ais
  \slashedGrace { c16 } b4^\sfz fis8 dis4.

  r1*6/8 % Extra Breath

  r4 <dis a>^\markup{\italic rallentando}_\mf c
  <dis a>4 c a8 dis
  gis8_\f eis cis~ cis4. 

  d'4.\> gis,
  cis8 d e d e d
  dis4 ais8 fisis4.\!_\pp

  % D# dim scale  dis f fis gis a b c d
  dis4_\ff a'8 fis4. 
  a4 dis8 c4.
  \slashedGrace {f16} e8^\sfz  b gis~ gis4.

  % 1st Core final cadence
  \slashedGrace {d''16} cis4^\markup{\italic {a tempo}} ais8 f4.
  \slashedGrace {c'16} b4 g8 dis4.
  \slashedGrace {a'16} gis4 f8 d4.

  r8 ais8 gis fis e dis 
  <cis e>8 <dis f> <e g> <eis gis> <fisis ais>4
  <gis b>2.

  r2.
  <e gis cis e>4. <e gis cis e>4.
  cis''8 gis e cis gis e
 
  <gis b dis fis>2.
  r2.
  <dis fis gis b>4 <fis gis b dis> <gis b dis fis>
  
  <gis cis e gis>2.
  r2.
  b8 a gis ais bis cis
  
  <gis b dis fis>2.   
  <gis b dis fis>4. <gis b dis fis>4.   
  r4. r4 ais8

  g e fis a ais cis
  dis r4 ais8 r gis
  fis  e fis  gis  ais bis

  cis r4 gis8 r ais
  gis fis gis ais b cis
  dis cis dis eis fisis gis

  ais gis ais gis ais gis
  fis e dis cis b a
  gis fis gis fis gis fis
  
  ais gis bis ais cis bis
  dis a cis gis b fis 
  <dis gis bis>2.-^ 

  cis'2.
  gis2.
  dis4. cis4. 

  bis4. r4 cis8
  dis cis dis cis dis e
  <<
  {
    <gis, cis e gis>2.^\fermata
  }
  \new Voice 
  {
    s4. s4
    dis'8->-.
  }
  >> \oneVoice

  \bar "|."
}


dev_bass = \relative c,
{
  \key b \major
  \clef bass
  \time 6/8

  %%%%%%%%%%%%%
  % Pre-core
  e4^\markup{\italic galloping}^\ppp^\< gis b |
  e, b' gis |
  dis fis b | 
  dis, b' fis | 
  e4 gis b |
  dis, fis b | 

  a c dis |
  ais cis f |
  dis, ais' cis |
  d, a' c |
  ais dis cis |
  <gis dis'>8-.^\!^\fff r4 r4.^\fermata |  

  %%%%%%%%%%%%%
  % 1st Core
  \repeat volta 2
  {
    dis'4 r dis'
    dis,4 r dis'
    dis,16 gis b gis b gis dis'4.

    dis,4 r dis'
    dis,4 r dis'
    dis,16 gis b gis b gis dis'4.
  }

  dis,4 r dis'
  dis,4 r dis'
  dis,16 fis ais fis ais fis dis'4.

  % breath
  r1*6/8
  r1*6/8
  dis,,16 fis ais fis ais fis f4.

  dis4 r dis'
  ais4 r ais'
  dis,16 gis b gis b gis c4.

  % Romantic Fool
  % Adim is a c dis fis, scale: a ais c cis dis e fis g
  r8 a, a' gis g fis
  f gis e d dis c
  ais2. % Cut short

  % His lover
  % A#dim is ais cis e g, scale ais b cis d e f g gis
  g8 ais cis b cis d
  e f g f g ais
  b2.

  r1*6/8 % Extra Breath

  r1*6/8
  r1*6/8
  cis,16 eis gis eis gis eis gis4.

  % The Princess
  d,4-. gis-. d'-. 
  f4-. g8-. gis8-. ais8-. cis-.  
  r1*6/8
  

  % The Drunken Duke
  <dis, a' bis>4-^ <dis a' bis> <dis a' bis>8 <dis a' bis>-^
  r4 <dis a' bis>4-^ <dis a' bis>
  <e  gis b>8 r8 r2

  % 1st Core Cadence
  f,4 r ais
  dis4 r cis
  f r d

  ais r dis 
  dis r cis
  gis2.

  r4.  cis16 e gis e gis e 
  cis4. <cis cis,>4.
  r2.

  <gis fis'>2. 
  r2.
  r2.

  <cis cis,>2.
  r2.
  r4. cis16 e gis e gis e 

  gis2.
  <fis gis,>4. <fis gis,>4.
  r2.
 
  r2 ais,4
  dis2.
  r2 gis,4

  e2.
  r2 fis4
  dis2.

  r2 gis4
  <gis eis' gis>4 r2
  <gis dis' gis>4 r2

  <gis dis' gis bis>2.~
  <gis dis' gis bis>2.~
  <gis dis' gis bis>2.

  <cis e gis cis>2.~
  <cis e gis cis>2.
  r2.

  r2.
  r4 <bis dis>4-. <cis e>4-.
  <cis cis,>2.^\fermata
}

theDevelopment = {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { \char ##x2013 }
      \dev_chords
    }
    \new Staff \dev_treble
    \new Staff \dev_bass
  >>
}

\score {
  \theDevelopment
  \layout {}
}

\score {
  \unfoldRepeats{ << \new Staff \dev_treble \new Staff \dev_bass >>}
  \midi {}
}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%
%% The Recap
%%

recap_chords = \chordmode {
  cis1:m
  cis1:m
  d:m
  d:m
  cis1:m
  d:m

  cis1:m
  cis1:m
  d:m
  d:m
  cis1:m
  d:m

  e1
  d1:m
  cis:m
  cis:m
  g:5-.9
  g:5-.9
  gis/c
  gis

  b:11
  b:11
  cis:m

  dis:m
  d:m7
  cis:m 
}

recap_treble = \relative c'
{
  \tempo "Adagio" 4 = 50
  \key cis \minor
  \clef treble
  \time 4/4

  r1 r1 r1 r2 r4^\fermata r4 r1 r1
  
  \ottava -1
  cis1(
  g1 
  e2 d2
  cis2) r4 d4(
  e4 d e f
  g2 cis,2)

  << {<e gis>1} \\ {r4 r8 b'8^. s2} >>
  << {<d, f>1} \\ {r4 r8 a'8^. s2} >>
  cis,1( 
  e2 gis)
  g1( 
  a2) cis4( b

  a4 gis2) r4 
  gis4( ais c2)

  \ottava 0
  <gis' b cis e>8.-.  <gis b cis e>8.-. <fis a cis e>8-.  <gis b cis e>4 r4
  <gis b cis e>8.-.  <gis b cis e>8.-. <fis a cis e>8-.  <gis b cis e>4 r4
  <gis b cis e>8.-.  <gis b cis e>8.-. <g c d e>8-.  <gis b cis e>4 r4

  \stemDown \autoBeamOff dis8(^\markup {\italic pizz.} ais' \stemUp \autoBeamOn dis fis ais
    \tuplet 3/2 {b cis dis)} r8 
  \stemDown \autoBeamOff d,,8( a' \stemUp \autoBeamOn d f a
    \tuplet 3/2 {b cis d)} r8 
  \stemDown \autoBeamOff cis,,8( gis' \stemUp \autoBeamOn cis e gis
    \tuplet 3/2 {ais bis cis)} r8 

  cis,4( gis4 bis8 cis dis cis
  dis8) r8 e4( dis cis
  fis,2 cis'8-.) r4.

  cis4( gis4 bis8 cis dis cis
  dis8) r8 e4( dis cis
  gis2. e'4 

  cis1)

  dis,2.^\markup{\italic crescendo}( fis4~
  fis4 ais bis) cis8( dis 
  \tuplet 3/2 {c8^\markup{\italic calando} b a-.)}   g16( f e-.) r  d( c b-.) r  ais(  b c-.) r
  r1 \bar "|."
}

recap_bass = \relative c,
{
  \key cis \minor
  \clef bass
  \time 4/4

  \ottava -1
  cis1^\pp(
  g^\ppp
  e2 d2
  cis2) r4^\fermata d4(
  e4 d e f
  gis2 d2)

  <cis e'>1~^\mp
  <cis e'>1
  <d a' d>1~
  <d a' d>
  <cis' e>4. r8 <cis e>4. r8
  <d, a' d>1

  e'1(^\mp^\<
  d1
  cis1~
  cis1)
  g~^\f\!
  g^\>
  c
  gis\!^\p
  
  \ottava 0

  b8.-.^\mf b8.-. r8 r2
  b8.-. b8.-. r8 r2
  cis8.-. cis8.-. r8 r2
 
  r1^\p r1 r1

  gis'4^\mp gis' gis, gis'
  gis,4 gis' gis, gis'
  \repeat "tremolo" 4 fis8~ fis8 r8 r4

  gis,4 gis' gis, gis'
  gis,4 gis' fis  gis
  e  gis  dis  \repeat "tremolo" 2 gis8~
  gis1

  dis1~^\p
  dis1
  d2. r4
  cis4-.^\ppp r2. \bar "|."
}

theRecap = {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { \char ##x2013 }
      \recap_chords
    }
    \new Staff \recap_treble
    \new Staff \recap_bass
  >>
}

\score {
  \theRecap
  \layout {}
}

\score {
  \unfoldRepeats{ << \new Staff \recap_treble \new Staff \recap_bass >>}
  \midi {}
}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%
%%
%% Coda
%%
coda_chords = \chordmode
{
  fis1:m
  fis1:m
  fis1:m
  fis1:m
  fis1:m
  fis1:m
  fis1:m
  fis1:m
  fis1:m
  fis1:m
  fis1:m
  fis1:m

  cis1:7
  gis1:9
  cis2:7 gis2:9
  
  b1:13
  fis:dim 
  e2:7+ fis2:11+
  
  cis1:m9
  e1:sus
  gis1:9- 

  cis2.:m
  fis2.
  b
  e

  cis2.:m
  fis2.
  b
  e

  cis2.:m
  fis2.
  b
  e

  cis2.:m
  fis2.
  b
  e

  cis2.:m
  fis2.
  b2.:7
  e2.

  gis2.
  cis2.
  fis2.
  b2.:7
}

coda_treble = \relative c'
{
  \tempo "Andante" 4 = 90
  \key cis \minor
  \clef treble
  \time 4/4

  fis8-._\markup{\italic testing} r8 r4 r2
  \slashedGrace {e16} fis8-. r8 \slashedGrace {e16} fis8-. r8 r4. r16  fis16(
  e16 fis gis a-.) r2.
  r1
  fis16-. fis-. r8 r2 r8. fis16(
  e16 fis gis a-.) r2 r8 fis8
  gis8_\markup{\italic heartening} fis8 gis a cis4 fis
  cis'2-> gis
  e4 dis cis  r8 cis8
  dis8 cis dis e gis4 dis

  cis2 a  |
  e'4 dis cis r4 | 

  <e, a dis>1_\markup{\italic {con brio}}  \bar "!"
  <fis bis eis>1 \bar "!"
  <e a dis>2 <fis bis eis>2 |

  <gis cis fis>1  \bar "!" % B13
  <a c e>1 \bar "!"  % F#dim
  <gis b dis>2 <e b' cis> | % E M7, F# (#11)

  <e gis b>1 \bar "!"
  <e a b>1 \bar "!" 
  r1 |
  
  \time 3/4

  \slashedGrace {d'8} cis 4( gis bis |
  cis8 dis cis \slashedGrace {f} dis-.) r4 |
  \slashedGrace {e8} dis4( cis b
  gis2) \slashedGrace {a8} b4-.

  \slashedGrace {d'8} cis 4( gis bis |
  cis8 dis cis \slashedGrace {f} dis-.) r4 |
  \slashedGrace {e8} dis4( cis b
  gis2) \slashedGrace {a8} b4-.

  \slashedGrace {d,8} cis 4( gis bis |
  cis8 dis cis \slashedGrace {f} dis-.) r4 |
  \slashedGrace {e8} dis4( cis b
  gis2) \slashedGrace {a8} b4-.

  \grace {cis16( d)} cis 4( gis bis |
  cis8 dis cis \slashedGrace {f} dis-.) r4 |
  \slashedGrace {e8} dis4( d8 dis ais' cis,
  gis2.) 
  
  r8 cis, \tuplet 3/2 {cis''8 c b} \tuplet 5/2 {ais8 gis c g f~ }
  f8 fis  dis cis d b
  a4 gis fis
  e2.\startTrillSpan

  dis8\stopTrillSpan gis \tuplet 3/2 {c ais b} \tuplet 5/2 {c cis d dis f~}
  f8 g f fis dis cis 
  d4 bis ais
  fis8 e8 dis2

  r4 gis8 fis e4~
  e4 r a8 gis
  fis4 gis8 ais8 bis4
  <cis, e gis cis>2. \bar "|."
}

coda_bass = \relative c
{
  \key cis \minor
  \clef bass
  \time 4/4

  r1^\mp
  r1
  r2 g2_\sfz
  r1
  r1
  r2 r8 fis4.^\pp 
  r1
  b1_\markup{\italic reluctant}
  a1
  gis1
  fis1
  fis'1

  gis2 e \bar "!"
  bis'4 ais gis r8 ais \bar "!"
  gis8 fis gis ais bis4 gis |

  gis8 fis gis a b4 gis \bar "!"
  fis8 e fis gis a4 fis \bar "!"
  <e gis>4( b'-.) <e, fis>( a-.) |

  cis,2 e4 gis \bar "!"
  g2 a4 cis8 b \bar "!"
  a8 gis4 r8 fis8 e8 dis4^\fermata |

  \time 3/4

  \slashedGrace {s8} cis,,4->^\markup{\italic accelerando} <cis'' e gis> <cis e gis>
  fis,4 <cis' fis ais> <cis fis ais>
  b,4 <dis' fis b> <dis fis b>
  e,4 <b' e gis> <b e gis>

  \slashedGrace {s8} cis,4-> <cis' e gis> <cis e gis>
  fis,4 <cis' fis ais> <cis fis ais>
  b,4 <dis' fis b> <dis fis b>
  e,4 <b' e gis> r

  \slashedGrace {s8} cis,4-> <cis' e gis> <cis e gis>
  fis,4 <cis' fis ais> <cis fis ais>
  b,4 <dis' fis b> <dis fis b>
  e,4 <b' e gis> <b e gis>

  \slashedGrace {s8} cis,4-> <cis' e gis> <cis e gis>
  fis,4 <cis' fis ais> <cis fis ais>
  b,4 <dis' fis b> <dis fis b>
  e,4 <b' e gis> r

  \slashedGrace {s8} cis,4-> <cis' e gis> <cis e gis>
  fis,4 <cis' fis ais> <cis fis ais>
  b,4 <dis' fis b> <dis fis a>
  e,4 <b' e gis> r

  \slashedGrace {s8} gis,4-> <dis'' gis bis> <dis gis bis>
  cis,4 <cis' eis gis> <cis eis gis>
  fis,4 <cis' fis ais> <cis fis ais>
  b,4 <dis' fis a> r

  r2 <e b' cis>4~ 
  <e b' cis>4 r2
  <e b' cis>2 <bis dis gis>4
  <cis, cis'>2. \bar "|."
}

theCoda = {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { \char ##x2013 }
      \coda_chords
    }
    \new Staff \coda_treble
    \new Staff \coda_bass
  >>
}

\score {
  \theCoda
  \layout {}
}

\score {
  \unfoldRepeats{ << \new Staff \coda_treble \new Staff \coda_bass >>}
  \midi {}
}

