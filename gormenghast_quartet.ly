\version "2.24.3"

#(set-default-paper-size "arch a")

#(define (not-first-page layout props arg)
  (if (> (chain-assoc-get 'page:page-number props 0) 1)
       (interpret-markup layout props arg)
       empty-stencil))

\paper
{
  oddFooterMarkup =
    \markup
    \fontsize #-2
    \fill-line
    {
      \on-the-fly #not-first-page \fromproperty #'header:title

      \fromproperty #'header:copyright
    }

  evenFooterMarkup = \oddFooterMarkup

  top-margin    = 0.5\in
  bottom-margin = 0.5\in
  left-margin   = 0.5\in
  right-margin  = 0.5\in
}

\header
{
  title      = "Gormenghast 2077"
  subtitle   = "Sonata in C# minor, Op. 2 for String Quartet"
  composer   = "Shawn Garbett"
  arranger   = "Arr. by Shawn Garbett, Buffy Rhea"
  tagline    = "Gormenghast 2077 "
  midititle  = "gormenghast_quartet.midi"
  copyright  = "Copyright © 2026 Shawn Garbett, All rights reserved"
}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%
%% Exposition

exposition_violin_i = \relative c''' 
{
  \tempo "Gemendo" 4 = 120
  \key cis \minor
  \clef treble
  \time 4/4

  % Opening Sentence 

  \mark "tracking shot"

  <<cis4 gis'4-._\markup{\italic pizz.}_\mp>> r2. \bar "!"
  c,4-. r2. \bar "!"
  cis4-. r4 c4-. r4 |

  <<cis4 gis'4-.>> r2. \bar "!"
  c,4-. r2. \bar "!"
  cis4-. r4 c4-. r4 |

  gis,1_\markup{\italic arco}
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
  \tempo "Gemendo" 4 = 120
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

  dis,1_\markup{\italic arco}
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
  \tempo "Gemendo" 4 = 120
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
  \tempo "Gemendo" 4 = 120
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
  \tempo "Gallop" 4. = 140
  \key b \major
  \clef treble
  \time 6/8

  \mark "messenger arrives"

  % Gallop

  e'''8-^_\ppp\<_\markup{\italic {strum bowing}}^\downbow e e e e e |
  b8->^\downbow b b b b b         |
  fis8->\downbow fis fis e->\upbow e e |

  dis8->\downbow dis dis r8 e->\downbow fis->\upbow |
  e8->\downbow fis->\upbow e->\downbow fis->\upbow gis->\downbow gis |
  b8->\downbow b b fis->\upbow fis fis |
 
  dis8-^\downbow dis dis dis dis dis   |
  ais'8->\downbow ais ais ais ais ais  |
  f8->\downbow f f dis\upbow dis dis |
 
  d8->\downbow d d r8 dis->\downbow f->\upbow |
  dis->\downbow f->\upbow dis->\downbow f->\upbow g8->\downbow g8 |
  gis8-._\fff\!\downbow r4 r4.^\fermata \bar "||"

  % Subordinate

  gis8-^_\mf\downbow gis gis dis->\upbow dis dis |
  fisis8->\downbow gis->\upbow ais->\downbow gis->\upbow ais->\downbow gis->\upbow |
  ais8->\downbow r4 b8->\upbow b b |
  
  ais8->\downbow ais ais gis->\upbow gis gis |
  cis8->\downbow cis cis cis cis cis |
  gis8->\downbow r4 r4. 

  gis8->\downbow gis gis dis->\upbow dis dis |
  fisis8->\downbow gis->\upbow ais->\downbow gis->\upbow ais->\downbow gis->\upbow |
  ais8->\downbow r4 b8->\upbow b b |
  
  ais8->\downbow ais ais gis->\upbow gis gis |
  cis->\downbow cis cis cis cis cis |
  gis8->\downbow r4 r4._\markup{\italic arco} 

  gis4._\mp_\markup{\italic sostendo} dis |
  fisis8 gis ais gis ais gis |
  dis4\> ais8 fis4.\! |

  r2.\fermata  % First Breath 
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

  r2.\fermata | % Second Breath

  r2._\markup{\italic rallentando} |
  r2. |
  r2. |

  d4.\>_\mf( gis) |
  cis8( d e d e d |
  dis4) ais8 fisis4._\pp\!

  dis4_\mf\< a'8 fis4. |
  a4 dis8 c4. |
  \slashedGrace {f16(} e8)_\sfz\! b gis~ gis4. |

  % False Endings
  
  \slashedGrace {d'16(} cis4)_\mf_\markup{\italic {a tempo}} ais8 f4. |
  \slashedGrace {c'16(} b4) g8 dis4. |
  \slashedGrace {a'16(} gis4) f8 d4. |

  r2. |
  r2. |
  gis'2.-^_\f |

  r2. |
  e4.-> e4.-> |
  cis'8( gis e cis gis e |

  fis2.) |
  r2. |
  b4--_\mf dis-- fis-- |
  
  gis2.-> |
  r2. 
  b,8( a gis ais bis cis |
  
  fis2.)-^ |
  fis4.-^ fis-^ |
  r4. r4 ais,8( |

  g8 e fis a ais cis |
  dis8 r8 r8 ais8) r4 |
  r2. |

  % Final Cadence (drawn out)

  r4. r4 ais8(\<_\mf_\markup{\italic acceso} |
  gis8 fis gis ais b cis |
  dis8 cis dis eis fisis gis |
  
  ais8_\ff\! gis ais gis ais gis\> |
  fis8 e dis cis b a |
  gis8 fis gis fis gis fis |

  ais8_\mp\! gis\< bis ais cis bis |
  dis8 a cis gis b fis |
  c'2.-^)\!_\ff |

  cis2.-^\>( |
  gis2.) |
  dis8->( dis4 cis8-> cis4 |
  
  bis4.->_\mp\!) r4 cis8\<( |
  dis8 cis dis cis dis e |
  gis2.\!\fermata)--_\f \bar "|." 

}

development_violin_ii = \relative c
{
  \tempo "Gallop" 4. = 140
  \clef treble
  \key b \major
  \time 6/8

  % Gallop

  r2. |
  r2. |
  r2. |

  r2. |
  r2. |
  r2. |

  c''8-^_\ppp\<_\markup{\italic {strum bowing}}-^\downbow c c c c c | 
  cis8->\downbow cis cis cis cis cis  |
  cis8->\downbow cis cis g->\upbow g g |  

  fis8->\downbow fis fis r8  g->\downbow cis->\upbow |
  g8->\downbow cis->\upbow g->\downbow cis->\upbow dis8->\downbow dis |
  dis8-._\fff\!\downbow r4 r4.\fermata \bar "||"

  % Subordinate
  r4. b8->\upbow b b  |
  r4. b8->\upbow b b  | 
  r2. |

  r4. b8->\upbow b b  |
  r4. b8->\upbow b b  | 
  r2. |

  r4. gis8->\upbow gis gis |
  dis8->\downbow dis dis gis->\upbow gis gis  |
  b8->\downbow r4 r4. |

  b8->\downbow b b ais->\upbow ais ais |
  gis8->\downbow gis gis cis->\upbow cis cis |
  dis8->\downbow r4 r4. | 
  
  r4. b8->\upbow b b  |
  r4. b8->\upbow b b  | 
  r2._\markup{\italic arco} |

  r2.\fermata | % First Breath
  gis4-._\p r4 ais8_\mf_\markup{\italic sostendo} dis |
  dis8_\markup{\italic{a tempo}} ais fis fis8-> r4 |

  r4. dis'8_\mf-. r4 |  
  r4. ais8-. r4  |
  r2. |

  r8 a(\< a' gis g fis |
  f8 gis e d dis c |
  a2.)\! | 

  r2. | 
  r2. |
  r2. |

  r2.\fermata | % Second Breath

  r4_\markup{\italic rallentando} d,_\mf r |
  d4 r2 |
  r2. | 
 
  d4-._\mp gis-. d'-. |
  f4-. g8-. gis-. a-. cis-. |
  r2. |
  
  c,,4-^_\ff c c8 c-^ |
  r4 c-^ c |
  b8-. r8 r2 |
  
  % False Endings

  r4._\markup{\italic {a tempo}} ais'4._\mp-. |  
  r4. g4.-. |
  r4. gis4.-. |

  r8 ais\> gis fis e dis\! |   
  e\< f g gis ais4 |
  b2.-^\!_\f | 

  r2. |
  gis4.-> gis4.-> |
  r2. |

  <b fis'>2. |
  r2. |
  gis4--\mf b-- dis-- |

  <cis gis'>2.-> |
  r2. |
  r2. |

  dis2.-^ |
  dis4.-^ dis-^ |
  r2. |

  r2. |
  r2 r8 gis( |
  fis e fis gis ais bis |
  
  % Final Cadence (drawn out)

  cis8) r4 gis8 r4 |
  r2. |
  r2. |

  r2. |
  gis4 r2 |
  gis4 r2 |

  gis2.~ |
  gis2.~ |
  gis2.  |

  gis2.~ |
  gis2.  |
  r2.    |

  r2.    |
  r2.    |
  e2.\fermata \bar "|."
}

development_viola = \relative c
{
  \tempo "Gallop" 4. = 140
  \clef alto
  \key b \major
  \time 6/8

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

  r2.\fermata | % First Breath
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
 
  r2.\fermata | % Second Breath
 
  r4_\markup{\italic rallentando} a,\downbow c\upbow |
  a\downbow c\upbow a8(\f dis |
  gis8 eis cis~ cis4.) |

  d4-^\> r d,-> |
  d'4-> r d,_\p\! |
  r2. |

  a'4-^_\ff a a8 a-^ |
  r4 a-^ a |
  gis8-. r8 r2 |

  % False Endings

  f4_\mp_\markup{\italic {a tempo}} r ais |
  dis4 r cis |
  f4 r d |

  r2. |
  cis,8\< dis e eis fisis4 |
  gis2.-^\! |

  r2. |
  e4.-> e4.-> |
  r2. |

  fis2. |
  r2.   |
  fis4--_\mf gis-- b-- |  

  e2.-> |
  r2. |
  r2. |

  b2.-^ |
  b4.-^ b4.-^ |
  r2. |

  r2. |
  r2. |
  r2. |

  r2. |
  r2. |
  r2. |

  % Final Cadence (drawn out)
  
  r2. |
  f4 r2 |
  dis4 r2 |
 
  gis2.~ |
  gis2.~ |
  gis2.  | 
  
  <e c'>2.~ |
  <e c'>2.  |
  r2. 

  r2.
  r4 dis-. e-. | 
  cis2~\fermata cis8_\markup{ \concat {\italic "cheeky" \hspace #1 }} dis8-.-> \bar "|."
}

development_cello = \relative c
{
  \tempo "Gallop" 4. = 140
  \clef bass
  \key b \major
  \time 6/8

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

  dis'4. r4. |
  dis4. r4. | 
  dis16_\markup{\italic energico}_\mf gis b gis b gis dis'4.-^ | 

  dis,4. r4. |
  dis4. r4. | 
  dis16 gis b gis b gis dis'4.-^ | 

  dis,4. r4. |
  dis4. r4. | 
  dis16 gis b gis b gis dis'4.-^ | 

  dis,4. r4. |
  dis4. r4. | 
  dis16 gis b gis b gis dis'4.-^ | 

  dis,4._\markup{\italic sostendo}_\mp r4. |
  dis4. r4. | 
  dis16 fis ais fis ais fis dis'4.-^ | 

  r2.\fermata | % First breath
  r2. |
  dis,,16_\markup{\italic {a tempo}}_\mf  fis ais fis ais fis f4.-> |

  dis4. r4. |
  dis4. r4. | 
  dis16 gis b gis b gis c4. |

  r2. |
  r2. |
  r2. | 

 
  r2. |
  r2. | 
  r2. |

  r2.\fermata | % Second breath

  r2._\markup{\italic rallentando} |
  r2. |
  cis16_\f\> eis gis eis gis eis gis4. |

  d4. r4. |
  d4._\p\! r4. | 
  r2. |

  dis,4-^_\ff dis dis8 dis-^ |
  r4 dis4-^ dis |
  e8-. r8 r2 |

  % False Endings

  ais4._\mp_\markup{\italic {a tempo}} r4. |
  dis4. r |
  d4. r | 

  ais4 r dis |
  dis4 r cis |
  gis2.-^ |  

  r4. cis16 e gis e gis e |
  cis4. cis,4. |
  r2. |

  gis'2. |
  r2. | 
  dis'4 fis gis |

  cis,,2. |
  r2. |
  r4. cis'16 e gis e gis e |

  gis2. |
  gis,4. gis | 
  r2. |

  r2 ais4 |
  dis2. |
  r2 gis,4 |

  e2. |
  r2 fis4 |
  dis2. |

  % Final Cadence (drawn out)

  r2 gis4 |
  gis4 r2 |
  gis4 r2 |

  <gis dis'>2.~ |  
  <gis dis'>2.~ |
  <gis dis'>2.  |

  <cis gis'>2.~ |
  <cis gis'>2.  |
  r2. |

  r2. |
  r4 bis-. cis-. |
  cis,2.\fermata \bar "|."
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

\score
{
  \unfoldRepeats{ \theDevelopment }
  \midi {}
}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%
%% Recap

recap_violin_i = \relative c
{
  \tempo "Adagio" 4 = 50
  \key e \major
  \clef treble
  \time 4/4

  \mark "nuntium calamitosum"
  \textMark \markup {\italic "dolore"}

  r1 |
  r1 |
  r1 |

  r2 r4\fermata r4 |
  r1 |
  r1 |
 
  r1 |
  r1 |
  d'1~_\pp_\markup{\italic {flautando}} |

  d1 |
  gis4. r8 gis4. r8 |
  d1 |
  
  r4 r8 b'-._\p_\markup{\italic ord.}\< r2 |
  r4 r8 a-. r2 |
  gis1( |

  cis2 e) |
  cis1\!_\mf~ |
  cis1\> |

  gis1_\pp\! |
  r1 |

  % The Duke Interrupts 

  e8-._\mf r16 e8-. r16 e8-. e4 r |
  e8-. r16 e8-. r16 e8-. e4 r |
  e8-. r16 e8-. r16 e8-. e4 r |

  dis8_\p( ais' dis fis ais \tuplet 3/2 {b cis dis}) r8 |
  r1 |
  cis,,8( gis' cis e gis \tuplet 3/2 {ais bis cis}) r8 |

  r1 |
  r1 | 
  r1 |

  cis,4(_\mp gis bis8 cis dis cis |
  dis8) r e4( dis cis |
  \repeat tremolo 6 gis8 \repeat tremolo 2 e'8 |

  \repeat tremolo 8 cis8) |
  r1 |
  r1 |

  r1 |
  r1 |
}

recap_violin_ii = \relative c
{
  \tempo "Adagio" 4 = 50
  \key e \major
  \clef treble
  \time 4/4

  r1 |
  r1 |
  r1 |

  r2 r4\fermata r4 |
  r1 |
  r1 |

  e'1~_\p_\markup{\italic {flautando}} |
  e1 |
  a,1~ |

  a1 |
  e'4. r8 e4. r8 |
  a1 |

  r4 r8 gis8-._\markup{\italic ord.}_\pp\< r2 |
  r4 r8 f8-. r2 |
  e1( |
    
  gis2 cis2) |
  b1~_\mf\! |
  b1\> | 

  dis,1_\pp\! | 
  r1 |

  % The Duke Interrupts 

  cis8-._\mf r16 cis8-. r16 cis8-. cis4 r |
  cis8-. r16 cis8-. r16 cis8-. cis4 r |
  cis8-. r16 cis8-. r16 d8-. cis4 r |

  r1 |
  d8_\p( a' d f a \tuplet 3/2 {b cis d}) r8 |
  r1 |

  cis,4(_\mp gis bis8 cis dis cis |
  dis8) r e4( dis cis |
  \repeat tremolo 4 fis,8 cis'8-.) r8 r4 |

  gis4( e fis8 gis a gis |
  a8) r b4( a gis |
  \repeat tremolo 6 e8 \repeat tremolo 2 cis'8 |

  \repeat tremolo 8 gis8) |
  r1 |
  r1 |

  r1 |
  r1 |
  \bar "|."
}

recap_viola = \relative c
{
  \tempo "Adagio" 4 = 50
  \key e \major
  \clef alto
  \time 4/4

  r1 |
  r1 |
  r1 |

  r2 r4\fermata r4 |
  r1 |
  r1 |
 
  e1(_\mp_\markup{\italic {flautando}} |
  g1 |
  e2 d |

  cis2) r4 d( |
  e4 d e f |
  g2 cis,) |

  gis'1_\mp\<_\markup{\italic ord.} |
  f1 |
  cis1( |

  e2 gis) |
  g1(_\f\! |
  a2)\> cis4( b |

  a4 gis2) r4 |
  gis4(_\p\! ais c2) |

  % The Duke Interrupts 
  
  gis8-._\mf r16 gis8-. r16 fis8-. gis4 r |
  gis8-. r16 gis8-. r16 fis8-. gis4 r |
  gis8-. r16 gis8-. r16 fisis8-. gis4 r |

  r1 |
  r1 | 
  r1 |

  gis4_\mp gis' gis, gis' |
  gis,4 gis' gis, gis' |
  \repeat tremolo 4 fis8~ fis8 r8 r4 |

  r1 |
  r1 |
  r1 |

  r1 |
  dis2._\p(_\markup{\italic crescendo} fis4~ |
  fis4 ais bis) cis8( dis |

  \tuplet 3/2 {c8_\markup{\italic calando} b a-.)} g16 f e-. r d c b-. r ais b c-. r |
  r1 \bar "|."

}

recap_cello = \relative c
{
  \tempo "Adagio" 4 = 50
  \key e \major
  \clef bass
  \time 4/4


  cis1_\pp(_\markup {\italic {col legno stratto}} |
  g1_\ppp | 
  e2 d |

  cis2) r4\fermata d(_\markup{\italic {flautando}}\< |
  e4 d e f |
  gis2 d2) |

  cis1~\!_\mp |
  cis1
  d1~ |

  d1  |
  cis'4. r8 cis4. r8 |
  d,1 |

  e'1_\mp\<_\markup{\italic ord.}( |
  d1 |
  cis1~ |

  cis1) |
  g1(_\f\!   |
  g1)\>   |

  c1    |
  gis1_\p\! |

  % The Duke Interrupts 

  %b8.-._\mf b8.-. r8 r2 |
  %b8.-. b8.-. r8 r2 |
  %cis8.-. cis8.-. r8 r2 |
  
  b8-._\mf r16 b8-. r16 r8 r2 |
  b8-. r16 b8-. r16 r8 r2 |
  b8-. r16 b8-. r16 r8 r2 |

  r1 | 
  r1 | 
  r1 | 

  % Subordinate returns
  
  r1 |
  r1 |
  r1 |

  gis4_\mp gis' gis, gis' | 
  gis,4 gis' fis gis |
  e4 gis dis \repeat tremolo 2 gis8~ |

  \repeat tremolo 8 gis8 |
  dis1_\p_\markup{\italic crescendo}~ |
  dis1 |
  
  d2._\markup{\italic calando} r4 |
  cis-._\ppp r2. \bar "|." 
}

theRecap = 
{ \new StaffGroup <<

  \new Staff \with {instrumentName = "Violin I"}  \recap_violin_i
  \new Staff \with {instrumentName = "Violin II"} \recap_violin_ii
  \new Staff \with {instrumentName = "Viola"}     \recap_viola
  \new Staff \with {instrumentName = "Cello"}     \recap_cello

  >>
}

\score
{
  \theRecap
  \layout {}
}

\score
{
  \unfoldRepeats{ \theRecap }
  \midi {}
}

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%
%% Coda

spacerVoice = \new Voice 
{
  \override MultiMeasureRest.transparent = ##t
  \override MultiMeasureRest.minimum-length = #10
  R2.
}

coda_violin_i = \relative c
{
  \tempo "Andante" 4 = 90
  \key e \major
  \clef treble
  \time 4/4

  \mark "amor fati"

  fis'8-._\markup{\italic pizz.}_\mp r8 r4 r2 |
  \slashedGrace {e16-.(} fis8)-._\markup{\italic testing} r \slashedGrace {e16-.(} fis8)-. r r4. r16 fis16-. |
  e16-. fis-. gis-. a-. r2. |

  r1 |
  gis16-. gis16-. r8 r2 r8. gis16-. |
  fis16-. gis-. a-. b-. r2 r8 fis-.\< |

  gis8-. fis-. gis-. a-. cis4-. fis-. |
  cis'2-._\mf\! gis-.\> |
  e4-. dis-. cis-.\! r |

  r2 cis'2_\markup{\italic arco}  |
  a1 |
  a4(_\mf\> gis fis)\! r4 |

  % New Life

  dis1_\mp_\markup{\italic {con brio}} |
  eis1 |
  dis2 eis |
  
  fis1 |
  e1 |
  dis2 cis |
  
  b1 |
  b1 |
  r2. r4\fermata |
 
  % Ball
 
  \time 3/4

  r2._\markup{\italic {poco rit.}} |
  r2. |

  % First round of 3
  r4 gis'-._\markup{\italic pizz.}_\p gis-. |
  r4 ais-. ais-. |
  r4 b-. b-. |
  r4 a-. a-. |
  
  r4 gis-. gis-. |
  r4 ais-. ais-. |
  r4 b-. b-. |
  r4 a-. a-. |

  \slashedGrace {d8(} cis4_\markup{\italic arco}_\mf gis bis |
  e8 fis e \slashedGrace {a8} fis-.) r4 |
  \slashedGrace {e8(} dis4 cis b |
  gis2) \slashedGrace {a8} dis-.-> r8 | 
 
  % Second round of 3
  \slashedGrace {cis,16( d)} cis4(\< gis bis |
  cis8 dis cis \slashedGrace {f8} dis-.)\! r4 |
  \slashedGrace {e8(} dis4\> d8 dis ais' cis, |
  gis2.)\! |

  r8 cis,8(_\ff\> \tuplet 3/2 {cis''8 c b} \tuplet 5/2 {ais8 gis cis g f~} |
  f8 fis dis cis d b |
  a4 gis fis |
  e2._\startTrillSpan |

  dis8\stopTrillSpan)_\mp\!  r8 r4 bis''4-._\markup{\italic pizz.}_\p |
  r2 gis4-. |
  r2 ais4-. |
  r4 a4-. r |

  % Cadence

  r2 cis4~_\mp_\markup{\italic arco} |
  cis4 r2 |
  cis2 gis4 |
  << {<cis, gis'>2.->} \new Voice { \override Hairpin.stencil = #flared-hairpin
     s8_\< s8 s8 s8 s8 s8\!}
     \spacerVoice
  >> 
  \bar "|."
}

coda_violin_ii = \relative c
{
  \tempo "Andante" 4 = 90
  \key e \major
  \clef treble
  \time 4/4

  r1 |
  r1 |
  r1 |

  r1 |
  r1 |
  r1 |

  r1 |
  r1 |
  r2. r8 cis''8(_\mp_\markup{\italic agreement} |

  dis8 cis8 dis e gis4 dis) |
  cis2(_\mf\> a2)\! | 
  e4_\mf(->\> dis cis)\! r |  

  % New Life

  a'1_\mp_\markup{\italic {con brio}} |
  bis1 |
  a2 bis |

  cis1 |
  c1 |
  b2 b2 |

  gis1 |
  a1 |
  r2. r4\fermata |

  % Ball
  \time 3/4

  r2._\markup{\italic {poco rit.}} |
  r2. |

  % First round of 3
  r4 e'-._\markup{\italic pizz.}_\p e-. |
  r4 fis-. fis-. |
  r4 fis-. fis-. |
  r4 e-. e-. |

  \slashedGrace {d8(} cis4_\mf_\markup{\italic arco} gis bis |
  e8 fis e \slashedGrace {a8} fis-.) r4 |
  \slashedGrace {e8(} dis4 cis b |
  gis2) \slashedGrace {a8} dis-.-> r8 | 

  r4.  \slashedGrace {d8(} cis4_\mp gis8~ |
  gis8 bis4 e8 fis e \slashedGrace {a8} |
  fis8-.) r4 \slashedGrace {e8(} dis4 cis8~ |
  cis8 b4 gis8) r4 | 

  % Second round of 3
  r4 r gis'-._\markup{\italic pizz.}_\p  |
  r4 r ais-. |
  r4 r b-. |
  r4 r gis-. |

  r4 r gis-.  |
  r4 r ais-. |
  r4 r a-. |
  r4 r r |

  r4 gis4-. r |
  r4 eis4-. r |
  r4 fis4-. r |
  r4 fis4-. r |

  % Cadence
  r2 b,4~_\markup{\italic arco}_\mp |
  b4 r2 |
  b2 dis,4 |
  << {gis2.->} \new Voice { \override Hairpin.stencil = #flared-hairpin
     s8_\< s8 s8 s8 s8 s8\!}
     \spacerVoice
  >> 
  \bar "|."
}

coda_viola = \relative c
{
  \tempo "Andante" 4 = 90
  \key e \major
  \clef alto
  \time 4/4

  r1 |
  r1 |
  r2 g'2_\fff--_\markup{NO} |

  r1 |
  r1 |
  r2 r8 fis4._\pp_\markup{\italic maybe} |

  r2 cis'4 gis4 |
  r1 |
  r1 |

  cis2_\mp r2 |
  a1 |
  a'1 |

  % New Life
  
  gis2_\markup{\italic {con brio}}_\mf-^\>( e2)\! |
  bis'4(->\> ais gis)\! r8 ais(\< |
  gis8 fis gis ais bis4 gis)\! | 

  gis8-^\> fis gis a b4\! gis |
  fis8->\> e fis gis a4\! fis\< |
  e4( b'-.) e,( a-.)\! |

  c,2-^\>( e4 gis\!) |
  g2-> a4\< cis8( b |
  a8 gis4) r8 fis8( e dis4)\fermata\!_\f |

  % Ball

  \time 3/4
  
  r2._\markup{\italic {poco rit.}} |
  r2. |
  
  % First round of 3
  \slashedGrace {d8(} cis4_\mf gis bis |
  e8 fis e \slashedGrace {a8} fis-.) r4 |
  \slashedGrace {e8(} dis4 cis b |
  gis2) \slashedGrace {a8} dis8-.-> r8 | 

  r4 e-._\markup{\italic pizz.}_\p e-. |
  r4 fis-. fis-. |
  r4 fis-. fis-. |
  r4 e-. e-. |

  r4 e-. e-. |
  r4 fis-. fis-. |
  r4 fis-. fis-. |
  r4 e-. r |

  % Second round of 3

  r4 e-. r |
  r4 fis-. r |
  r4 fis-. r |
  r4 e-. r |

  r4 e-. r |
  r4 fis-. r |
  r4 fis-. r |
  r4 e-. r |

  dis,8(_\markup{\italic arco}\< gis \tuplet 3/2 {c ais b} \tuplet 5/2 {c cis d dis f~_\f\!} 
  f8\> g f fis dis cis |
  d4 bis ais)_\mf\! |
  fis8_\mp e8 dis2 |

  % Cadence

  r4 gis8( fis e4~ |
  e4) r4 a8( gis |
  fis4) gis8( ais bis4) |

  << {e2.->} \new Voice { \override Hairpin.stencil = #flared-hairpin
     s8_\< s8 s8 s8 s8 s8\!}
     \spacerVoice
  >> 
  \bar "|."
   
}

coda_cello = \relative c
{
  \tempo "Andante" 4 = 90
  \key e \major
  \clef bass
  \time 4/4

  r1 |
  r1 |
  r2 g2_\fff--_\markup{NO} |

  r1 |
  r1 |
  r1 |
 
  r1 |
  b1_\markup{\italic reluctant}_\pp\< |
  a1 |

  gis1 |
  fis1 |
  fis'1_\mp\! |

  % New Life

  gis1_\mp_\markup{\italic {con brio}} |
  a1   |
  gis2 a2 |

  b1   |
  c1   |
  e,2 e2 |

  e1 |
  e1 |
  r2. r4\fermata |

  % Ball

  \time 3/4

  cis,4->_\markup{\italic {poco rit.}}_\mp <cis' gis'>4-. <cis gis'>-. |
  fis,4-> <cis' ais'>4-. <cis ais'>-. |

  % First round of 3
  cis,4-> <cis' gis'>4-. <cis gis'>-. |
  fis,4-> <cis' ais'>4-. <cis ais'>-. |
  b4-> <dis b'>-. <dis b'>-. |
  e,4-> <b' gis'>-. <b gis'>-. |

  cis,4-> <cis' gis'>4-. <cis gis'>-. |
  fis,4-> <cis' ais'>4-. <cis ais'>-. |
  b4-> <dis b'>-. <dis b'>-. |
  e,4-> <b' gis'>-. <b gis'>-. |

  cis,4-> <cis' gis'>4-. <cis gis'>-. |
  fis,4-> <cis' ais'>4-. <cis ais'>-. |
  b4-> <dis b'>-. <dis b'>-. |
  e,4-> <b' gis'>-. r |

  % Second round of 3
  cis,4-> r2 |
  fis4-> r2 |
  b4-> r2 | 
  e,4-> r2 |

  cis2. |
  fis2. |
  b2. | 
  e,2 r4 |

  \repeat tremolo 12 gis16\< |
  \repeat tremolo 12 cis16\! |
  \repeat tremolo 12 f16\> |
  b,4\!_\mp b'4 r |

  r2 e,4~ |
  e4 r2 |
  e2 bis4 | 
  << {cis2.->} \new Voice { \override Hairpin.stencil = #flared-hairpin
     s8_\< s8 s8 s8 s8 s8\!}
     \spacerVoice
  >> 
  \bar "|."
}

theCoda = 
{ \new StaffGroup <<

  \new Staff \with {instrumentName = "Violin I"}  \coda_violin_i
  \new Staff \with {instrumentName = "Violin II"} \coda_violin_ii
  \new Staff \with {instrumentName = "Viola"}     \coda_viola
  \new Staff \with {instrumentName = "Cello"}     \coda_cello

  >>
}

\score
{
  \theCoda
  \layout {}
}

\score
{
  \unfoldRepeats{ \theCoda }
  \midi {}
}

% Violin 1
\pageBreak
\score { \new Staff \with {instrumentName = "Violin I"} \exposition_violin_i \layout {} }
\score { \new Staff \with {instrumentName = "Violin I"} \development_violin_i \layout {} }
\score { \new Staff \with {instrumentName = "Violin I"} \recap_violin_i \layout {} }
\score { \new Staff \with {instrumentName = "Violin I"} \coda_violin_i \layout {} }

% Violin 2
\pageBreak
\score { \new Staff \with {instrumentName = "Violin II"} {\mark "tracking shot" \exposition_violin_ii} \layout {} }
\score { \new Staff \with {instrumentName = "Violin II"} {\mark "messenger arrives" \development_violin_ii} \layout {} }
\score { \new Staff \with {instrumentName = "Violin II"} {\mark "nuntium calamitosum" \recap_violin_ii} \layout {} }
\score { \new Staff \with {instrumentName = "Violin II"} {\mark "amor fati" \coda_violin_ii} \layout {} }

% Viola
\pageBreak
\score { \new Staff \with {instrumentName = "Viola"}  {\mark "tracking shot" \exposition_viola} \layout {} }
\score { \new Staff \with {instrumentName = "Viola"} {\mark "messenger arrives" \development_viola} \layout {} }
\score { \new Staff \with {instrumentName = "Viola"} {\mark "nuntium calamitosum" \recap_viola} \layout {} }
\score { \new Staff \with {instrumentName = "Viola"} {\mark "amor fati" \coda_viola} \layout {} }

% Cello
\pageBreak
\score { \new Staff \with {instrumentName = "Cello"}  {\mark "tracking shot" \exposition_cello} \layout {} }
\score { \new Staff \with {instrumentName = "Cello"} {\mark "messenger arrives" \development_cello} \layout {} }
\score { \new Staff \with {instrumentName = "Cello"} {\mark "nuntium calamitosum" \recap_cello} \layout {} }
\score { \new Staff \with {instrumentName = "Cello"} {\mark "amor fati" \coda_cello} \layout {} }


