\version "2.20.0"

\header {
  title   = "Preciso Me Encontrar"
  subtitle = "I Must Find Myself (Prelude)"
  composer = "Cartola (Angenor de Oliveira)"
  tagline  = ""
}

\layout{
  \context { \ChordNames
    \override ChordName #'font-size = #0.5
  }
}

\new PianoStaff <<

  \chords {
    d2:m 
    e2:m5-7/bes
    a2:7
    d2:m
    d2:m
    e1:m5-7
    aes2:dim
    a2:7
    d2:m
    d8:m e8:m5-7 a4:7 
    d2:m
    d2:m
    e1:m5-7
    aes2:dim
    a2:7
    d1:m
    ees2:dim
    d2:7
    bes8:dim a8:7 e8:m5-7 e8:m5-9
    e4:m5-7 c:7/g
    c1:7
    f2
    bes4:6.5- a4:7
    d2:m
  }

  \new Staff { \relative c' {

    \tempo "freely" 4 = 80
    \key f \major
    \time 2/4

    r16 a' d f r a, d f 
    r16 e, g d' e d g, e   
    r16 e  g cis f cis e cis 
    d,16-- a' d d,--  f' d a d,
    c16-- a' d c,-- f' d  des,32 c ces bes--~
    bes16 e g e d' g, e bes
    g-- e' bes' g,-- d'' bes  e,,32 f fis g
    aes16-- f' b d << {\voiceOne b d b d} \new Voice {\voiceTwo r16 f,8.--} >> \oneVoice
    a,16-- e' g a,-- cis' g e a,
    d-- a' <d f> a c,-- a' <d f> a
    r16 <a d f>-. r <e g d'>-. r <e g cis>-. r <g a cis>-.
    r16 a d d,-- f' d f a,
    c,16-- a' d c, a' d f a, 
    bes,-- e g bes,-- d' g, f' g,
    g,16-- e' bes' g,-- <bes' d> e, g e
    aes,-- f' b f <b d> f b f
    a,16-- e' g cis cis,-- g' a cis
    d,-- a' d d,-- f' a, d a
    d,-- a' r8 r4
    r16 a c ees,-- fis' d a ees--
    d16-- a' c f c,-- a' c f
    r16 <g, d' e>-. r <g cis e>-. r <e bes' d>-. r <e bes' d>-.
    r16 bes' d bes r <bes c e>-. r <bes c>-.

    c,-- e bes' e, e' e, bes' e,
    c-- e bes' e bes e, bes' e

    <f, a c f>2\arpeggio\fermata
    <bes, e g>8-> <bes e g>8-> a16 <cis e>16 a8
    d2-^
    \bar "||"
  }}

  \new Staff { \relative c {

    \clef "bass"
    \key f \major
    
    d'4-- c4--
    bes2--
    a2--
    r4 d,,16 f8 a16
    d,8. f8 a d,16~ 
    d4 d16 f8 a16~
    a16 d,8 d16 f a8 d,16~
    d4 r8 \ottava #-1 a
    g8. e8 g f16 
    d4 \ottava #0 r4
    b'''8->  bes-> a-> cis-> 
    d8.-- r16 \ottava #-1 d,, f8 a16
    d,8 f a8 d,~
    d8. r16 d f8 a16
    d,8 f a, d~
    d8. r8. a8
    g8. e8 g f16
    d4 \ottava #0 r
    r8 a'''16 bes b c cis d
    ees8.-- r16 g,,16 bes8 d16--
    g,8 bes d g,
    bes'8-> a-> g-> ges->
    f16 bes g d bes g e8~
    e4 r16 \ottava #-1 e, g c
    e8.-- g8 c f,16~
    <f c'>4  d,16 f a d
    c8 bes16 a8 g d16~
    d2 
  }}
>>
