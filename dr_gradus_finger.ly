\version "2.18.2"
\header {
  title    = "Doctor Gradus ad Parnassum (snippet)"
  subtitle = "Fingering"
  composer = "Claude Debussy"
  tagline  = ""
}


crs = _\markup{\italic \small cresc.}
rit = _\markup{\italic \small rit.}
dim = _\markup{\italic \small dim.}
fuo = _\markup{\italic \small "con fuoco"}
atp = _\markup{\italic \small "a tempo"}
aff = _\markup{\italic \small affettuoso}
rub = _\markup{\italic \small rubato}
sem = _\markup{\italic \small semplicemente}
ral = _\markup{\italic \small "rall. e. dim."}
sot = _\markup{\italic \small "sotto"}

tp  = \change Staff = "top"
bt  = \change Staff = "bottom"

\layout{
  \context { \ChordNames
    \override ChordName #'font-size = #0.5
  }
}

\new PianoStaff <<
  \new Staff = "top" { 
               \relative c'' {
               \tempo "Modérément animé" 4 = 144-152
               \key c \major
               \time 4/4
               \override TupletBracket.bracket-visibility = ##t

               \override Beam.auto-knee-gap = #1

               \set Score.currentBarNumber = #61

               s1 |
               \bt f,16(-2   aes \tp c-2   f)-5
                 \bt ees,( aes \tp c   ees)
                 \bt d,(   ees \tp aes d)
                 \bt c,(   ees \tp aes c) |

               \bt d,16(-2   e   \tp g   d')
                 \bt c,(   e   \tp g   c)
                 \bt b,(-3   c   \tp e   g)
                 \bt a,(-4   c-1   \tp e   a) |

               \bt g,16(-3\<   a   \tp c   g')
                 \bt f,(   a   \tp c   f)
                 \bt e,(-4   f   \tp aes e')
                 \bt d,(   f   \tp aes d)\! |
               s1 |

             } }
  \new Staff = "bottom" { \relative c' {
               \clef "treble"

               s1 |
               s1 |
               s1 |
               \clef "bass"
               s1 |
               s1
             } }
>>
