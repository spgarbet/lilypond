\version "2.18.2"
\header {
  title    = "Peaches en Regalia"
  composer = "Frank Zappa"
  opus     = "Hot Rats (1969)"
}

upper = \relative c' {
  \tempo "Rock" 4 = 100
  \clef treble
  \key a \major
  \time 4/4

  r1 |
  \grace <fis cis'>16( <d' fis>8.) b16 b b b8  
  \grace <fis cis'>16( <d' fis>8.) b16 b b b8 |
  \repeat volta 2 {
    \repeat percent 2
      { r4\segno <fis a d>:32 <e gis cis>: <d fis b>: |
        <cis e a>: <d fis b>: <b d gis>8.-> fis'32( b \tuplet 6/4 4 { e16 b' e, gis, b e,)}
      } 
  }
  \repeat volta 2 {
    <b' d fis>8-. r16 <b d fis>16-. r2 <b d fis>4-.  |
    <a  cis e>8-. r16 <a cis e>16-. r2 <a cis e>4-.  |
    <b  d g  >4-. r16 <b d   g>8-. r16 <d fis a>4-. r16 <d fis a>8-. r16  |
    <cis e a>4-.\coda r8 <cis e a>8-. <cis fis a>4-. <b e gis>-. | 
  }

   <b d fis>16-- <b d fis>8-^ <b d fis>16~-- <b d fis> <b d fis>-- <b d fis>8-^ r16 <b, d fis>16-- <b d fis>8-^ <b d fis>4-^ |
   <cis e gis>8 <e a cis>4 <a cis e> <b d fis> <cis e gis>8 |
   <d f a>16-- <d f a>8-^ <d f a>16~-- <d f a> <d f a>-- <d f a>8-^ r16 <d, f a>16-- <d f a>8-^ <d f a>4-^ |
   <e g b>8 <g c e>4 <c e g> <d f a> <e g b>8 |
   <f aes c>16-- <f aes c>8-^ <f aes c>16~-- <f aes c> <f aes c>-- <f aes c>8-^ r16 <f, aes c>16-- <f aes c>8-^ <f aes c>4-^ |
   <g bes d>8 <g bes f'>4 <bes ees> <bes f'> <ees g>8 |
   <gis eis>16 <gis eis> <gis eis> <gis eis>
         <gis eis>  <fis cis> <fis cis> <eis cis> 
         <eis cis>  <dis b> <dis b> <cis ais>
         <cis ais>  <cis gis> <cis gis> <cis fis,> |
   cis32 d dis e f8   f32 e dis d cis8 cis32 d dis e f8   f32 e dis d cis8 |
   <gis b>8 <gis b>16 <gis b>~ <gis b> <b dis> <b dis>8 
         <b dis>16 <cis e>8 <cis e>16~ <cis e> <dis fis> <dis fis>8 |
   <dis fis>8 <dis fis>16 <e gis>\glissando b4 
         b16 <fis a dis>8 <e gis cis>16~ <e gis cis> <e gis cis>16 <dis fis b>8 |
}

lower = \relative c {
  \clef bass
  \key a \major
  \time 4/4
 
  r1 | 
  b2 b2  |
  \repeat volta 2 { 
    \repeat percent 2 
      {  b16  fis' b fis b4   b,16 fis' b fis b4 |
         b,16 fis' b fis b4   fis4            e  
      }
  } 
  \repeat volta 2 {
    b'4~( b8 b16 b b8 cis d e |
    cis4 a2.)                |
    d4( \tuplet 5/4 4 {d16 e d c b} \tuplet 3/2 4 {c8 b a} g8 d |
    e2) fis4 e |
  }
  b'16 b8 b16~ b b b8 r16 b, b8 b4 |
  cis8 e4 a b cis8 |
  d16 d8 d16~ d d d8 r16 d, d8 d4 |
  e8 g4 c d e8 |
  f16 f8 f16~ f f f8 r16 f, f8 f4 |
  g8 bes4 ees f g8 |
  eis,2 cis |
  eis cis |
  dis b |
  dis b ||
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper 
    \new Staff = "lower" \lower 
  >>
  \layout {}
}
