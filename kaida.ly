\version "2.18.2"
\header {
  title    = "Kaida"
  composer = "Shawn Garbett"
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

\new PianoStaff <<
 
  \new Staff { \relative c'' {
               \tempo "allegretto" 4 = 100
               \key c \minor
               \time 4/4
               \override TupletBracket.bracket-visibility = ##t

               g4 aes c r       |
               g  c c,8 d ees g |
               g4 aes c r       |
               ees g r c,       |


               \bar "|."

             } }
  \new Staff { \relative c' {
               \clef "bass"
               \key c \minor
               \stemDown

               c4 r g ees |
               r  c r2  |
               c4 r g ees |
               r2 c4 r |

             } }
>>
