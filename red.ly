\version "2.20.0"

\header {
  title   = "Red"
  composer = "King Crimson"
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

  \new Staff { \relative c' {

    \tempo "Andantino" 4 = 90 
    \key e \major
    \time 4/4

    dis4 e8 fis gis a4 b8
    c d e4 fis8 g a b~
    b1

    b,,4 cis8 d e f4 g8
    gis ais b4 cis8 d e fis~
    fis1

    dis,4 e8 fis gis a4 b8
    c d e4 fis8 g a b~
    b1~
    b1
  }}

  \new Staff { \relative c {

    \clef "bass"
    \key e \major

    <b fis' b>4 r8 <d a' d> r8 <f, c' f>4 r8
    <gis dis' gis> r8 <c g' c>2.
    <e, b'>4 e'8. e,16 e8-. e8-. e'4 

    <g, d' g>4 r8 <ais f' ais> r8 <cis gis' cis>4 r8
    <e, b' e> r8 <g d' g>2.
    <d' a'>4 d'8. d,16 d8-. d8-. d'4 

    <b, fis' b>4 r8 <d a' d> r8 <f, c' f>4 r8
    <gis dis' gis> r8 <c g' c>2.
    e,8 e e' e, e e e' e,
    e8 e e' e, e e e' e,

  }}
>>

A
  B(e e f e g g e)
  C
  B(e e f f)
  C
  C'

  Dx2

  B(e e f e)
  C
  B (e e f f)
  C
  C' 
A (octave higher)


