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
  \tempo "Gemendo" 4 = 120
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
  e4--->\< r dis---> r

  cis1_\mf~(\!
  cis1
  c)

  % Tihai lead to harmonic loosening

  r1
  r1
  r1

  cis8->_\p r e r fis r gis8->-. r8 \bar "!"
  r8 cis,8-> r e r fis r gis8->-. \bar "!"
  r4 e'8->(_\mp dis e fis ais4)-\fermata |
  
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

  e,,4(_\mf\< b dis8 e fis e \bar "!" 
  fis8) r gis4( fis e \bar "!"
  a,2) e'8-. r8 r4  |

  e4( b dis8 e fis e \bar "!" 
  fis8) r gis4( fis e \bar "!"
  a,2) e'8-. r8 r4  |

  e4(_\ff\! b dis8\> e fis e \bar "!" 
  fis8)_\mf\! r gis4(\> fis e \bar "!"
  b2)_\mp r2  |

  % Additional Motif

  r1 \bar "!"
  r1 \bar "!"
  r1 |

  b,4._\mf_\markup{\italic allegrezza} fis'8 dis2 \bar "!"
  fis4. c'8 a4. dis,8 \bar "!"
  e8 b' gis e fis2 |

  e4.\< b'8 gis2 \bar "!"
  fis4. dis'8 b4. gis8 \bar "!"
  e'8 b gis e fis-._\ff\! r8 r4

  % Romantic Evaded Cadence 

  r8_\markup{\italic leggierissimo}(_\pp e' e' dis d cis b dis \bar "!"
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
  r4 dis-. r e-. |

  gis8( fis gis a) r4 gis4 \bar "!"
  r4 dis-. r e-. |

  gis8( fis gis a) r4 gis4 \bar "!"
  r4 dis-. r e-.-\fermata_\ppp\! |

  % Final
  dis'1_\ff_>
  e4_\p r2. \bar "|."
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
  gis2->\< fis2->  

  gis1(\!_\mf
  a1
  gis1)
 
  % Tihai lead to harmonic loosening

  r1 
  r1 
  r1

  b8->_\p r cis r b r b r->-. \bar "!"
  r8 a->(_\mp gis a b dis4 b8)->-. \bar "!"
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

  % Using chord outlines instead
  b,,4(_\mf\< gis a8 b cis b \bar "!"
  cis8) r dis4( cis b \bar "!"
  e,2) b'8-. r8 r4 |

  b4(\!_\ff gis\> a8 b cis b \bar "!"
  cis8)_\mf r dis4(\> cis b \bar "!"
  e,2)\!_\mp r2 |
  %

  % Additional Motif

  \repeat tremolo 8 b8 \bar "!"
  \repeat tremolo 8 cis8 \bar "!"
  r1 |

  \repeat tremolo 8 b8 \bar "!"
  \repeat tremolo 8 c8 \bar "!"
  b8_\mf gis' e b c2 |
  
  b4.\< gis'8  e2 \bar "!"
  dis4. b'8    fis4. e8 \bar "!"  
  b'8 gis e b dis-._\ff\! r8 r4 |

  % Romantic Evaded Cadence 

  r1
  r1
  r1

  r1
  r1
  r1

  r8 e_\markup{\italic {con abbandono}}(_\mp \tuplet 3/2 {gis8 a ais b c dis} e fis \bar "!"
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

  b'1_\ff_>
  gis4_\p r2. \bar "|."
}

exposition_viola = \relative c'
{
  \key cis \minor
  \clef alto
  \time 4/4

  % Opening Sentence

  cis2-^(\>_\mf_\markup{\italic gemendo} gis)\! \bar "!"
  dis4(\>-> cis bis)\! r8 cis(\< \bar "!"
  dis8 cis dis e gis4) dis | 

  gis2(\!-^\> e2)\! \bar "!"
  bis'4(\>-> ais gis)\! r8 ais(\< \bar "!"
  gis8 fis gis ais bis4) gis |

  gis8(\!_\mf\> fis gis a b4) gis\! \bar "!"
  fis8(\> e fis gis\! a4)\< fis \bar "!"
  <e gis>4(---> b'-.) <dis, fis>(---> a'-.) |

  cis,2\!_\f---> e4-- gis-- \bar "!"
  g2_\sfz--  a4--\>  cis8( b\bar "!"
  a8 gis4)\! r8 gis8(\< ais8 bis4  |  

  % Tihai lead to harmonic loosening

  cis2)->\! r2
  r1
  r1

  a8(->_\mp gis a b dis4 b8-.->) r8 \bar "!"
  r8 b->-._\p r cis r b r b-.-> \bar "!"
  r4 gis8->(_\mp fis gis a cis4)-\fermata |

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

  gis,4(_\ff e\> fis8 gis a gis \bar "!"
  a8)\!_\mf r b4( a gis \bar "!"
  dis4.)_\markup{\italic allegrezza}  fis8 dis2  |

  % Additional Motif

  gis,4. e'8 b2 \bar "!"
  ais4. f'8 cis4. gis8 \bar "!"
  b8 fis' dis b ais2 |

  \repeat tremolo 8 b8_\mp \bar "!"
  \repeat tremolo 8 c8 \bar "!"
  r1

  gis4.\< e'8 b2 \bar "!"
  b4. fis'8 dis4. b8 \bar "!"
  gis'8 e b gis b-._\ff\! r8 r4 |

  % Romantic Evaded Cadence 

  r1
  r1
  r1
 
  fis8(_\markup{\italic fieramente}_\mf b dis cis d dis e f \bar "!" 
  fis gis fis gis ais gis a fis \bar "!"
  e f dis cis a gis fis4) |

  gis4_\p b2 e4 \bar "!" 
  gis,4 b2 e4 \bar "!" 
  a,4 cis2 fis4 |

  fis,4 b2 dis4 \bar "!"
  fis8 r gis4( fis e \bar "!"
  b2 a)  |
  
  % Codetta
  % ais cis e g
  r2. e'4-._\p_\> \bar "!"
  r4 b-. r cis-. |

  r2. e4-. \bar "!"
  r4 b-. r cis-. |

  r2. e4-. \bar "!"
  r4 b-. r cis-._\ppp\!\fermata |

  % Final
  
  <fis, dis'>1_\ff_>
  <gis e'>4_\p r2. \bar "|."
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
  e4---> r dis4---> r |

  cis1( \bar "!"
  g1 \bar "!"
  c1) |
  
  % Tihai lead to harmonic loosening

  gis'2-^(_\markup{\italic gemendo}\>_\mf dis2)\! \bar "!"
  a4->(\> gis fis)\! r8 gis(\< \bar "!"
  ais8 gis ais bis dis4) gis, |

  e4->\!_\mp fis  b e,8-.-> r8 \bar "!"
  r8 e4-> fis b e,8-.-> \bar "!"
  r4 gis4-> fis fis-\fermata  |

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

  b8_\mp_\markup{\italic {crescendo con moto}}_\< b' b, b' b, b' b, b' \bar "!"
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

  gis,\< e' b e gis, e' b e \bar "!"
  dis, dis' b dis dis, dis' b dis \bar "!"
  \tuplet 3/2 {e,8 e' b e e, e'} fis,-._\ff\! r8 r4 |

  % Romantic Evaded Cadence

  gis4_\pp b2 e4 \bar "!" 
  gis,4 b2 e4 \bar "!" 
  a,4 cis2 fis4 |

  fis,4\mp b2 dis4 \bar "!"
  fis8 r gis4( fis e \bar "!"
  b2 a)  |

  r1
  r1
  r1
 
  fis8_\markup{\italic tenerezza}(_\mp b dis cis d dis e f \bar "!" 
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

  <e a>1_\ff_>
  <e b'>4_\p r2. \bar "|."
}

theExposition =
{ \new StaffGroup <<

  \new Staff \with {instrumentName = "Violin I"}  \exposition_violin_i
  \new Staff \with {instrumentName = "Violin II"} \exposition_violin_ii
  \new Staff \with {instrumentName = "Viola"}     \exposition_viola
  \new Staff \with {instrumentName = "Cello"}     \exposition_cello

  >>
}

\score
{
  \theExposition
  \layout {}
}

\score
{
  \unfoldRepeats{ \theExposition }
  \midi {}
}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%
%%
%% The Development 
%%
development_violin_i = \relative c
{
  \tempo "Allegro" 4. = 140
  \key b \major
  \clef treble
  \time 6/8

  \mark "a messenger arrives"

  % Gallop

  e'''2.-^_\ppp\<_\markup{\italic gallop}     |
  b         |
  fis4.-> e |

  dis4. r8 e fis |
  e8 fis e fis gis4 |
  b4. fis |
 
  dis2.-^   |
  ais'      |
  f4.-> dis |
 
  d4. r8 dis f |
  dis f dis f g4 |
  gis8-._\fff\! r4 r4.^\fermata \bar "||"

  % Subordinate

  gis4.(_\mf dis) |
  fisis8( gis ais gis ais gis |
  ais8) r4 b4.( |
  
  ais4. gis) |
  cis2.( |
  gis8) r4 r4. 

  gis4.( dis) |
  fisis8( gis ais gis ais gis |
  ais8) r4 b4.( |
  
  ais4. gis) |
  cis2.( |
  gis8) r4 r4. 

  gis4._\mp_\markup{\italic sostendo} dis |
  fisis8 gis ais gis ais gis |
  dis4\> ais8 fis4.\! |

  r2.\fermata   
  r2.
  r2._\markup{\italic{a tempo}} |

  dis'4 ais8 fis4. |
  ais4 e'8 c4 ais8 |
  dis8 b gis ais4. |

  a4\< dis8 c4. |
  c4 ais'8 fis4.\! |
  \slashedGrace {fis16(} f8)_\sfz cis ais~ ais4. |

  ais4._\mf\<( e4.) |
  g8( ais b ais b ais\! |
  \slashedGrace{c16} b4_\sfz fis8 dis4.) |

  r2.\fermata |
}

development_violin_ii = \relative c
{
  \clef treble
  \key b \major

  % Gallop

  r2. |
  r2. |
  r2. |

  r2. |
  r2. |
  r2. |

  c''2.->_\ppp\<_\markup{\italic gallop} | 
  cis2.  |
  cis4.-> g |  

  fis4. r8  g cis |
  g8 cis g cis dis4 |
  dis8-._\fff\! r4 r4.\fermata \bar "||"

  % Subordinate
  \xNotesOn r4. b4.  |
  r4. b4. \xNotesOff | 
  r2. |

  \xNotesOn r4. b4.  |
  r4. b4. \xNotesOff | 
  r2. |

  r4. gis( |
  dis4. gis |
  b8) r4 r4. |

  b4.( ais4. |
  gis4.) cis( |
  dis8) r4 r4. | 
  
  \xNotesOn r4._\mp_\markup{\italic sostendo} b4.  |
  r4. b4. \xNotesOff | 
  r2. |

  r2.\fermata |
  gis4-._\p r4 ais8_\mf dis |
  dis8_\markup{\italic{a tempo}} ais fis fis4.-> |

  \xNotesOn r4. dis'4._\mf |  
  r4. ais4. \xNotesOff |
  r2. |

  r8 a(\< a' gis g fis |
  f8 gis e d dis c |
  a2.)\! | 

  r2. | 
  r2. |
  r2. |

  r2.\fermata |
}

development_viola = \relative c
{
  \clef alto
  \key b \major

  % Gallop

  e4_\ppp\<_\markup{\italic gallop} gis b |
  e,4 b' gis |
  dis4 fis b |

  dis,4 b' fis |
  e4 gis b |
  dis, fis b |

  dis4. r4. |
  f4. r4. |
  g4. r4. |

  c,4. r4. |
  cis4. r4. |
  dis8-._\fff\! r4 r4.\fermata \bar "||"

  % Subordinate

  dis,4-^_\mf r dis'-> |
  dis,4-^ r dis'-> |
  dis,4-^ r dis'-> |

  dis,4-^ r dis'-> |
  dis,4-^ r dis'-> |
  dis,4-^ r dis'-> |

  dis,4-^ r dis'-> |
  dis,4-^ r dis'-> |
  dis,4-^ r dis'-> |

  dis,4-^ r dis'-> |
  dis,4-^ r dis'-> |
  dis,4-^ r dis'-> |

  dis,4->_\markup{\italic sostendo}_\mp r dis' |
  dis,4-> r dis' |
  dis,4 r dis'-. |

  r2.\fermata |
  dis,4-._\p r4 r4 |
  ais'8_\mp_\markup{\italic {a tempo}} fis dis d4.-> |
  
  dis4-^_\mf r dis'-> |
  ais4-^ r ais'-> |
  gis,4-^ r ais'-> |

  r2. |
  r2. |
  r2. |

  g,8\<( ais cis b cis d |
  e8 f g f g ais  |
  b2.\!) |
 
  r2.\fermata |
}

development_cello = \relative c
{
  \clef bass
  \key b \major

  % Gallop

  r2. |
  r2. |
  r2. |

  r2. |
  r2. |
  r2. |

  a4_\ppp\<_\markup{\italic gallop} c dis |
  ais4 cis f |
  dis,4 ais' cis |

  d,4 a' c |
  ais4 dis cis |
  gis8_\fff\! r4 r4.\fermata \bar "||"

  % Subordinate

  \xNotesOn dis'4. r4. |
  dis4. \xNotesOff r4. | 
  dis16_\markup{\italic energico}_\mf gis b gis b gis dis4.-^ | 

  \xNotesOn dis4. r4. |
  dis4. \xNotesOff r4. | 
  dis16 gis b gis b gis dis4.-^ | 

  \xNotesOn dis4. r4. |
  dis4. \xNotesOff r4. | 
  dis16 gis b gis b gis dis4.-^ | 

  \xNotesOn dis4. r4. |
  dis4. \xNotesOff r4. | 
  dis16 gis b gis b gis dis4.-^ | 

  \xNotesOn dis4._\markup{\italic sostendo}_\mp r4. |
  dis4. \xNotesOff r4. | 
  dis16 fis ais fis ais fis dis4.-^ | 

  r2.\fermata |
  r2. |
  dis,16_\markup{\italic {a tempo}}_\mf  fis ais fis ais fis f4.-> |

  \xNotesOn dis4. r4. |
  dis4. \xNotesOff r4. | 
  dis16 gis b gis b gis c4. |

  r2. |
  r2. |
  r2. | 

 
  r2. |
  r2. | 
  r2. |

  r2.\fermata |
}

theDevelopment =
{ \new StaffGroup <<

  \new Staff \with {instrumentName = "Violin I"}  \development_violin_i
  \new Staff \with {instrumentName = "Violin II"} \development_violin_ii
  \new Staff \with {instrumentName = "Viola"}     \development_viola
  \new Staff \with {instrumentName = "Cello"}     \development_cello

  >>
}

\score
{
  \theDevelopment
  \layout {}
}

