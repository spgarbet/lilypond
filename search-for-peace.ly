\version "2.18.2"
\header {
  title    = "Search for Peace"
  subtitle = "Pasticcio de Chopin"
  composer = "McCoy Tyner"
  arranger = "arr. Shawn Garbett"
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

\layout{
  \context { \ChordNames
    \override ChordName #'font-size = #0.5
  }
}

\new PianoStaff <<
 
  \chords {
    a2:m7.5- d:7.9- 
    f4:maj7/g g:9 f:maj7/g g:9
    a2:m7.5- d:7.9-
    f4:maj7/g g:9 f:maj7/g g:9
    g2:m7 c:7.9-
    f:m7 aes4:maj7/bes bes:7.9-
    ees2:m7 ges4:maj7/aes aes:7.9-
    cis2:m7 e:7sus2/b

    a2:m7.5- d:7.9- 
    f4:maj7/g g:9 f:maj7/g g:9
    a2:m7.5- d:7.9-
    f4:maj7/g g:9 f:maj7/g g:9
    g2:m7 c:7.9-
    f:m7 aes4:maj7/bes bes:7.9-
    ees2:m7 ges4:maj7/aes aes:7.9-
    cis2:m7 e:7sus2/b

    c2:6 aes:6/c
    c:6 aes:6/c
    c:6 aes:6/c
    a:m7 d:7
    g:m9 aes:maj7/g
    g:m9 aes:maj7/g
    g:m9 aes:maj7/g
    f:maj7/g g:6
    
    a2:m7.5- d:7.9- 
    f4:maj7/g g:9 f:maj7/g g:9
    a2:m7.5- d:7.9-
    f4:maj7/g g:9 f:maj7/g g:9
    g2:m7 c:7.9-
    f:m7 aes4:maj7/bes bes:7.9-
    ees2:m7 ges4:maj7/aes aes:7.9-
    cis2:m7 e:7sus2/b

    g:m7 c:6
  }
  \new Staff { 
               \relative c'' {
               \tempo "Lento" 4 = 55
               \key c \major
               \time 4/4
               \override TupletBracket.bracket-visibility = ##t


               r4\fuo\mf \tuplet 3/2 {g8(\< c d} ees4. d8\! |
               g,4\trill\> \acciaccatura {fis16 g} b16 a gis a g2)\! |
               r4\pp\aff \tuplet 3/2 {g8( c d} ees4. d8 |
               \acciaccatura {fis16 ais} g1) | 
               r4\mp  \tuplet 3/2 {r8 bes,( c} des4 e\cresc |
               c4~ \tuplet 3/2 {c8 bes aes} g4\> f4)\! |
               bes~( \tuplet 3/2 {bes8 aes ges} f4 ees |
               gis~\rit\> \tuplet 3/2 {gis8 fis e} e2)\p\! \bar "||"

               r4\atp \tuplet 5/4 {g16( b c cis d} ees4. \acciaccatura {c16 ees } d8 |
               \tuplet 12/8 {f,16 g f e f g aes a bes b d c} g2) | 
               r4 \tuplet 3/2 {g8( c d} ees4. d8 |
               ees8.\< f16 \acciaccatura {f16 aes} g8. f16 g2~\!\ff | 
               g4)\> \tuplet 5/4 {gis,16( a ais b c} des4 e  |
               c4)\!\p bes16( aes g aes g4 f) | 
               \tuplet 12/8 {ees16( f ees d ees f ges g aes a c bes} f4 ees'4 |
               gis8 \tuplet 9/6 {fis16 e dis cis b ais gis fis gis } <<e2) {s8\> s s s\p\!}>> \bar "||"

               e'4~\mf\sem \tuplet 3/2 {e8 d c } c4~ \tuplet 3/2 {c8 d e} |
               e4~ \tuplet 3/2 {e8 d c} c2 |
               e4~ \tuplet 3/2 {e8 d c } c4~ \tuplet 3/2 {c8 d e} |
               e4~ \tuplet 3/2 {e8 d c} c2 |
               d4~ \tuplet 3/2 {d8 c bes} c4 \tuplet 3/2 {c8 d f} |
               d4~ \tuplet 3/2 {d8 c bes} c2 |
               d4~ \tuplet 3/2 {d8 \ottava #1 c' bes} c4~ \tuplet 3/2 {c8 d f} |
               <f, a c e g>1\fermata\arpeggio \ottava #0 \bar "||"

               r4\mp\sot \tuplet 3/2 {g,8(\< c d} ees4. d8\! |
               g,4\> b16 a gis a g2)\! |
               r4\pp \tuplet 3/2 {g8( c d} ees4. d8 |
               \acciaccatura {fis16 ais} g1) | 
               r4\mp  \tuplet 3/2 {r8 b,( c} des4 e |
               c4~ \tuplet 3/2 {c8 bes aes} g4\> f4)\! |
               bes~(\mp \tuplet 3/2 {bes8\> aes ges} f4 ees\! |
               gis~\> \tuplet 3/2 {gis8 fis e} e2)\pp\! |

               \tuplet 12/8 {r16\ral\mp g fis g a g c bes ees d a' g } c,2\fermata \bar "|."
             } }
  \new Staff { \relative c, {
               \clef "bass"
               \stemDown

               a8   g''   <c ees>   g   d    fis  <a c ees> fis  | 
               g,   f'    <a b>     f   g,   f'   <a c e>   f    |
               a,   g'    <c ees>   g   d    fis  <c' ees>  fis, | 
               g,   f'    <a b>     f   g,   f'   <a c e>   f    |
               g,   g'    <bes f'>  g   c,   bes' <c e>     bes  |  
               f,   f'    <aes c f> f   bes, g'   aes       b    | 
               ees,, des' ees       ges aes, ges' <fes aes> c'   |
               cis, gis'  b         gis b,,  e'  <fis d'>(\fermata a) |

               a,,8 g''   ees'      g,  d    fis  <c' ees>  fis, | 
               g,   f'    <a b>     f   g,   f'   <c' e>    f,   |
               a,   g'    <c ees>   g   d    fis  <c' ees>  fis, | 
               g,   <f' a> c'       e   g,,  f'   <a c e>   f   |
               g,   g'    <bes f'>  g   c,   bes' <c e>     bes  |  
               f,   f'    <aes ees'> f   bes, g'   aes      b    | 
               ees,, des' ees       ges aes, ges'  aes   <c ees>   |
               cis, gis'  b         gis b,,  e'  <fis d'>( a)   | 

               c,8  <e a>  c <e a>   c <f aes> c <f aes> |
               c8   <e a>  c <e a>   c <f aes> c <f aes> |
               c8   <e a>  c <e a>   c <f aes> c <f aes> |
               a,   <e' g> c <e g>   d <fis a> d <fis a> |
               g   <bes d> g <bes d> g <c ees> g <c ees> |
               g   <bes d> g <bes d> g <c ees> g <c ees> |
               g   <bes d> g <bes d> g <c ees> g <c ees> |
               <g, f' a c e>1\arpeggio

               a,8   g''   <c ees>   g   d    fis  <a c ees> fis  | 
               g,   f'    <a b>     f   g,   f'   <a c e>   f    |
               a,   g'    <c ees>   g   d    fis  <c' ees>  fis, | 
               g,   f'    <a b>     f   g,   f'   <a c e>   f    |
               g,   g'    <bes f'>  g   c,   bes' <c e>     bes  |  
               f,   f'    <aes c f> f   bes, g'   aes       b    | 
               ees,, des' ees       ges aes, ges' <ees a>   c'   |
               cis, gis'  b         gis b,,  e'  <fis d'>( a) |
 
               <g, g,>8 g' <d' f> g, <c, a' e'>2\arpeggio |
             } }
>>
