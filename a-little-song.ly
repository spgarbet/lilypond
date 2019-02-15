\version "2.18.2"
\header {
  title    = "No. 1 Ivan Sings (A Little Song)"
  composer = "Aram Khachaturian"
  opus     = "Pictures of Childhood (1926)"
  tagline  = "Pedaling should be slow and deliberate."
}


ped = \sustainOff\sustainOn
crs = _\markup{\italic \small cresc.}
rit = _\markup{\italic \small rit.}
dim = _\markup{\italic \small dim.}
sim = _\markup{\italic \small simile}
non = _\markup{\italic \teeny "no pedal"}

\new PianoStaff <<
 
  \new Staff { \relative c'' {
               \tempo "Adantino" 4 = 88
               \time 4/4    \key c \minor 

               r1\p\<_\markup{\italic \small cantabile}  |
               c2-5--\mp g2-2-- |
               g8-2( aes8 g8 aes8 f2) |
               f8-3( g8 f8 g8 f4 g4 |
               ees1)     |
               ees2-3-- g-5--  |
               f8-4(\crs ees d ees c2) | 
               c8(\mf\> ees d ees c4\! ees |
               c1) |
               g'2--\p bes2-- |
               bes8( c8 bes8 c8 aes2) |
               aes8( bes aes\crs bes g4 aes |
               f1) |
               g2--\mf\< c,-- |
               g'8( f g f c2) |
               g'4( f4 ees\! des8\rit ees |
               c1)\> |
               c'2-1--\!\mp_\markup{\italic \small "a tempo"} g'-5--) |
               g8-2( aes g aes f2) |
               f8-3( g f g f4 g4 |
               ees2.) c8-1\<( d8 |
               ees2 g2\!) |
               \acciaccatura { f16-1 g-2 } f8-1( ees-3 d ees c2) |
               c8( d ees d f ees \acciaccatura { d16-2 ees16-3 } d8-2 c |
               c2--) a,4\f( bes |
               c2--)_\markup{\italic \small "poco sostenuto"} c-- |
               c8( ees\rit d ees c2) |
               c8\mf\>( d ees d \acciaccatura d8-2 c4 bes-2 |
               c2-1\p\!) <c' g'\fermata>\pp ||
             } }
  \new Staff { \relative c' {
               \clef "bass" \key c \minor
               \set fingeringOrientations = #'(down)
               \set Staff.pedalSustainStyle = #'bracket

               <c-4 ees-2-->4(\sustainOn <c ees--> <c ees--> <c ees -->)    |
               <c ees-->( <c ees--> <c ees-->  <c ees--> ) |
               <b-3 d-1-->\ped( <b d--> <b d-->\ped <b d-->) |
               <bes-4 des-2-->\ped( <bes des--> <bes des-->\ped <bes des-->) |
               <a-3 c-1-->\ped( <a c--> <a c--> <a c-->) |
               <aes-4 ces-2-->(\ped <aes ces--> <aes ces-->\ped <aes ces-->)|
               <g-3 bes-1-->(\sustainOff <g bes-->\sim <g bes--> <g bes-->) |
               <ges bes-->( <ges bes--> <f-4 aes-2--> <f aes-->) |
               <ees-5 g-2-->( <ees g--> <ees g--> <ees g-->) |
               <des'-2 f-1-->( <des f--> <des f--> <des f-->) |
               <c-3 e-1-->( <c e--> <c e--> <c e-->) |
               <ces-4 ees-2-->( <ces ees--> <ces ees--> <ces ees-->) |
               <bes-3 d-1-->( <bes d--> <bes d--> <bes d-->) |
               <a-4 ees'-1-->( <a ees'--> <a ees'--> <a ees'-->) |
               <aes-5 d-2-->( <aes d--> <aes d--> <aes d-->) |
               <aes-4 d-1-->(\non <aes-4 c-2--> <ges-3 bes-1--> <f-4 a-2-->) |
               <ees-5 g-2-->(\sustainOn <ees g--> <ees g--> <ees g-->) |
               <<
               \new Voice {
                 \clef G ees'2_5\ped ees\ped | 
                 d2_5\ped d\ped |
                 des\sustainOff des | 
                 c c |
                 ces ces | 
                 bes bes |
                 a   aes   |
                 g\sustainOn r2\sustainOff  \clef F
               }
               \new Voice {
                 \stemUp
                 d''8\rest c4 c8 d8\rest c4 c8 |
                 d8\rest b4 b8 d8\rest b4 b8 |
                 b8\rest bes4\sim bes8 b8\rest bes4 bes8 |
                 b8\rest a4 a8 b8\rest a4 a8 |
                 b8\rest aes4 aes8 b8\rest aes4 aes8 |
                 b8\rest g4 g8 b8\rest g4 g8 |
                 b8\rest fis4 fis8 b8\rest f4 f8 |
                 b8\rest ees,4 ees8 r2 |
               }\new Voice {
                 \slurDown \hideNotes {
                   e8( ees ees c') e,( ees ees c')  |
                   d,( e e b') d,( e e b')  |
                   des,( e e bes') des,( e e bes') |
                   c,( e e b') c,( e e b') |
                   ces,( e e aes) ces,( e e aes) |
                   bes,( g' g g) bes,( e e g) |
                   a,( fis' fis fis) aes,( f' f f) |
                   bes,( ees ees ees) r2 
                 }
               }>> |
               r8\sustainOn <aes,-2 bes-1-->4( <aes-2 bes-1-->8) r8\ped <g-3 bes-1-->4( <g bes-->8) |
               r8\ped <ges-4 bes-1-->4( <ges bes-->8) r8\ped <f a-->4( <f a-->8) |
               r8\ped <ees-3 g-1-->4( <ees g-->8) r8\ped <des f-->4( <des f-->8) |
               <c g'\fermata>1\ped \bar "|."
             } }
>>
