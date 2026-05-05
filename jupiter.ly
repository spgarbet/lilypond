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
  bes8 r r4 r r8. g16 |

  % Theme two: Io, *Europa, Ganymede*
  << { \voiceOne bes'2( g4 f) | ees2( g4 bes) | }
       \new Voice {\voiceTwo bes,4 d ees d | bes2 r2 | } >> \oneVoice |  
  << { \voiceOne c'2( aes4 g) | f2( aes4 c) | }
       \new Voice {\voiceTwo c,4 ees f ees | c2 r2 | } >> \oneVoice |  
  <ees g>4( <des f>4 <aes ees'>2) |
  <f' a>4( <ees g>4 <bes f'>2) | 
  %c8 ees f ees f4 bes,8 d |
  c8 ees des ees f4 bes,8 d |
  g8 r r2. |

  % Theme three: Callisto
  f4~ f16 f, ges ces ees, a ges f' ees4 |   % Gr+6 => b eb gb a
  << { \voiceOne \tuplet 3/2 {d16 ees d ees d ees } \tuplet 3/2 { fes ees fes ees fes ees  } }
       \new Voice {\voiceTwo bes4 b4 bes2 } >> \oneVoice |  

  g'4~ g16 g, aes des f, b aes g' f4 |   
  << { \voiceOne \tuplet 3/2 {e16 f e f e f } \tuplet 3/2 { ges f ges f ges f  } }
       \new Voice {\voiceTwo c4 des4 c2 } >> \oneVoice |  
  r16 aes g f' ees8. des,16 ces bes' aes8~ aes8 des16 c |
  
  bes16 a8. r4 << { \voiceOne \tuplet 3/2 {d16 c d c d c } r4} 
                     \new Voice{\voiceTwo bes2} >> \oneVoice   |
  
  f8 g aes4~ aes8  r g aes |
  bes8 r r4 r r8. g16 |
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
  <ees g>8 r r4 r ees,4-. |

  % Theme two: *Io*, Europa, Ganymede
  ees8-.\< ees-. ees-.-> ees-.  ees-. ees-.-> ees-. ees-.\! |
  ees8-.\< f-.-> ges-. ees-.  f-. ges-. g-. ees-.\! |
  f8-.\< f-. f-.-> f-.  f-. f-.-> f-. f-.\! |
  f8-.\< g-.-> aes-. f-.  g-. aes-. a-. f-.\! |
  c'8-.\< c-. c-.-> c-.\! aes-.\< bes-.-> c-. aes-. |
  c8-. c-. c-.-> c-.\! bes-.\< c-.-> d-. bes-.\! |
  <aes c>4.-^ <bes d>4 r4. |
  <bes d g>8-^ r bes8-.\> bes-. bes-. bes-.-> bes-. bes-.\! |

  % Theme three: Callisto
  ees8-. bes'8-. ees4  b,8-. ges'8-. b4-. |
  bes,4-. b4-. ees2 |
  f8-. c'8-. f4  des,8-. aes'8-. des4-. |
  c,4-. des4-. f2 |
  r8 <c ees>8-. r4 r8 <aes c>8-. r4 |
  r8 <c f>8-. r8. <a c>16 <bes d>4 ees,8 ees' |
  <aes, c>8 r r4 <bes d f aes>4 r |
  <ees g>8 r r4 r2  |
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

  % Theme two: Io, Europa, Ganymede
  ees1 |
  ees1 |
  f1:m |
  f1:m |
  ees2:/c aes2 |
  f2:/c bes2 |
  f2:m/aes bes2 |
  g1:m/bes |
  
  % Theme three: Callisto
  ees2 <ces ees ges a>2 % a:dim7sus2/b | % Gr+6 => cb eb gb a 
  bes2:7 ees | 
  f2:m <des f aes b>2 
  c2:m7 f:m | 
  ees2:/c aes2 |
  f2:/c bes2 |
  f2:m/aes bes2:7 |
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
