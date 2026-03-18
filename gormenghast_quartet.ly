\version "2.24.3"

\header
{
  title     = "Gormenghast 2077"
  subtitle  = "Sonata No 1 Op 2"
  composer  = "Composed by Shawn Garbett"
  arranger  = "Arranged by Shawn Garbett and Buffy Rhea"
  tagline   = ""
  midititle = "gormenghast_quartet.midi"
}

exposition_violin_i = \relative c''' 
{
  \tempo "Gemendo" 4 = 90
  \key cis \minor
  \clef treble
  \time 4/4

  % Opening Sentence 

  \mark "tracking shot of residents"

  <<cis4 gis'4-._\markup{\italic pizz.}_\mp>> r2. \bar "!"
  c,4-. r2. \bar "!"
  cis4-. r4 c4-. r4 |

  <<cis4 gis'4-.>> r2. \bar "!"
  c,4-. r2. \bar "!"
  cis4-. r4 c4-. r4 |

  gis,1
  fis1
  e4 r dis r

  cis1~(
  cis1
  c)

  % Tihai lead to harmonic loosening

  r1
  r1
  r1

  cis'8-> r8 r4 r dis8->-. r8 \bar "!"
  r8 cis8->-. r8 r4 r dis8->-. \bar "!"
  r4 e8->( dis e fis ais4)-\fermata |
  
  % Period
  \repeat volta 2 {
  cis8._\ff cis8. cis8 cis4 r4 \bar "!"
  cis8. cis8. cis8 cis4 r4 \bar "!"
  dis8. dis8. dis8 dis4 r4 |
  
  r1
  r1
  b,8_\markup{\italic freddo}_\mp fis' b8 dis fis \tuplet 3/2 {gis ais b} r8 |
  }

  % Subordinate theme

  e,,4( b dis8 e fis e \bar "!" 
  fis8) r gis4( fis e \bar "!"
  a,2) e'8-. r8 r4  |

  e4( b dis8 e fis e \bar "!" 
  fis8) r gis4( fis e \bar "!"
  a,2) e'8-. r8 r4  |

  e4( b dis8 e fis e \bar "!" 
  fis8) r gis4( fis e \bar "!"
  b2) r2  |

  % Additional Motif

  r1 \bar "!"
  r1 \bar "!"
  r1 |

  b,4. fis'8 dis2 \bar "!"
  fis4. c'8 a4. dis,8 \bar "!"
  e8 b' gis e fis2 |

  e4. b'8 gis2 \bar "!"
  fis4. dis'8 b4. gis8 \bar "!"
  e'8 b gis e fis-. r8 r4

  % Romantic Evaded Cadence 

  r8_\markup{\italic leggierissimo}( e' e' dis d cis b dis \bar "!"
  ais gis a fis e f dis cis \bar "!"
  a gis fis e fis e fis e |

  dis8) r8 r2.
  r1
  r1

  r1
  r1
  r1
  
  r1
  r1
  r1

  % Codetta
  gis8_\mp_\markup{\italic tranquillo}(\> fis gis a) r4 gis4 \bar "!"
  r1 |

  gis8( fis gis a) r4 gis4 \bar "!"
  r1 |

  gis8( fis gis a) r4 gis4_\pp\! \bar "!"
  r2. r4\fermata |

  % Final
  b'1_\ff_>
  e,4_\p r2. \bar "|."
}

exposition_violin_ii = \relative c''' 
{
  \key cis \minor
  \clef treble
  \time 4/4

  % Opening Sentence

  e4-._\markup{\italic pizz.}_\mp r2. \bar "!"
  dis4-. r2. \bar "!"
  e4-. r dis-. r |

  e4-. r2. \bar "!"
  dis4-. r2. \bar "!"
  e4-. r dis-. r |

  dis,1
  cis1
  gis2 fis2  

  gis1
  a1
  gis1
 
  % Tihai lead to harmonic loosening

  r1 
  r1 
  r1

  a8-> r8 r4 r b8->-. r8 \bar "!"
  r8 a->( gis a b dis4 b8)->-. \bar "!"
  %r4 gis8->( fis gis a cis4)-\fermata |
  r4 b8->( a b cis e4)-\fermata |

  % Period 

  \repeat volta 2 
  {
  gis8._\ff gis8. gis8 gis4 r4 \bar "!"
  gis8. gis8. gis8 gis4 r4 \bar "!"
  ais8. ais8. ais8 ais4 r4 |

  r1 
  fis,8_\markup{\italic freddo}_\p cis' fis8 ais cis \tuplet 3/2 {dis e fis} r8 \bar "!"
  r1 
  } 

  % Subordinate theme
  r1
  r1
  r1

  %e,,,4( b dis8 e fis e \bar "!" 
  %fis8) r gis4( fis e \bar "!"
  %a,2) e'8-. r8 r4  |

  %e4( b dis8 e fis e \bar "!" 
  %fis8) r gis4( fis e \bar "!"
  %b2) r2  |

  % Using chord outlines instead
  b,,4( gis a8 b cis b \bar "!"
  cis8) r dis4( cis b \bar "!"
  e,2) b'8-. r8 r4 |

  b4( gis a8 b cis b \bar "!"
  cis8) r dis4( cis b \bar "!"
  e,2) r2 |
  %

  \repeat tremolo 8 b8 \bar "!"
  \repeat tremolo 8 cis8 \bar "!"
  % b8 fis' dis b ais2 |
  r1 |

  \repeat tremolo 8 b8 \bar "!"
  \repeat tremolo 8 c8 \bar "!"
  b8 gis' e b c2 |
  
  % Moving to chord outlines
  %e4. b'8 gis2 \bar "!"
  %fis4. dis'8 b4. gis8 \bar "!"
  %e'8 b gis e fis-. r8 r4

  b4.   gis'8  e2 \bar "!"
  dis4. b'8    fis4. e8 \bar "!"  
  b'8 gis e b dis-. r8 r4 |

  % Romantic Evaded Cadence 

  r1
  r1
  r1

  r1
  r1
  r1

  r8 e_\markup{\italic {con abbandono}}( \tuplet 3/2 {gis8 a ais b c dis} e fis \bar "!"
  ais gis a fis e f dis cis \bar "!"
  a gis fis e fis e fis e |

  dis8) r8 r2.
  r1
  r1

  % Codetta

  r1 \bar "!"
  r4_\p\> e( dis) r |

  r1 \bar "!"
  r4 e( dis) r |

  r1 \bar "!"
  r4 e( dis)\!_\ppp r\fermata |

  % Final

  <a' dis>1_\ff_>
  <gis b>4_\p r2. \bar "|."
}

exposition_viola = \relative c'
{
  \key cis \minor
  \clef alto
  \time 4/4

  % Opening Sentence

  cis2-^(\>_\mp_\markup{\italic gemendo} gis)\! \bar "!"
  dis4(\> cis bis)\! r8 cis(\< \bar "!"
  dis8 cis dis e gis4) dis | 

  gis2(\!-^ e2) \bar "!"
  bis'4( ais gis) r8 ais( \bar "!"
  gis8 fis gis ais bis4) gis |

  gis8( fis gis a b4) gis \bar "!"
  fis8( e fis gis a4) fis \bar "!"
  <e gis>4( b'-.) <dis, fis>( a'-.) |

  cis,2 e4 gis \bar "!"
  g2  a4  cis8( b\bar "!"
  a8 gis4) r8 gis8( ais8 bis4  |  

  % Tihai lead to harmonic loosening

  cis2)-> r2
  r1
  r1

  a8(-> gis a b dis4 b8-.->) r8 \bar "!"
  r8 <a cis>4-> <cis e> <b dis> <gis b>8-.-> \bar "!"  
  %r4 <b e>4-> <a cis> <cis e>-\fermata
  r4 gis8->( fis gis a cis4)-\fermata |

  % Period

  \repeat volta 2 
  {
  e,16_\ff-^ fis fis e-> fis fis e->  fis e4-^ r4 \bar "!"
  e16-^  fis fis  e-> fis fis e-> fis e4-^ r4 \bar "!"
  fis16-^  gis gis fis-> gis gis fis->  gis fis4-^ r4 |

  cis8_\markup{\italic freddo}_\pp fis  cis'8 fis a \tuplet 3/2 {b cis fis} r8 \bar "!"
  r1
  r1
  }

  % Subordinate theme

  r1
  r1 
  r1

  r1
  r1
  r1

  % Switching to chordal build
  %e,4( b dis8 e fis e \bar "!" 
  %fis8) r gis4( fis e \bar "!"
  %b4.) fis'8 dis2  |

  gis,4( e fis8 gis a gis \bar "!"
  a8) r b4( a gis \bar "!"
  dis4.) fis8 dis2  |

  % Additional Motif

  gis,4. e'8 b2 \bar "!"
  ais4. f'8 cis4. gis8 \bar "!"
  b8 fis' dis b ais2 |

  \repeat tremolo 8 b8 \bar "!"
  \repeat tremolo 8 c8 \bar "!"
  r1

  % Switch to chordal build
  %e4. b'8 gis2 \bar "!"
  %fis4. dis'8 b4. gis8 \bar "!"
  %e'8 b gis e fis-. r8 r4

  gis4. e'8 b2 \bar "!"
  b4. fis'8 dis4. b8 \bar "!"
  gis'8 e b gis b-. r8 r4 |
  

  % Romantic Evaded Cadence 

  r1
  r1
  r1
 
  fis8(_\markup{\italic fieramente} b dis cis d dis e f \bar "!" 
  fis gis fis gis ais gis a fis \bar "!"
  e f dis cis a gis fis4) |

  gis4 b2 e4 \bar "!" 
  gis,4 b2 e4 \bar "!" 
  a,4 cis2 fis4 |

  fis,4 b2 dis4 \bar "!"
  fis8 r gis4( fis e \bar "!"
  b2 a)  |
  
  % Codetta

  r2. <e' gis>4-._\p_\> \bar "!"
  r4 <b dis>-. r <cis e>-. |

  r2. <e gis>4-. \bar "!"
  r4 <b dis>-. r <cis e>-. |

  r2. <e gis>4-. \bar "!"
  r4 <b dis>-. r <cis e>-._\ppp\!\fermata |

  % Final
  
  <a b>1_\ff_>
  <b e>4_\p r2. \bar "|."
}

exposition_cello = \relative c
{
  \key cis \minor
  \clef bass
  \time 4/4

  % Opening Sentence

  cis2-^_\mp r2 \bar "!"
  dis4-> r2. \bar "!"
  r2 gis2( |

  cis,2-^) r2 \bar "!"
  dis4-> r2. \bar "!"
  r2 gis2 |
  
  gis2. r4 \bar "!"
  fis2. r4 \bar "!"
  e4 r dis4 r |

  cis1( \bar "!"
  g1 \bar "!"
  c1) |
  
  % Tihai lead to harmonic loosening

  gis'2-^(_\markup{\italic gemendo} dis2) \bar "!"
  a4->( gis fis) r8 gis( \bar "!"
  ais8 gis ais bis dis4) gis, |

  <e' gis>4-> <fis a> <fis b> <e gis>8-. r8 \bar "!"
  r8 <e gis>4-> <fis a> <fis b> <e gis>8-. \bar "!"
  r4 <gis b>4-> <fis a> <fis ais>-\fermata  |

  % Period
  \repeat volta 2{

  b,16-^_\markup{\italic strepitoso}_\ff b b b-> b b b-> b b4-^ r4 \bar "!"
  b16-^ b b b-> b b b-> b b4-^ r4 \bar"!"
  cis16-^ cis cis cis-> cis cis cis-> cis cis4-^ r4 |
  
  r1 \bar "!"
  r1 \bar "!"
  r1 |

  }

  % Subordinate Theme

  b8_\mf_\markup{\italic {crescendo con moto}}_\< b' b, b' b, b' b, b' \bar "!"
  b,8 b' b, b' b, b' b, b' \bar "!"
  \tuplet 3/2 {a, a' a, a' a, a'} a,8-. r8 r4 |

  b8 b' b, b' b, b' b, b' \bar "!"
  b,8 b' b, b' b, b' b, b' \bar "!"
  \tuplet 3/2 {a, a' a, a' a, a'} a,8-. r8 r4 |

  b8_\ff\!\> b' b, b' b, b' b, b' \bar "!"
  b,8_\mf\!\> b' b, b' a b a b \bar "!"
  gis8_\mp\! b gis b fis b fis b |

  % Additional Motif

  e,8 b' e,8 b' e,8 b' e,8 b' \bar "!"
  cis,8 ais' e ais cis, ais' e ais \bar "!"
  b, b' dis, b' cis, ais' e ais |

  b, b' dis, b' b, b' dis, b' \bar "!"
  a fis' c fis a, fis' c fis \bar "!"
  gis, e' b e a, fis' c fis |

  gis, e' b e gis, e' b e \bar "!"
  dis, dis' b dis dis, dis' b dis \bar "!"
  \tuplet 3/2 {e,8 e' b e e, e'} fis,-. r8 r4 |

  % Romantic Evaded Cadence

  gis,4 b2 e4 \bar "!" 
  gis,4 b2 e4 \bar "!" 
  a,4 cis2 fis4 |

  fis,4 b2 dis4 \bar "!"
  fis8 r gis4( fis e \bar "!"
  b2 a)  |

  r1
  r1
  r1
 
  fis8_\markup{\italic tenerezza}( b dis cis d dis e f \bar "!" 
  fis gis fis gis ais gis a fis \bar "!"
  e f dis cis a gis fis4) |

  % Codetta

  e4_\mp_\> e' r <ais, cis>-. \bar "!"
  r4 fis-. r fis-. |

  r2. <ais cis>4-. \bar "!"
  r4 fis-. r fis-. |

  r2. <ais cis>4-. \bar "!"
  r4 fis-. r fis-._\ppp\!\fermata |
 
  % Final

  <e fis>1_\ff_>
  <e gis>4_\p r2. \bar "|."
}

theExposition =
{ \new StaffGroup <<

  \new Staff \with {instrumentName = "Violin I"} \exposition_violin_i
  \new Staff \with {instrumentName = "Violin II"} \exposition_violin_ii
  \new Staff \with {instrumentName = "Viola"}    \exposition_viola
  \new Staff \with {instrumentName = "Cello"}    \exposition_cello

  >>
}

\score
{
  \theExposition
  \layout {}
}
