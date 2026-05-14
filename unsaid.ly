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
  title      = "Bhairavi"
  subtitle   = "Piano and Cello"
  composer   = "Shawn Garbett/Sadhana"
  arranger   = "Arr. by Shawn Garbett, Buffy Rhea"
  tagline    = "Things Unsaid "
  midititle  = "unsaid.midi"
  copyright  = "Copyright © 2026 Shawn Garbett, All rights reserved"
}

% i II III iv v-dim VI vii <= Main chords

harmony = \chordmode
{
  e1
  e1
  e1
  e1

  e1
  e1
  b1:dim7/f
  b1:dim7/f
  b1:dim7
  b1:dim7/a

  r8 e4:/g c8 f4/a b:dim
  e1
  
}

piano_treble = 
{
  \tempo "Andante" 4=90
  \key c \major
  \clef treble 
  \time 4/4

  r1 |
  r1 % ga cde (?)
  e''8 c d a c g a e |

  r2. a,4 |
  % First Theme (pick-up previous measure)
  g16 a g g~ g8 f e4 c8 d |
  e16 g f f e2 r4 | 

  % Second Theme
  r4. f8 a b a f |
  r1 |

  % Frag > b d f a
  b8 b b16 c e d c8 b4 a16 g |
  a4 g16 a g g r2 |

  % Cadential
  f8 e4 f8 e4 r4 |
  r4 e2 r4 |
}

piano_bass = 
{
  \tempo "Andante" 4=90
  \key c \major
  \clef bass
  \time 4/4

  r1
  r1
  r1
  r1

  <g' b>8. <g b>16~ <g b>4 <g b>2  |
  <f a>4 <g b>2 r4 |

  % Bdim7 / F -> f a b d
  f8 b d r8 r2 |
  d8 b f2 r4 |

  b,8 f' a b d b a f |
  a,8 d f a b d b a | 
  r8 <b, e>4 <c e>8 <c f>4 r4 |
  r4 <g e'>2 r4 |
}

cello = 
{
  \tempo "Andante" 4=90
  \key c \major
  \clef bass
  \time 4/4

  b4 e e e,~ |
  e1 |
  e8 b'~ b2. |
  e,8 b'~ b2. |
  e,8 e' e e e e e e |
  b8 e e,2 r4 |

  % Second Theme
  r8 d'8. d16 d8 d16 e d d c8 d |
  e8 g f d e4 e8 e8 | 

  % Third Theme 
  r16 f f8 c' c b b b16 c e d |
  c8 b4 a16 g a4 g16 a g g |

  a8 g4 c,8 a4 b8 c |
  e16 g f f e2 r4 |
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
