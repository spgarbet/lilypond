\version "2.24.3"

#(set-default-paper-size "arch a")

#(define (not-first-page layout props arg)
  (if (> (chain-assoc-get 'page:page-number props 0) 1)
       (interpret-markup layout props arg)
       empty-stencil))

% Uncomment to remove up and down bow
% \omit Score.BarLine

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
  title      = "Unsaid"
  subtitle   = "Piano and Cello"
  composer   = "Shawn Garbett, Buffy Rhea"
  tagline    = "Things Unsaid "
  midititle  = "unsaid.midi"
  copyright  = "Copyright © 2026 Shawn Garbett, All rights reserved"
}

% i II III iv v-dim VI vii <= Main chords
% e F  G   a  b-dim C  d

harmony = \chordmode
{
  % Intro
  b1:dim7/f
  b1:dim7/f % Melody starts as pickup

  e1:m
  e1:m
  b1:dim7/f
  b1:dim7/f 

  % This or sequential?
  e2:m b2:dim/f |
  c4 g4/d  a4:m e4:m/b |
  
  % Cadential (timing?)
  e4:m/g c4 f4/a b4:dim
  e1:m
  
  % Harmonic loosening
  b1:dim/f 
  b1:dim/f 

  e1:m7/b
  a1:7
  d1:m7/a
  g1

  c2:aug a2:m7 
  fis2.:dim b4:m/d 
  c2:aug a2:m7 
  fis2.:dim b4:m/d 
  c2:aug a2:m7 

  % Subordinate
  fis1:dim7
  b1:m/fis
  fis1:dim7
  b1:m/fis

  % 
  b2:m/d fis:dim/c |
  b2:m e:m/a |
  fis2:dim e:m |
  fis2:dim c/e |  
  fis2:dim c/e | 
  b2:m c |
  b2:m c | 

  % Cadential
  b1:m/d |
  c1/e |
  fis:dim/c |
  fis:dim7  |

  b1:m/d |
  c1/e |
  fis:dim/c |
  fis:dim7  |

  b1:m \bar "|."
}

piano_treble = 
{
  \tempo "Largo" 4=50
  \key c \major
  \clef treble 
  \time 4/4

  r2. r8 f8 | 
  d8 e~ e4 r8 g8 a8 b16 c |
  b2 b4 b |
  b2 r2 |
  r4 <b d f>2\arpeggio \grace {b16} a8 b |
  r4 g8 a r2 |

  cis8( d b c b c4.)  |
  g2 a4 b4 |
  <g b>4 <g c> <a c> <f d'> |
  \grace {g16(} f2) e2 |

  f2 f4 f4 |
  f2 r2 |

  ais8( b g a g a4.) |
  e2 f4 g |

  gis8( a f g f g4.)  |
  d2 fis4 g |

  \bar "||" \key g \major
  gis2 g4 g |
  fis2 r2 |

  c8( e8 <e, c'>2.) |
  c'8( fis8 <fis, c'>2) fis'4 |

  <e gis c>2 <e g c>2 |
 
  % Subordinate
  <e a c>1\arpeggio |
  r2 \grace {e'8(} c4) b |
  a4 a b b |
  <fis b d fis>1\arpeggio |

  <b, fis'>2 <c fis> | %26
  <d fis>2 d4 e |
  d8( a' b a) b4 r |
  r1 |
  <a c~ fis>2\arpeggio <g c e> |
  r1 |
  <b d fis>2\arpeggio <g c e>\fermata |

  % Cadential
  r2 <fis b>4-. <fis b>-. |
  <g c>2 r2 |
  r4 r16 <fis a> r <fis a> r2 |
  <fis a>4. <a c> <c e>4 |

  r2 <fis b>8-. <d fis>-. <b d>-. <fis b>-. |
  <g c e>2 r2 |
  r4 r16 <fis a c> r <fis a c> r <fis a c>8. r4 |
  <fis a>4 <a c>8 <c e>4 <a c>8 <c e>4 |

  r4 <fis, b d fis>2.\arpeggio \bar "|."
}

piano_bass = 
{
  \tempo "Largo" 4=50
  \key c \major
  \clef bass
  \time 4/4

  r1_\mp
  r1
  <e b' e g>\arpeggio
  <e b' e g>\arpeggio
 
  b8( f'8 f,2.) |
  b8(\> f'8 <b, f>2.)\!_\p   |
  <e, b' e>2~\< <e b' e>8 <f b f'>4. |
  <c g'~ c>4\!_\f <d g d'>4 r8 <b' e g>4. |

  <g e'>4 <g e'> <a f'> <b f'>\> |
  <e, b' e g>1\arpeggio

  % Harmonic Loosening
  <f b d f>1\arpeggio\!_\mp
  <f b d f>1\arpeggio

  <b d g>2~_\markup{\italic hocket} <b d g>8 <b e g>4. |
  <a e' g>2 r8 <c g' a>4. |
  <a c f>2~ <a c f>8 <a d f>4. |
  <g d' g>2 r8 <b g'>4. |

  \bar "||" \key g \major
  <gis c e>2\arpeggio_\f <a e'>2 |
  <fis c'>2 r2 |
 
  c2_\mp a |
  fis'2 r4 <b fis'>4 |
  %<c gis'>2 <c g'>2 |

  <gis e'>2 <g e'>2 |

  <fis e'>1\arpeggio |
  b8( fis' fis,2.) |
  r2 <c' e>4 <c e> |
  <fis, b>1\arpeggio |
  d2 c |
  b2 r |

  r2 g''4 r |
  r1_\mp |
  <fis, c'~>2\arpeggio  <e c'>2 |
  r1_\f |
  <b' fis'>2\arpeggio  <c g'>2\fermata |

  % Cadential
  r2_\markup{\italic {accelerando}}  <d b'>4-. <d b'>4-. |
  <e c'>2 r2 |
  r4 r16 c-. r c-. r2 |
  <e fis>4. <fis a>4. <a c>4 |

  r2  <d, b'>4-. <d b'>4-. |
  <e c'>2 r2 |
  r4 r16 c-._\f r c-. r c8. r4 |
  <e fis>4.\mf_\markup{\italic {a tempo}} <fis a>4. <a c>4 |

  <b, fis'>1 \bar "|."
}

cello = 
{
  \tempo "Largo" 4=50
  \key c \major
  \clef bass
  \time 4/4

  b8(^\markup{\italic {feroce con calando}} f'8 f,2.) |
  b8( f'8 <b, f>2.) |
  b8( e8 e,2.) |
  b'8(\> e8 <b e,>4)\! cis'8(\< d b c |

  b8 c4.)\! r2 | 
  r2 b,16\downbow\< c d e~ e8 g8\upbow |
  <e' b>2\downbow\! b4\upbow b\upbow |
  ais8(\downbow b g\upbow a c\downbow b4.)\upbow |

  c8(\downbow b16 a g4)\upbow d16(\downbow g a b a4)\upbow |
  b,8(\downbow e8\upbow <b e,>2.)\downbow |

  % Harmonic Loosening
  b8( f'8 f,2.) |
  b8( f'8 <b, f>4) f16\< g a b~ b8 d8 |
  <b e>2\! b4 b |
  fis8( g e f e f4) c'8 |
  <a d>2 a4 a |

  ais8(\<  b  g a ais b4.) |

  \bar "||" \key g \major

  c8(\! e8\> e,2.) |
  c'8(\! fis8 fis,2) b4 |
  gis2 g4 g |
  fis2. d'4 |
  %<e c'>2-> <a, e'>2-> |
  c2->\< a2->

  % Subordinate
  \grace {e'8(} d4) e \grace {a8(} g4\! a)\> |
  b\! r4 fis, fis |
  fis1 |
  b8(\< c a' b)\! \grace {a8(} g4\> fis) |
  b4\! d b e |
  \grace {d8(} c8) r8 r2. |
  \repeat tremolo 8 {fis,16\>_\markup{\italic vib.}} e4\! r |
  a8(-> fis16 e d4) b16( d e fis) e4 |
  \grace {d8(} c4) r b2 |

  d'8(-> b16 a g4) e16( g a b) a4 |
  \grace {g8(} fis4) r e2\fermata |

  % Cadential
  r8 e'16_\fff(\< g-^  fis e fis e  d-> e d c      d-> c b c\! | 
  b16\>-^ a b a  g a g fis    g fis e fis  e d e d\! |
  \tuplet 3/2 {c16\< d c d c d)\!}  r c-. r c-. r c-. fis,8~-> fis r |
  a16( c d e   d8) c16( e  fis16 g fis8)  e16( g a b) |

  r8 c16(\< g'-^  fis e fis e  d-> e d c      d-> c b c\! | 
  b16\> a b a  g a g fis    g fis e fis  \tuplet 3/2 {e d e d e d\!} |
  c16 d c d)  r c-. r c-. r c-. fis,8~-> fis r |
  a16(\< c d e   d8) c16( e  fis16 g fis8)  e16( g a b)\! |
 
  <b, fis'>1-> \bar "|."
}

piece = 
{ 
  <<
    \new ChordNames 
    {
      \set chordChanges = ##t
      \set noChordSymbol = ""
      \set minorChordModifier = \markup { \char ##x2013 }
      \harmony
    }
    \new PianoStaff \with {instrumentName = "Piano"}
    <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "Upper" \relative c' \piano_treble
      \new Staff = "Lower" \relative c  \piano_bass 
    >>  
    \new Staff \with {instrumentName =  "Cello"} \relative c \cello
  >>
}

\score
{
  \piece
  \layout {}
}

\score
{
  \unfoldRepeats { \piece }
  \midi {} 
} 
