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
  composer   = "Shawn Garbett"
  arranger   = "Arr. by Shawn Garbett, Buffy Rhea"
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

  c2:aug/e c2:7 
  fis2.:dim b4:m/d 
  c2:aug/e c2:7 
  fis2.:dim b4:m/d 
  c2:aug/e c2:7 
  fis1:dim

  b1:m/fis
  
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
  <g b>4 <e g> <a c> <d, f> | 
  \grace {g16(} f2) e2 |

  f2 f4 f4 |
  f2 r2 |

  gis8( a f g f g4.)  |
  e2 f4 g |

  fis8( g e f e f4.)  |
  d2 e4 f |

  \bar "||" \key g \major
  gis2 g4 g |
  fis2 r2 |

  c8( e8 <e, c'>2.) |
  c'8( fis8 <fis, c'>2) fis'4 |

  <e gis c>2 <e g b>2 |
  <fis c' a>1 |
}

piano_bass = 
{
  \tempo "Largo" 4=50
  \key c \major
  \clef bass
  \time 4/4

  r1
  r1
  <e b' e g>\arpeggio
  <e b' e g>\arpeggio
 
  b8( f'8 f,2.) |
  b8( f'8 <b, f>2.)   |
  
  <e, b' e>2~ <e b' e>8 <f b f'>4. |
  <c g'~ c>4 <d g d'>4 r8 <b' e g>4. |

  <g e'>4 <c g'> <a f'> <b f'> |
  <e, b' e g>1\arpeggio


  % Harmonic Loosening
  <f b d f>1\arpeggio
  <f b d f>1\arpeggio

  <b d g>2~ <b d g>8 <b e g>4. |
  <a e' g>2 r8 <c g' a>4. |
  <a c f>2~ <a c f>8 <a d f>4. |
  <g d' g>2 r8 <b g'>4. |

  \bar "||" \key g \major
  <e, gis c>2\arpeggio <b' c,>2 |
  <fis c'>2 r2 |
 
  \ottava -1
  c,2\startTrillSpan b |
  fis'2\stopTrillSpan r4 <b fis'>4 |
  \ottava 0
  <gis'' e>2 <c, g'>2 |
  <c fis>1 |
}

cello = 
{
  \tempo "Largo" 4=50
  \key c \major
  \clef bass
  \time 4/4


  b8( f'8 f,2.) |
  b8( f'8 <b, f>2.) |
  b8( e8 e,2.) |
  b'8( e8 <b e,>4) cis'8( d b c |
  b8 c4.) r2 | 
  r2 b,16\downbow c d e~ e8 g8\upbow |
  <e' b>2\downbow b4\upbow b\upbow |
  ais8(\downbow b g\upbow a c\downbow b4.)\upbow |
  c8(\downbow b16 a g4)\upbow d16(\downbow g a b a4)\upbow |
  b,8(\downbow e8\upbow <b e,>2.)\downbow |

  % Harmonic Loosening
  b8( f'8 f,2.) |
  b8( f'8 <b, f>4) f16 g a b~ b8 d8 |
  <b e>2 b4 b |
  fis8( g e f e f4) c'8 |
  <a d>2 a4 a |

  ais8(  b  g a g a4.) |
  %f8( fis d e d e4.) |

  \bar "||" \key g \major

  c8( e8 e,2.) |
  c'8( fis8 fis,2) b4 |
  gis2 g4 g |
  fis2. d'4 |
  <e c'>2-> <c g'>2-> |
  fis,8 fis' fis, fis' fis, fis' fis, fis' |
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
