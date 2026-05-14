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
  title      = "Unsaid"
  subtitle   = "Piano and Cello"
  composer   = "Shawn Garbett/Sadhana"
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

  e1
  e1
  b1:dim7/f
  b1:dim7/f 

  % This or sequential?
  e2 b2:dim/f |
  c4 g4/d  a4:m e4/b |
  
  % Cadential (timing?)
  e4:/g c4 f4/a b4:dim
  e1
  
}

piano_treble = 
{
  \tempo "Andante" 4=90
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
  r1 |
  \grace {g16(} f2) e2 |
}

piano_bass = 
{
  \tempo "Andante" 4=90
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
}

cello = 
{
  \tempo "Andante" 4=90
  \key c \major
  \clef bass
  \time 4/4


  b8( f'8 f,2.) |
  b8( f'8 <b, f>2.) |
  b8( e8 e,2.) |
  b'8( e8 <b e,>4) cis'8( d b c |
  b8 c4.) r2 | 
  r2 b,16 c d e~ e8 g8 |
  <e' b>2 b4 b |
  ais8( b g a c b4.) |
  c8( b16 a g4) e16( g a b a4) |
  b,8( e8 <b e,>2.) |
  
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
