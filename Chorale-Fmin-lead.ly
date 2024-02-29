\version "2.20.0"

\header {
  title = "I call to you Lord Jesus Christ"
  subtitle = "Lead"
  composer = "Johann Sebastian Bach"
  opus = "BWV 639"
  midititle = "chorale-fmin-lead.midi"
}

\score{
<<
  \new Staff{
    \key c \minor
    \tempo "Largo" 4 = 40-60
    \clef treble
    \transpose c g \relative c'' {
      \repeat volta 2 {
        \partial 4 c4
        aes4 bes aes8. g16 f8. g16
        aes16 bes aes bes aes32 bes aes bes aes bes aes bes c4^\fermata c8. des16
        ees4 \grace {des16 } c8. bes16 aes4 bes8 c
      }
      \alternative {
      {
        \partial 2.
         des4~ des16 ees32 f c64 des ees des c16 c4 
      }
      {
         des4~ des16 ees32 f c64 des ees des c16 c4^\fermata ees
      }}
      f4 ees8 c128 des ees des c32 ees16 c8 bes aes bes
      c4 bes aes^\fermata c
      c c bes aes
      g2 f^\fermata
      aes4 g f2
      ees2.^\fermata ees4
      aes aes bes bes
      c2.^\fermata des4
      c4 bes aes f8. g16
      \partial 2. aes4 g f^\fermata ||
    }
  }
>>
\midi{}
}