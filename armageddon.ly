\version "2.20.0"

\header {
  title   = "Armageddon"
  composer = "Wayne Shorter"
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
    \partial 2 r2 |
    aes4.:13 g2:7.5- des8:7.11+
    r1
    ges4.:/c f2:7.9- bes8:m7
    r1
    aes4.:13 g2:7.5- des8:7.11+
    r1
    ges4.:/c f2:7.9- bes8:m7
    r2. ges4:7
    r1
    bes2.:m7 ges4:7
    r1 
    bes2.:m7 ges4:7 
    r1
    bes2.:m7 ges4:7 
    r1  
    ees2.:7  e4:7
    r1
    ees2.:7  ges4:7
    r1
    bes2.:m7 aes4:m7
    r2 des2:7
    ees2.:7 ges4:7
    r1 
    bes2.:m7 ges4:7
    r1
    bes2.:m7 b4:7
    r1
    bes2.:m7 b4:7
    r1
  }

  \new Staff { \relative c' {

    \tempo "swing" 4 = 120
    \key des \major
    \time 4/4

    \partial 2 f'16 \mp ees des bes ees  des bes aes \bar "||"
    <bes ees, f>4.-> <f g des'>8~-> <f g des'>4. <g b ees>8~-> 
    <g b ees>2 f'16 ees des bes ees  des bes aes 
    <des ges, bes>4.-> <ees ges, a>8~-> <ees ges, a>4. <bes des, f>8~->
    <bes des, f>2  \tuplet 3/2 { bes'16 aes f } ees des \tuplet 3/2 {f ees des} bes aes

    <bes ees, f>4.-> <f g des'>8~-> <f g des'>4. <g b ees>8~-> 
    <g b ees>2 f'16 ees des bes ees  des bes aes 
    <des ges, bes>4.-> <ees ges, a>8~-> <ees ges, a>4. <bes des, f>8~->
    <bes des, f>2. <bes, e ges>4~ \p
    <bes e ges>1
    <aes bes ees>2. <bes e ges>4~
    <bes e ges>1
    \repeat volta 2 {
    \segno
    bes1'~
    bes4. bes8 des ees ees des
    ees1~
    ees4. des8 ees des fes des
    ees8 des bes2.~
    bes4. bes8 des bes des4
    bes1~
    bes4. bes'8 r  aes r fes
    ees4. des8~ des2~
    des4. des8 f aes f des
    c4. bes8~ bes2~
    bes2 des8 bes des4
    bes1~
    bes4. bes8 des bes des4
    }
    \alternative {
      { bes2. <a ges'>4~ <a ges'>1 }
      { bes1 des }
    }
    \bar "||"
  }}

  \new Staff { \relative c {

    \clef "bass"
    \key des \major

    \partial 2 r2
    aes4. g8~ g4. des8~
    des2  r2
    <c ges'>4. <f ees'>8~ <f ees'>4. <bes f'>8~
    <bes f'>2 r2
    aes4. g8~ g4. des8~
    des2  r2
    <c ges'>4. <f ees'>8~ <f ees'>4. <bes f'>8~
    <bes f'>2. ges4~
    ges1
    bes2. ges4~
    ges1
  }}
>>
