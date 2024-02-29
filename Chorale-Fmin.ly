\version "2.20.0"

\header {
  title    = "I call to you Lord Jesus Christ"
  composer = "Johann Sebastian Bach"
  opus     = "BWV 639"
  tagline   = "Arrangement for Ukulele by Shawn Garbett" 
}

part_a = \relative c'' {
  \repeat volta 2 {
    \partial 4 aes,16 c f e
  f c aes f   
    g bes des c   
    f, aes c bes
    aes f aes c
  f e f aes
    g f e f
    e^\fermata c g bes
    aes c f aes
  g ees aes g
    aes ees f ges
    f des f aes 
    g des c ges'
  }
  \alternative {
    { \partial 2. f16 bes, des f
      bes aes g aes
      g^\fermata c, e bes
    }
    { f' bes, des f
        bes aes g aes
        g^\fermata bes, aes f'
        g, des' aes c
    }
  }
  aes c bes des
    bes des aes' g
    aes ees des g
    c, f aes g
  aes ees aes, ges'
    f aes, g des'
    c^\fermata aes c ees
    g c, bes g'
  a, c f g
    a f ees a
    des, g aes g
    c, f g f
  des f g f
    e bes des c
    aes2^\fermata
}

<<
  \new Staff {
    \key c \minor
    \clef treble
   \transpose c g \part_a
  }
  \new TabStaff {
    \set TabStaff.stringTunings = #ukulele-tuning
    \transpose c g \part_a
  }
>>
