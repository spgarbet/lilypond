\version "2.20.0"

\header {
  title   = "Preciso Me Encontrar"
  subtitle = "I Must Find Myself"
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
    d2:m/c
    bes:5-.6
    g2:m13
    aes:dim
    a:7
    d2:m
    aes4:dim a4:7
    d2:m/f
    d2:m/c
    bes:5-.6
    g2:m13
    aes:dim
    a4:7 a4:7/ces
    d2:m/f
    d2:m 
    ees2:dim
    d4:7 d4:7/c 
    g2:m13
    g2:m/f
    c2:7/e
    c4:7/bes c
    f2
    bes4:5-.6 a:7
    d2:m
    d2:m/c
    bes2:5-.6
    g2:m13
    aes2:13
    a2:7
    d2:m
    aes4:dim a4:7
    d4:m/f d4:m/a
    d4:m d4:m/c
    bes2:5-.6
    g2:m13
    aes2:13
    a2:7
    d2:m
    aes4:dim a4:7
  }

  \new Staff { \relative c' {

    \tempo "samba" 4 = 80
    \key f \major
    \time 2/4

    r4 \tuplet 3/2 {d8( f) a}
    d,16 r d f8 a d,16~
    d8. r16 \tuplet 3/2 {d8 f a}
    d,8 d16 f8 a d,16~
    d8. r16 r4
    g8 e16 g8 f d16~
    d4 r4
    r2
    r4 \tuplet 3/2 {a'8 f d~} 
    d8 r16 a'8 a8 d,16~
    d8. r8 d16 f a 
    d,16 r8 d a' d,16
    d8 r r4
    g8 e16 g8 f d16~
    d4 r4
    r2
    r4 \tuplet 3/2 {fis8 a d}
    g,16( g8) bes d g,16~
    g8. r8 g bes16
    d16 bes8 g16 d'16 bes8 g16
    e8. r8 e16 g c
    e,16 e8 g c f,16~
    f8 r8 d16 f a d 
    bes8 r8 \tuplet 3/2 {c8 bes a}
    d,8 r8

    \tuplet 3/2 {d8( f) a}
    d,16 r d f8 a d,16~
    d8. r16 \tuplet 3/2 {d8 f a}
    d,8 d16 f8 a d,16~
    d8. r16 r4
    g8 e16 g8 f d16~
    d4 r
    r2
    r4 \tuplet 3/2 {a'8 f d~} 
    d8 r16 a'8 a8 d,16~
    d8. r8 d16 f a 
    d,16 r8 d a' d,16
    d8 r r4
    g8 e16 g8 f d16~
    d4 r4
    r2

    \tuplet 3/2 {d8( f) a}
    d,16 r d f8 a d,16~
    d8. r16 \tuplet 3/2 {d8 f a}
    d,8 d16 f8 a d,16~
    d8. r16 r4
    g8 e16 g8 f d16~
    d4 r
    r2
    r4 \tuplet 3/2 {a'8 f d~} 
    d8 r16 a'8 a8 d,16~
    d8. r8 d16 f a 
    d,16 r8 d a' d,16
    d8 r r4
    g8 e16 g8 f d16~
    d4 r4
    r2

  }
  \addlyrics {
    Let me go
    I must wan -- der
    I  'll go a -- round se -- ar -- ching
    Laugh so I won't cry

    Let me go
    I must wander
    I 'll go a -- round se -- ar -- ching
    Laugh so I won't cry

    I want to see the sun -- rise
    See the wa -- ters of the ri -- vers flow
    He -- ar the birds sing -- ing their song
    I want to be born
    I want to live

    Let me go
    I must wan -- der
    I  'll go a -- round se -- ar -- ching
    Laugh so I won't cry

    If some -- one asks for me
    Tell them I 'll on -- ly be back
    When I find my -- self

    I want to see the sun -- rise
    See the wa -- ters of the ri -- vers flow
    He -- ar the birds sing -- ing their song
    I want to be born
    I want to live

    Let me go
    I must wan -- der
    I  'll go a -- round se -- ar -- ching
    Laugh so I won't cry
    
  } }

>>
