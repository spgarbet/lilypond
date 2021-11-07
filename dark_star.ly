\version "2.20.0"

\header {
  title   = "Dark Star"
  composer = "Grateful Dead"
  tagline  = ""
}

\layout{
  \context { \ChordNames
    \override ChordName #'font-size = #0.5
  }
  \set noChordSymbol = ""   
  \set minorChordModifier = \markup { "–" }
}

\new PianoStaff <<

  \chords {
    \partial 2. r2.
    r1  
    a4. a4:9 a8:sus d4/a
    a4. a4:9 a8:sus d4/a
    a4. a4:9 a8:sus d4/a
    a4. a4:9 a8:sus d4/a
    a4. a4:9 a8:sus d4/a
    a4. a4:9 a8:sus d4/a
  }

  \new Staff { \relative c'' {

    \tempo "Moderately" 4 = 94
    \key d \major
    \time 4/4

    \partial 2. r16 b ais b d4~-> d16 b ais b
    d4-> r16 g, a g a-> g e dis e g e g
    a8 <c e~ a~>8 <cis e a>16 r8  <a, g' b>16~ <a g' b>8 <a d g>16  <a g' d'>16~-> <a g' d'>16 fis'16 <a, fis'>8-.
    r8 <a'~ c e~ a~>16-> <a cis e a>8 r8 <a, g' b>16~ <a g' b> g' a, <a g' d'>~-> <a g' d'> <a g' d'> <fis' d'> r16
    r8 <a cis e a>16->  <a cis e a> <a cis e a> e r <a, g' b>~-> <a g' b> <g' b> r <g d'>~-> <g d'> <g d'> <fis d'>8->
    r8 <a cis e a>16->  <a cis e a> <a cis e a> e r <a, g' b>~-> <a g' b> <g' b> r <g d'>~-> <g d'> <g d'> <fis d'>8->
    <e a cis e~>2:32 <d g  e'>4.:32 <d g e'>8
    <d~ g~ d'>4 <d g cis>
  }}

  \new Staff { \relative c' {

    \clef "bass"
    \key d \major

    \partial 2. r16 b ais b d4-> d16 b ais b
    d4-> r16 g, a g a-> g e dis e g e g
    a,4. e8 g e16 g~ g g a8 
    a8~ <a a'>4 e8 g e16 g~ g g a8 
    a4. e8 g e16 g~ g g a8 
    a4. e8 g e16 g~ g g a8 
    a4. e8 g e16 g~ g g a8 
    a4. e8 g e16 g~ g g a8 
  }}
>>
