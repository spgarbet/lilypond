\version "2.24.3"

\header {
  title = "Jupiter"
  subtitle = "Sonata No. 2 in E major, Op 3"
  composer = "Composer Shawn Garbett"
  copyright  = "Copyright 2026 Shawn Garbett"
  tagline = ""
  midititle= "jupiter.midi"
}

exposition_treble = \relative c'''
{
  \tempo "Adagio" 4 = 70 
  \key ees \major
  \clef treble
  \time 4/4

  % Theme 1: Jupiter
  bes4-.->\f aes4 g8\>( ees4) d8~\! |
  d4\mp( f4) fes4\sfz--( ees4) |
  bes4-.->\f aes4 g8\>( ees4) d8~\! |
  d4\mp( f4) a4\sfz--( ees'4) |
  d4-.-> c4( bes8\> g4) r8\!  |
  b4-.-> g4( f8\> bes4) r8\!  |
  f8 g aes4~ aes8  r g aes |
  bes8 r r4 r r8. bes16 |

  % Theme two: Io, Europa, Ganymede
  << { \voiceOne f'2.~ f16 g bes ees }
       \new Voice {\voiceTwo bes,16 c bes r r8. g16 g aes g r r8. ees'16 } >> \oneVoice |  
  << { \voiceOne bes'2.~ bes16 g bes ees }
       \new Voice {\voiceTwo ees,16 f ees r r8. bes16 bes c bes r r4} >> \oneVoice |  
}

exposition_bass = \relative c {
  \key ees \major
  \clef bass
  \time 4/4

  % Eb => Eb G Bb, Bb => Bb D F Ab

  % Theme 1: Jupiter
  <ees, ees'>8 r <bes' ees> r r4 bes,8 bes' |
  bes,4 <fes' ces'>4 <ees bes'>2
  <ees ees'>8 r <bes' ees> r r4 bes,8 bes' |
  bes,4 <fes' ces'>4 <ees bes'>2
  <g g'>8 r <d' g> r r4 c,8 c' |
  <fes, fes'>8 r <b fes'> r r4 ees,8 ees' |
  <aes, c>8 r r4 <bes d f aes>4 r |
  <ees g>8 r r4 r 

  % Theme two: *Io*, Europa, Ganymede
  ees,,4-.\< | ees'8-. ees8 ees4 f8 ges\! 
  ees4-.\< | f8 g aes4\! bes8 g4.  | 

}

exposition_chords = \chordmode {

  % Theme 1: Jupiter
  ees2 bes2 |
  bes2 ees2 |
  ees2 bes2 |
  bes2 ees2 |

  g2:m f2:m |
  fes2:m ees2 |
  f2:m/aes bes2:7 |
  ees1 | 

  % Theme two: *Io*, Europa, Ganymede
  ees1 |
  ees1 |

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
