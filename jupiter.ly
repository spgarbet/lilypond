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
  bes4-.->\f aes4( g8\>( ees4) d8~\!( |
  d4\mp f4) fes4\sfz-- ees4) |

  d4-.->\f c4( bes8\>( g4) f8~\!( |
  f4\mp a4) aes4\sfz-- g4) |
}

exposition_bass = \relative c {
  \key ees \major
  \clef bass
  \time 4/4

  % Eb => Eb G Bb, Bb => Bb D F 
  % Theme 1: Jupiter
  <ees, ees'>8 r <bes' ees> r r4 bes,8 bes' |
  bes,4 <fes' ces'>4 <ees bes'>2

  <ees ees'>8 r <bes' ees> r r4 bes,8 bes' |
  bes,4 <fes' ces'>4 <ees bes'>2
}

exposition_chords = \chordmode {

  %% Theme 1: Jupiter
  ees2 bes2 |
  bes2 ees2 |

  ees2 bes2 |
  bes2 ees2 |
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
