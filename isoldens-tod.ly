\version "2.18.2"
\header {
  title    = "Isoldens Tod"
  composer = "Richard Wagner"
  arranger = "Morwitz Moszkowski"
  tagline  = ""
}

\layout{
  \context { \ChordNames
    \override ChordName #'font-size = #0.5
  }
  #(layout-set-staff-size 16)  
}



crs = ^\markup{\italic \small cresc.}
dol = _\markup{\italic \small dolciss.}
ped = \sustainOff\sustainOn

%\newcommand{\jumpDown}[1]{% 
%  \stemUp\change Staff="LH" #1 \stemDown\change Staff="RH" % 
%}% 

%jd = \stemUp\change Staff="LH"
%ju = \stemDown\change Staff="RH"

\new PianoStaff <<
  \new Staff << 
     \clef treble
     \tempo "Lento e languido"
     \key c \major
     \time 6/8

     \new Voice = "first" \relative
     { \voiceOne \stemUp
       \partial 8 s8

       s1*6/8
       gis'4.~(-> gis4 a8 
       ais8 b4~ b8) s4
       s1*6/8

       s1*6/8
       b4.~->( b4 c8 
       cis8 d4~d8) s4
       s1*6/8

       s1*6/8
       d4.->~( d8 dis e
       eis8 fis4~ fis4.~
       fis4.) <fis fis,>4(  <g g,>8

       <gis gis,>8 <a a,>4~ <a a,>4.
       <a a,>4.) <a a,>4( <ais ais,>8
       <b b,>8 <c c,>4~ <c c,>4.~
       <c c,>4.) <a a,>4 <ais ais,>8

       <b b,>8 <c c,>4~ <c c,>4. 
       <c c,>4 <dis, dis,>8 <a' a,> <b b,> <c c,>
       s4. d,8^( des c
       b2.)
       
       s4._\dol a8 g ges 
       f4.\> fes\! \bar "||"
     }
     \new Voice = "bottom" \relative
     { \voiceTwo \stemDown 
       \partial 8 a8(\p 

       f'4.~ f4 e8
       dis2.)->(\>
       d!4.~ d8\! r4)
       r4. r4 b8          

       gis'4.~ gis4 g8
       fis2.->\>
       f!4.~ f8\! r4
       r4 d8\< b'4.~

       b8 bes4~ bes8 a4\!
       gis2.\sf
       a4.\<( b4 c8\!)
       c2.\> 

       dis2.~\!\<
       dis2.\!\>
       <dis a'!>2.~\!\<
       <dis a'!>4.\f\!\> dis!4.\!
        
       <d a'>2.~\<
       <d a'>4. dis4.\!\ff
       <c d aes' c>4^(\> <b b'>8) aes4.~
       aes2.\!

       <bes f'_~ bes>4^( <aes f' aes>8) ces,4.~
       ces2.
     }
  >>
  \new Staff <<
    \clef bass
    \new Voice = "third" \relative
    { \voiceOne \stemDown
      \partial 8 r8

      r1*6/8
      <f b>2.
      <e gis>4.~ <e gis>8 r4
      r1*6/8

      r1*6/8
      <aes d>2.
      <g b>4.~ <g b>8 r4
      r1*6/8

      r1*6/8 \clef treble
      c2.
      b2.
      a2. \clef bass

      fis2.
      <b, dis a'>2.
      <dis f,>2.
      <b dis a'>2.

      <dis f,>2.
      <dis b>2.
      <aes' d, f,>8\sustainOn d,8\rest f_~\sustainOff f4._~
      f4. e4 d8_~

      d2._~
      d2.
     }
     \new Voice = "forth" \relative
     { \voiceTwo \stemUp
       \partial 8 s8
       \set Staff.pedalSustainStyle = #'bracket
       s1*6/8
       s1*6/8
       s1*6/8
       s1*6/8

       s1*6/8
       s1*6/8
       s1*6/8
       s1*6/8

       s1*6/8
       f'4.~ f4 e8 
       dis2.
       dis4 dis8~ dis4.

       c4 a8( b4 c8)
       c4^( dis,8~ dis4.)
       a'4.^(\sustainOn b4 c8)\sustainOff
       c4^( dis,8~ dis4.)

       a'4.^(\sustainOn b4 c8)\sustainOff
       <a c>4^( dis,8) a'^( b c)
       d!4. b4^( c8
       d4. e!4 f8)^\p
      
       <ces f>4. f,4^( ges8
       aes2.)
     }

  >>
>>

% Part Two

\new PianoStaff <<
  \new Staff << 
     \clef bass
     \tempo "Molto moderato"
     \key aes  \major
     \time 4/4

     \new Voice = "first" \relative
     { \voiceOne \stemUp
       \set subdivideBeams = ##t
       \set baseMoment = #(ly:make-moment 1/8)
       \set beatStructure = 2,2,2,2


       <c' ees>2( r2
       ges4. aes8 bes2)
       ges4( ces ces bes
       a4. b8 cis2)

       a4( d d cis)
       c( f f e) \clef treble
       ees( a) aes( des)
       <des ees~>4 \tuplet 3/2 {ees8 f ges} aes2

       r32 fis, a c, s8 r32 fis a cis, s8 r32 fis a d, s4.
       r32 g c d, s8 r32 g b d, s8 r32 d\< aes' bes s4 s8\!
       s4. aes8 <e b'>2 \bar "||"
     }
     \new Voice = "second" \relative
     { \voiceTwo \stemDown 
       \set subdivideBeams = ##t
       \set baseMoment = #(ly:make-moment 1/8)
       \set beatStructure = 2,2,2,2

       ees4\pp aes aes g
       \repeat tremolo 8 {ces,32 ees} \repeat tremolo 8 {d f}
       ges2 fes4~ fes8. ees16
       \repeat tremolo 8 {d32 fis} \repeat tremolo 8 {eis gis}

       fis2 g4~ g8. gis16 
       \repeat tremolo 4 {f32 a} r4  \repeat tremolo 8 {g32 c}
       \repeat tremolo 4 {aes32 c} \repeat tremolo 4 {ees aes,} \repeat tremolo 8 {des f}
       \repeat tremolo 4 {ees32 ges} f8 ees \repeat tremolo 8 {aes32 c} 

       s8 fis,32 a^1 c <fis a> s8 fis,32 a c <fis a> s8 fis,32 a d fis a b' fis des a fis d a
       s8 g32 c d <g c> s8 g,32 bes d <g b> s8 d32 aes' a^1 b! <d a'> b g aes^5 d, bes aes aes'
       <aes c, aes>4. s8 gis,, r8 r8 g
  }
  >>
  \new Staff <<
    \clef bass
    \key aes  \major
    \set Staff.pedalSustainStyle = #'bracket

    \new Voice = "third" \relative
    { \voiceOne \stemUp
       \set subdivideBeams = ##t
       \set baseMoment = #(ly:make-moment 1/8)
       \set beatStructure = 2,2,2,2

      \repeat tremolo 8 {aes,32\sustainOn c} \repeat tremolo 8 {bes\ped des} 
      ees,2\ped <bes' bes,>2\ped
      \repeat tremolo 8 {ces32\ped ees} \repeat tremolo 8 {des\ped ges} 
      fis,2\ped <cis cis'>\ped

      a32\ped^\markup{\italic \small "sempre trem."} a' d a \repeat tremolo 6 {d32 a_~} \stemDown a2\ped \stemUp
      r4\ped \repeat tremolo 4 {f'32 a} bes4~\ped\crs bes8. aes16
      <c, ees>8\ped c, s8 d'' <f, aes>4.\ped <g g'>8
      <ees ges ces>8\ped\crs <ges, ges,>8 s4\ped <f' aes ces ees>4\ped <f aes ces des>\ped

      c'4\ped^\p^\markup{\italic cantando} cis\ped d4.\ped c8\sustainOff
      c4\sustainOn b\ped bes4.\ped aes'8\sustainOff
      s4.^\f\sustainOn ees,32 c aes ees^4 e16^5\ped b'32^\markup{\italic dimin.} e s8 s8 cis32\sustainOff b g e
    }
    \new Voice = "forth" \relative
    { \voiceTwo \stemDown 
       \set subdivideBeams = ##t
       \set baseMoment = #(ly:make-moment 1/8)
       \set beatStructure = 2,2,2,2

      ees,1
      s
      ges
      s

      s2 \stemUp \repeat tremolo 8 {e'32 a} \stemDown
      a,2 <g c>
      s4 <c ees>4 bes8 bes4.
      s4 \repeat tremolo 4 {<ees ges>32 ces'}  r8 <f,, f,>8 r8 f
 
      \set tieWaitForNote = ##t
      <ees' a>16 ees, ees'~ a~ <a ees> ees, ees' a
        <d, fis> d, a' d fis a c d,
      <d g>16 g, d'~ g~ <g d> g, d' g <d aes'> f, f' aes bes d aes' bes, 
      <ees, c' ees>16 ees,32 aes c ees^4 aes c f^2 ees c aes  s8 
        s8 fis32 gis a b cis b gis e s8
    }
  >>
>>

% Part Three

\new PianoStaff <<
  \set PianoStaff.connectArpeggios = ##t
  \new Staff = "RH" << 
     \clef treble
     \tempo "Un poco piu mosso"
     \key b \major
     \time 4/4

     \new Voice = "first" \relative
     { \voiceOne \stemUp
       \set subdivideBeams = ##t
       \set baseMoment = #(ly:make-moment 1/8)
       \set beatStructure = 2,2,2,2

       <fis' fis,>4( <b b,>4 <b b,>4 <ais ais,>4)
       <a, d a'>4( <d d'> <d d'> <cis cis'>)
       <b g' b>4( <g' g'> <g g'> s
       % Page 5
       <e e'>4) <b b'>8.( <cis cis'>16 <e e'>4 <d d'>8 cis'

       <bis, bis'>4) <cis cis'>8.( <dis dis'>16 <cis' fis>4 e8.) dis16(
       <fis, cis' fis>8\> <e e'> <dis g~ dis'>8. <cis g' cis>16 cis'4\! c)
       b4( eis <b eis> dis)
       d8(\p e32 d cis d-3 b'16 a fis d <d d,>8 <cis cis,> <c c,>4)

       c4( f <c f> <c e>)
       ees8-54( f32 ees d ees c'16 bes-4 g-5 ees <ees ees,>8 <d d,> <cis gis cis,>4)
       cis4( fis fis eis)
       a8(\arpeggio b32 a gis a a8. fis16 e8 dis d8. des16) 

       gis4( c <aes c>-5-3 b)
       % page 6
       bes8( c32 bes a bes bes8. e,16 ees16 d ees f \tuplet 3/2 {g ees c a ges ees)}
       gis4.(\p^\markup{\italic misterioso} ais8 cis4 bis4)
       bis4.( cis8 d4-1-5 dis)

       <d e>8 s s4 <dis eis>8 s4.
       fis4( b b ais)
       gis4( e' e dis)
       cis( gis \autoBeamOff gis'4.) fis8( \autoBeamOn

       e4 cis \ottava #1 ais'!4.) gis8( \ottava #0
       eis32 dis ais dis gis dis ais dis fis dis b dis dis b fis b) s2
       ais4( gis) b8( cis32 b ais b <gis gis'>16 <fis fis'> <dis dis'> <b b'>
       b'4 ais) a8( b32 a gis a <fis fis'>16 <e e'> <cis cis'> <a a'>

       % Page 7
       a'4 gis) g8( a32^2 g fis g^1 e'16 d b^5 g^4
       g4 fis) f8^1^2^4( g32^5 f^3 e f^3 dis'16 cis^4 ais f
       f4 e) dis,4.( eis8 
       gis4 fisis) fisis4.( gis8

       a4 ais) b4.( bis8
       dis4 cis) d4.( dis8
       fis4 eis) <e, ais cis e>16 \clef bass <eis, gisis>( <cisis ais'> <eis cisis>^1^4
         \clef treble <ais e'>16 <cisis ais'>^1^3 <e cisis'>^1^4 <ais eis'>16^2^5
       \stemDown <ais cisis eis ais>16) \stemUp <eis, ais cis>[( <eis ais cisis> <ais cisis eis>]_-
         <cisis eis ais>_- <eis ais cis>_- <eis ais cisis>_- <ais cisis eis>_-)
         s2

       <e' gis>4 cis <b dis> s 
       <e gis>4 cis <b dis> s 
       <e gis>4 cis <b dis>2
       % page 8 
       <ais cis>2 <b dis>2  

       <ais e'>4. s8 <dis fis>2
       <cis e>2 <dis fis>
       <d eis>2 <d f>
       <ees g>2 <d aes'>

       <dis fis>2 <e gis>
       <dis fis>2 <e gis>
       eis2 <dis fis>4 s
       fis2 <fis b>4. gisis8

       <ais cis>2 <b dis>
       %page 9
       <ais cis>2 <b dis>4 s4
       \time 2/4 s2
       \time 4/4 s1

       s4 \tuplet 3/2 {fis'8 fisis gis} \tuplet 3/2 {gis eis fis} \tuplet 3/2 {fisis gis ais}
       % CRAZY page 9
       << 
         { 
           r8_\fff s8 << \new CueVoice {\stemUp \once\omit TupletNumber \tuplet 16/2 {\change Staff="LH" gis,,,8^3 ais^4 cis^5 b^1 \change Staff="RH" e^2 gis^3 ais^4 cis^5 b^1 e gis ais cis b^1 e gis}}  >>
             cis32 cis, gis e 
             \tuplet 5/4 {b32 e gis cis cis'}
             b32 b, ais^4 e b e gis^1 gis'
           r8 << \new CueVoice {\stemUp
                \tuplet 6/1 {\change Staff="LH" b,,,,8^1 dis^2 gis^4 fis^3 b^1 dis^2 \change Staff="RH"}
                \tuplet 6/1 {gis_4 fis_3 ais_5 b_1 dis gis}
                \tuplet 6/1 {fis ais b dis gis^4 gis^1}}>>
             \ottava 1 gis'16 \ottava 0 r16 <fis,, b dis fis>8^> 
             \tuplet 3/2 {<fisis b dis fisis>8^> <gis gis'>^> <ais ais'>^>}
           r8_\fff s8 << \new CueVoice {\stemUp \once\omit TupletNumber \tuplet 16/2 {\change Staff="LH" gis,,8^3 ais^4 cis^5 b^1 \change Staff="RH" e^2 gis^3 ais^4 cis^5 b^1 e gis ais cis b^1 e gis}}  >>
             cis32 cis, gis e 
             \tuplet 5/4 {b32 e gis cis cis'}
             b32 b, ais^4 e b e gis^1 gis'
           r8 << \new CueVoice {\stemUp
                \tuplet 6/1 {\change Staff="LH" b,,,,8^1 dis^2 gis^4 fis^3 b^1 dis^2 \change Staff="RH"}
                \tuplet 6/1 {gis_4 fis_3 ais_5 b_1 dis gis}
                \tuplet 6/1 {fis ais b dis gis^4 gis^1}}>>
             \ottava 1 gis'16 \ottava 0 r16 <fis,, b dis fis>8^> 
             \tuplet 3/2 {<fisis b dis fisis>8^> <gis gis'>^> <ais ais'>^>}
         }
         \new Staff \with { alignAboveContext = "RH" }
         { \clef treble \key b \major 
           \ottava 1 <cis, e gis cis>2->~ <cis e gis cis>8 \ottava 0 r8 r4  
           <gis b dis gis>2->~ <gis b dis gis>8 r8 r4
           \ottava 1 <cis e gis cis>2^>~ <cis e gis cis>8 \ottava 0 r8 r4
           <gis b dis gis>2->~ <gis b dis gis>8 r8 r4
         }
         \new Staff \with { alignAboveContext = "RH"}
         { \clef treble \key b \major 
           <cis, e gis cis>2->~_\markup{\italic "con somma bravura"} <cis e gis cis>8 r8 r4  
           <gis b dis gis>2^>~ <gis b dis gis>8 r8 r4
           <cis e gis cis>2^>~ <cis e gis cis>8 r8 r4
           <gis b dis gis>2^>~ <gis b dis gis>8 r8 r4
         }
       >>
 
       %Page 10
       <cis'' e gis cis>8^> \tuplet 3/2 {r32 b e cis' gis b,} 
         \tuplet 3/2 {r32 gis b gis' e gis,}
         \tuplet 3/2 {r32 e gis e' b e,} s4
         s16 ais8 gis16
       s2 s8 dis'8 cis8. b16
       s2 s8 gis'8 fis8. e16
       s1
     }
     \new Voice = "second" \relative
     { \voiceTwo \stemDown 
       \set subdivideBeams = ##t
       \set baseMoment = #(ly:make-moment 1/8)
       \set beatStructure = 2,2,2,2

       s2 r16 fis'-4 \tuplet 3/2 {eis-4 e cis}
         r16 dis \tuplet 3/2 {cis ais \stemUp\change Staff="LH" fis \stemDown\change Staff="RH" }
       r16 gis \tuplet 3/2 {a d fis} r cis \tuplet 3/2 {d fis b}
         r a_4 \tuplet 3/2 {gis_3 g_3 e_2} r fis \tuplet 3/2 {e cis \stemUp\change Staff="LH" <g ais,> \stemDown\change Staff="RH"}
       r16_\< cis \tuplet 3/2 {d g b} r16 fis \tuplet 3/2 {g b eis}
         r16 d_4 \tuplet 3/2 {cis_3 c_3 a_2} <fis fis'>8. <f f'>16\!
       r16 ais, \tuplet 3/2 {b e gis} r16 dis \tuplet 3/2 {e gis s}
         r16 gis, \tuplet 3/2 {a cis e} r16 cis-1 \tuplet 3/2 {d-1 fis ais}

       r16 cisis,-1 \tuplet 3/2 {dis fis a} r16 fisis \tuplet 3/2 {gis bis s}
         fis4 r16 eis \tuplet 3/2 { fis ais s}
       \stemUp \change Staff="LH"  a16\rest bis,^1 \tuplet 3/2 {cis^1 \stemDown \change Staff="RH" gis' cis} s4 
         <dis, fis>16 cisis dis e eis fis~ <fis dis> c
       <gis e'>16 b~ \tuplet 3/2 {b fis' e} gis e~ \tuplet 3/2 {e a gis}
         fis16\< eis~ \tuplet 3/2 {eis gis fis} r4\!
       <d a'>8_\markup{\italic soavemente} a'~ \slashedGrace d8-2 <a d>8. <gis b>16-1    
         <g b>16 bes a gis g8 fis

       <c f>16 c~ \tuplet 3/2 {c g' f} a f~ \tuplet 3/2 {f bes a}
         f16 fis~ \tuplet 3/2 {fis a g} \tuplet 3/2 {a g \stemUp \change Staff="LH" f e dis c} \stemDown \change Staff="RH"
       <ees bes'~>8\pp bes' <bes e>8. <a c>16 <c aes>16 ces bes a s4
       ais,16 cis~ \tuplet 3/2 {cis gis' fis} ais fis~ \tuplet 3/2 {fis cis'-2 bis}
         b16-2 fisis~ \tuplet 3/2 {fisis ais gis} r4
       <a e'>4\arpeggio <fis' fis'>16 <e e'> <cis cis'> <a a'> <a a'>4 <gis gis'>

       <g c>16 g~ \tuplet 3/2 {g d' c} <c g'> c~ \tuplet 3/2 {c b' a}
         \tuplet 3/2 {c,\< cis d e f g} \tuplet 3/2 {aes f\! d b aes f}
       <bes f'>4\p <g' g'>16 <f f'> <d d'> <bes bes'> <bes bes'>4 <a a'>
       \repeat tremolo 8 {dis,32 eis} \repeat tremolo 8 {dis fis}
       \repeat tremolo 8 {dis32 fis} \repeat tremolo 4 {fis32 bis} \repeat tremolo 4 {fis32 bis}

       r32 e, b' bis^3 cis d^1 dis e <d' e> b e, <dis e> bis e, dis e
         r32 eis b' bis cis dis^1 e eis^1 <d' eis> b eis, <dis eis> bis eis, disis eis
       r16 <fis b dis>8 <fis b dis>16 r <b dis fis>8 <b dis fis>16
         r16 <b cis e>8 <b cis e>16 r <ais cis e>8 <ais cis e>16
       r16 <gis b e>8 <gis b e>16 r <e' gis b>8 <e gis b>16
         r16 <e a b>8 <e a b>16 r <dis a' b>8 <dis a' b>16
       r16 <cis e gis>8 <cis e gis>16 r16 <gis cis e>8 <fisis cis' e>16
         <gis' bis>16 <gis bis>8 <gis bis> <gis bis> <fis bis>16

       r16 <e gis cis>8 <e gis cis>16 r16 <cis e a>8 <cis e gis>16
         <ais' cisis eis>16 <ais cisis eis>8 <ais cisis eis> <ais cisis eis> <gis ais cisis>16
       <eis eis'>8 <gis gis'> <fis fis'> <dis dis'>
         <b' dis b'>16\arpeggio gis'32^4 fis dis b gis^4 fis dis b g^4 fis^3 dis^2 fis ais^1 ais'
       <ais, e'>4 cis16 b ais b~ <b gis'>8 fis' b fis
       <b, fis'>16 <b fis'>8 <b fis'>16 <ais fis'>16 <ais fis'>8 <ais fis'>16
         <a fis'>8 e' a e

       % Page 7
       <a, e'>16 <a e'>8 <a e'>16 <gis e'>16 <gis e'>8 <gis e'>16
         <g e'>8 d' r32 b' g d~ d e_3 d g,
       <g d'>16 <g d'>8 <g d'>16 <fis d'>16 <fis d'>8 <fis d'>16
         <f d'>8 c'_1 \slashedGrace f~ f32 a_3 f_2 c~ c d_3 c_2 f,
       <f c'>16 <f c'>8 <f c'>16 <e c'>16 <e c'>8 <e c'>16 ais,8 ais ais <ais cis>
       <ais cis>8 <ais cis> <ais cis> <ais cis> <ais cis> <ais cis> <ais cis> <ais cis>
  
       <a cis fisis>8 <a cis fisis> <ais cis fisis> <ais cis fisis>
         <b fis' ais> <b fis' ais> <b fis' ais> <bis fis' ais>
       <dis fis ais>8 <dis fis ais> <cis fis ais> <cis fis ais>
         <d fis a> <d fis a> <d fis a> <dis fis a>
       <fis gis cisis>8 <fis gis cisis> <eis gis cisis> <eis a cisis> s2
       s2 \repeat tremolo 4 {<ais e' ais>32. b'} <gisis, e' gisis>16^- <ais e' ais>16^-

       <cis cis'>8^( <b b'> <ais ais'>8.) <gis gis'>16
         <gis gis'>8^( <fis fis'>) \tuplet 3/2 {<fisis fisis'>^- <gis gis'>^- <ais ais'>^-}
       <cis cis'>8^( <b b'> <ais ais'>8.) <gis gis'>16
         <gis gis'>8^( <fis fis'>) \tuplet 3/2 {<fisis fisis'>^- <gis gis'>^- <ais ais'>^-}
       <cis cis'>8^( <b b'> <ais ais'>8.) <gis gis'>16
         <gis gis'>8^( <fis fis'> <fisis fisis'> <gis gis'>~
       % Page 8 
       <gis gis'>8 <fis fis'> <fisis fisis'> <gis gis'>~ <gis gis'> <fis fis'> <fisis fisis'> <gis gis'>~

       <gis gis'>8 <fis fis'> \tuplet 3/2 {<fisis fisis'>8 <gis gis'> <a a'>~}
         <a a'>8 <fisis! fisis'> <gis gis'> <a a'>~
       <a a'>8 <fisis fisis'> <gis gis'> <a a'>~ <a a'> <fisis fisis'> <gis gis'> <a a'>~
       <a a'>8 <fisis fisis'>  \tuplet 3/2 { <gis gis'> <a a'> <ais ais'> } 
         <bes bes'> <aes aes'> <a a'> <bes bes'>~
       <bes bes'>8 <g g'> \tuplet 3/2 {<aes aes'> <a a'> <bes bes'>~}
         \tuplet 3/2 {<bes bes'>8 <g g'> <aes aes'>} \tuplet 3/2 {<a a'>  <bes bes'> <ces ces'>~}
      
       <b! b'!>8 <a a'> <ais ais'> <b b'>~ <b b'> <ais ais'> <b b'> <c c'>~
       <c c'>8) <ais ais'> \tuplet 3/2 {<b b'> <c c'> <cis cis'>~}
         <cis cis'>8 <b b'> <bis bis'> <cis cis'>~
       <cis cis'>8 <ais ais'> \tuplet 3/2 {<b b'> <bis bis'> <cis cis'>~}
         <cis cis'>8 <b b'> \tuplet 3/2 {<bis bis'> <cis cis'> <dis dis'>~}
       <dis dis'>8 <cis cis'> <dis dis'> <e e'>~ 
         <e e'> <cisis cisis'> \tuplet 3/2 {<dis dis'> <e e'> <fis fis'>~}
      
       \tuplet 3/2 {<fis fis'> <dis dis'> <e e'>} \tuplet 3/2 {<eis eis'> <fis fis'> <gis gis'>~}
         <gis gis'> <eis eis'> <fis fis'> <gis gis'>~
       % Page 9
       <gis gis'>8 <eis eis'>  \tuplet 3/2 {<fis fis'> <fisis fisis'> <gis gis'>~}
         \tuplet 3/2 {<gis gis'> <dis dis'> <e e'>} \tuplet 3/2 {<eis eis'> <fis fis'> <g g'>}
       \ottava 1 <g bis dis g>8 \tuplet 3/2 {r16 <fis fis'> <bis dis>}
         \tuplet 3/2 {r16 <g g'> <bis dis>} \tuplet 3/2 {r16 <gis gis'> <bis dis>}
       \tuplet 3/2 {r16_\markup{\italic "quanto possibile"} <gis gis'> <ais e'>} \tuplet 3/2 {r16 <fis fis'> <ais e'>}
         \tuplet 3/2 {r16 <fisis fisis'> <ais e'>} \tuplet 3/2 {r16 <gis gis'> <ais e'>}
         \tuplet 3/2 {r16 <gis gis'> <ais e'>} \tuplet 3/2 {r16 <fis fis'> <ais e'>}
         \tuplet 3/2 {r16 <fisis fisis'> <ais e'>} \tuplet 3/2 {r16 <gis gis'> <ais e'>}

       \tuplet 3/2 {r16 <gis gis'> <ais e'>} \tuplet 3/2 {r16 <eis eis'> <ais cis>}
         \tuplet 3/2 {<fis fis'> <ais cis> <fisis fisis'> <ais cis> <gis gis'> <ais cis>}
         \tuplet 3/2 {<gis gis'> <ais cis> <eis eis'> <ais cis> <fis fis'> <ais cis>}
         \tuplet 3/2 {<fisis fisis'> <ais cis> <gis gis'> <ais cis> <ais ais'> <cis e>}
       \ottava 0 s4. \tuplet 5/4 {\change Staff="LH" gis,,32 b \change Staff="RH" e gis b} cis16 r16 <b, e gis b>8_>
         <ais b e ais>8._> <gis b e gis>16
       s4 s8 dis'32 fis b dis fis'16_\markup{\italic loco} s <fis,,, b dis fis>8_>
         \tuplet 3/2 {<fisis b dis fisis>8_> <gis gis'>_> <ais ais'>_>}
       \ottava 0 s4. \tuplet 5/4 {\change Staff="LH" gis32 b \change Staff="RH" e gis b} cis16 r16 <b, e gis b>8_>
         <ais b e ais>8._> <gis b e gis>16
       s4 s8 dis'32 fis b dis fis'16_\markup{\italic loco} s <fis,,, b dis fis>8_>
         \tuplet 3/2 {<fisis b dis fisis>8_> <gis gis'>_> <ais ais'>_>}

       % Page 10
       <cis e gis cis>16_> \change Staff="LH" \stemUp <e, e,> \stemDown \change Staff="RH" 
         <b' e gis b>8 <gis b e gis> <e gis b e>
         \tuplet 3/2 {r32 cis'' e cis' gis cis,}
         \tuplet 3/2 {r32 b e b' gis b,}
         r32 ais ais' e ais,\finger "2/1" b_1 gis' gis,
       \repeat tremolo 8 {e''32 <e, gis>} \repeat tremolo 2 {e' <e, gis>}
         dis'32[ dis, b' gis] r cis, gis' e cis e gis b,
       \repeat tremolo 8 {<e' a>32^3^5 <a, b>^1^1} \repeat tremolo 2 {<e' a>32 <a, b>}
         gis'32[ gis, e'\> b] r fis b gis fis gis b e,\!
       \ottava 1 \repeat tremolo 8 {<g' b>32_\pp <b, e>} \repeat tremolo 8 {<g' b>32 <b, e>} \ottava 0
       
       s16 e,32 g b e \tuplet 5/2 {g e b g e} s16 b32 e g b \tuplet 5/2 {e b g e b} s16
         g32 b e g \tuplet 5/2 {b g e b g} s16 \tuplet 3/2 {e32 g b} cis32_4 e_1 g cis
     }
  >>
  \new Staff = "LH" <<
    \clef bass
    \key b \major
    \set Staff.pedalSustainStyle = #'bracket

    \new Voice = "third" \relative
    {  \voiceThree \stemUp
       \set tieWaitForNote = ##t
       \set subdivideBeams = ##t
       \set baseMoment = #(ly:make-moment 1/8)
       \set beatStructure = 2,2,2,2

       r16\sustainOn eis \tuplet 3/2 {fis^\markup{\italic m.d.} b dis}
         r16 ais \tuplet 3/2 {b dis gis} s2\ped
       fis,4\ped a8. gis16 <a,~ g'~>4\ped <a g'>8.\sustainOff s16
       <d, b' d>4\sustainOn <b'' d>8. cis16 <a c>4\ped \clef treble r16\sustainOff b'-1 \tuplet 3/2 {a-2 dis,-4 cis-5}
       \clef bass <e, gis b>16^\p\sustainOn e, b' e s4\ped 
         <fis a>16\ped fis, e ais s8\sustainOff cis'8

       <fis, gis>16\sustainOn gis, fis' gis dis'8\ped bis
         r16\ped bis-1 \tuplet 3/2 {cis_~^5^3 fis a} <cis, e>8.\sustainOff dis16
       << {\voiceOne gis,4} \new Voice {\voiceTwo s8.\sustainOn s16\sustainOff} >> \oneVoice \stemUp g16 dis \tuplet 3/2 {e gis cis} a16 eis fis gis a4  
       r8\sustainOn^\markup{\italic "sempre legato"} e16 gis\sustainOff b gis-4 e'8 a, b \tuplet 3/2 {fis'16-2 e-1 dis cis b-1 ais}
       r32\sustainOn a16. d16\sustainOff a fis8 dis r16 e-1 g-3 gis a gis a b
 
       r8\sustainOn f16 a c a f'8\sustainOff bes,8\sustainOn c16 bes~ \stemDown bes4\sustainOff \stemUp
       bes16\sustainOn g ees' bes\sustainOff g'8 ees r16 f,~(\< <f aes> a b\! gis\> cis b)\!
      r8 fis16 ais cis8 <cis fis~> <dis fis> cisis16^\< dis \tuplet 3/2 {ais' gis fis\! eis-1 dis cis}
      <cis, a' e'>16\arpeggio^\p\sustainOn a'-5 cis e ais-1 fis-2 e-1 dis-2
        d\sustainOff eis, fis fisis gis a ais b
 
      <e, g c>8 c16 g' c16-5-2  g g' fis c aes c f \clef treble <d b'>-4-1 <b aes'> \clef bass <f d'!>-4-1 <d b'>
      f'16\sustainOn bes,^\markup{\italic dolce} d f \clef treble <f d'> <d bes'> <bes f'> <g ees'> \clef bass
        <ges ees'>\ped <fis d'>-3-1^\< <ges ees'>-5-2 <aes f'> <a ges'>\ped <ges ees'> <e cis'>-4-1 <cis a'>\!
      <b eis gis>4..\ped gis'16 <dis fis>4\ped fis\ped
      <dis fis bis>4.\ped c'8^\markup{\italic cresc.} <fis, bis d>4\ped dis'\ped^\markup{\italic molto}

      <e, b' d>4\ped e'16^> d b e, <eis b' d>4\ped eis'16^> d b eis,
      \tuplet 3/2 {fis,,16^\pp\ped fis'-1 b-5 dis gis fis} s4\ped
        \tuplet 3/2 {r16\ped fis, cis'-3 e-2 eis-1 fis-4} \tuplet 3/2 {gis\sustainOff e' cis ais e' cis}
      s4\sustainOn^\markup{\italic "poco cresc."} s4\ped s4\ped \tuplet 3/2 {a16_1\ped fis dis b_1 fis f}
      \tuplet 3/2 {e16\ped cis' e fis^2 fisis gis^4} \tuplet 3/2 {ais\sustainOff e' cis b^5 e^2 cis^4}
        s4\sustainOn s16 s16\sustainOff dis8\sustainOn

      \tuplet 3/2 {cis,,16\ped gis' e' fisis^3^\markup{\italic dim.} a^1 gis} \tuplet 3/2  {cis,\ped e a^1 ais\sustainOff fis' e} 
         \tuplet 3/2 {<gis, ais cisis eis>16\sustainOn ais,, eis'_3 ais_2 cisis_1 eis_4} s4
      \tuplet 3/2 {dis,16^5\ped ais'^3 dis^2 eis^1 fis^3 ais^2}
         \tuplet 3/2 {dis,16\ped fis b dis gis fis}
         \tuplet 3/2 {b,,,16\ped fis' b dis fis b} s4
      e,,16\ped b'32 e s8 gis'8^2\ped gis^1 gis\ped fis dis\ped b 
      \tuplet 3/2 {d,,16\ped d'_1 gis} s8 fis'8.\ped gis,16 fis'8\ped e cis\ped a

      % Page 7
      \tuplet 3/2 {c,,16\ped c' fis_2} s8 e'8.\ped fis,16 e'8\ped d b\ped g
      \tuplet 3/2 {bes,,16\ped bes'_1 e_3} s8 d'8.\ped e,16 d'8\ped c a\ped f
      \tuplet 3/2 {gis,,16\ped gis' d'} e32 d cis d c'8.\sustainOff b16 \repeat tremolo 8 {fisis,32^\pp cis'} 
      \repeat tremolo 8 {eis,32 cis'} \repeat tremolo 8 {e,32 cis'} 

      \repeat tremolo 8 {dis,32 cis'} \repeat tremolo 4 {dis,32 dis'} \repeat tremolo 4 {d, d'}
      \repeat tremolo 8 {cis,32 cis'} \repeat tremolo 4 {c,32 c'} \repeat tremolo 4 {b, b'}
      \repeat tremolo 4 {ais,32. ais'} a,32 a' a, a' \repeat tremolo 8 {gis,32 gis'}
      s2 \tuplet 3/2 {<fis, fis'>16 ais cis} \tuplet 3/2 {fis16 ais cis} s4

      <e,, e'>16^\ff <e'' b'>( <gis e'> <b gis'>) s2.
      <e,,, e'>16 <e'' b'>( <gis e'> <b gis'>) s2. 
      <e,,, e'>16 <e'' b'>( <gis e'> <b gis'>) s2. 
      % Page 8
      \tuplet 3/2 {r16 e,, cis' e_1 gis_3 ais} s4
        \tuplet 3/2 {r16 dis,, b' dis fis b} s4

      \tuplet 3/2  {r16 cis,, ais' e' fis ais} s4
        \tuplet 3/2 {r16 bis,,\sustainOn bis' dis_4 fis gis} \tuplet 3/2 {dis' fis, gis dis_4 bis_1 bis,\sustainOff}
      \tuplet 3/2 {r16 cis cis'_1 e_5 gis cis} s4
        \tuplet 3/2 {r16 bis,,\sustainOn bis' dis fis gis} \tuplet 3/2 {dis' fis, gis dis bis bis,\sustainOff}
      \tuplet 3/2 {r16 b b' b d eis} \tuplet 3/2 {d' d, eis b_5 b_1 b,}
        \tuplet 3/2 {r16 bes bes'_1 d_5 f aes} \tuplet 3/2 {d f, aes d,_5 bes_1 bes,}
      \tuplet 3/2 {r16 bes bes'_1 ees_5 g bes} \tuplet 3/2 {ees g, bes ees,_5 bes_1 bes,}
        \tuplet 3/2 {r16 bes bes'_1 f'_5 aes bes} \tuplet 3/2 {d aes bes f_5 bes,_1 bes,}

      % First Ossia (ref, not included)
      \tuplet 3/2 {r16 a a' dis_5 fis b} \tuplet 3/2 {dis fis, b dis,_5 a_1 a,}
        \tuplet 3/2 {r16 gis gis' e'_5 gis b} \tuplet 3/2 {e gis, b e, gis, gis,}
      \tuplet 3/2 {r16 a a' dis_5 fis b} \tuplet 3/2 {dis fis, b dis,_5 a_1 a,}
        \tuplet 3/2 {r16 gis gis' e'_5 gis b} \tuplet 3/2 {e gis, b e, gis, gis,}
      \tuplet 3/2 {r16 g g' eis'_5 b' d} \tuplet 3/2 {eis b d e,_5 e_1 g,}
        \tuplet 3/2 {r16 fis, fis' b_5 dis_3 fis_2} \tuplet 3/2 {fis' b, d fis, fis fis,}
      s1

      s1
      %Page 9
      s1
      <fis fis'>8\sustainOn s4 s16 s16\sustainOff
      <fis fis'>8 s4. <fis fis'>8 s4.

      <fis fis'>8 s8 \tuplet 3/2 {fis''8 fisis gis} \tuplet 3/2 {gis eis fis} \tuplet 3/2 {fisis gis ais}
      r8\sustainOn r16 b,,32^1 e^2 s4 s8 s8\ped s8\ped s8\sustainOff
      s2\sustainOn s8 s8\sustainOff \tuplet 3/2 {s8\sustainOn s s\sustainOff}
      r8\sustainOn r16 b32^1 e^2 s4 s8 s8\ped s8\ped s8\sustainOff
      s2\sustainOn s8 s8\sustainOff \tuplet 3/2 {s8\sustainOn s s\sustainOff}

      % Page 10
      s1
      \clef treble <e' gis cis>8_\markup{\italic legato} <e gis b> <b e gis> <gis b e> \clef bass s2 
      <e, b'>8 \clef treble <a'' b e> <e a b> <b e a> \clef bass s8 s16 s16\sustainOff s8\sustainOn s16 s16\sustainOff
      <e,,, e'>8\sustainOn <e' b'>16_2_5 <g e'> s2 \clef treble <b' g'>16 <e b'> <g e'> <b g'>

      \tuplet 3/2 {e,32 g b} s8 s16 \tuplet 3/2 {b,32 e g} s8 s16
        \tuplet 3/2 {g,32 b e} s8 s16 \clef bass \tuplet 3/2 {e,32 g b} \clef treble s8
    }
    \new Voice = "forth" \relative
    { \voiceFour \stemDown 
      \set subdivideBeams = ##t
      \set baseMoment = #(ly:make-moment 1/8)
      \set beatStructure = 2,2,2,2

      <fis,~ b dis>2\crs <fis cis' eis>2
      <fis d'>2 e
      s4 d'2 s4
      s4 <e gis> s <fis a>

      s4 gis <a, fis'>8 ais'~ ais4 
      ais,2 b
      b,16 b'8.~ b8 b'16 ais r16 b,8 a'16_5~ a8 r8
      fis,16 fis'~ fis8~ fis4 e,8 e'4.-5 

      a,,16 a'8.-5-1 r8 c'16^\< b g,16 c8. s4\! 
      g16 g'8.~ g4 f,8 f'4 s8
      cis,16\sustainOn cis'8.~ cis16 ais'8 a16\sustainOff gis c, b'8-3-5~ <b cis>4-1-4-5
      s2 << {\voiceOne b,} \new Voice {s4 e8 f} >> \oneVoice

      r16 e,8.\sustainOn <e' c'>4\ped <d f'>\ped s8.\ped \hideNotes d16~ \unHideNotes
      d8.\ped r16 s4 \stemDown c8 r8 r4
      r8 r16 b, b'4 ais8 ais, r ais
      r8 r16 a a'4 r8 <gis, gis'> r <gis gis'>

      r16 gis gis'_1 e'~_5 e4 r16 g,, g'_1 eis'~_5 eis4 
      s4 \tuplet 3/2 {r16 dis fis ais cis b} s4 gis8 ais 
      \tuplet 3/2 {r16 fis, e'_1 gis_3 cis_2 b_1} \tuplet 3/2 {r16 fis gis b fis' e}
        \tuplet 3/2 {r16 fis,,_5 b_3 a'_1 cis_2 b_3} s4
      e,,8 s ais' b \tuplet 3/2 {<bis dis fis gis^1>16 dis,,_5 gis dis'_1 fis_3 gis}
        \tuplet 3/2 {bis_1 cis_4 cisis dis gis gis,}

      cis,,8 s8 \autoBeamOff cis' ais' \autoBeamOn s4 \tuplet 3/2 {gis16 ais cisis eis_2 ais ais,}
      dis,,8 s8 dis' s8 s4 dis'8 r8
      s8 \tuplet 3/2 {gis,16 b e} \tuplet 3/2 {gis16 e b gis' b, e,}
        \tuplet 3/2 {gis' b, dis, fis' b, dis,} \tuplet 3/2 {dis' b dis, b' fis dis} 
      s8 ais'32 gis fisis gis r8 dis \slashedGrace cis
        \tuplet 3/2 {fis'16 a, cis,} \tuplet 3/2 {e' a, cis,}
        \tuplet 3/2 {cis' a cis,} \tuplet 3/2 {a' e cis}

      s8 gis'32 fis eis fis r8 c
        \tuplet 3/2 {e'16 g, b,} \tuplet 3/2 {d' g, b,} \tuplet 3/2 {b' g b,} \tuplet 3/2 {g' dis b}
      s8 fis'32 e dis e r8 bes \slashedGrace a8 
        \tuplet 3/2 {d'16 f, a,} \tuplet 3/2 {c' f, a,} \tuplet 3/2 {a' f a,} \tuplet 3/2 {f' cis a}
      s4 r8\sustainOn g8 s4.\ped s8\sustainOff
      s4\sustainOn s4\ped s4.\ped s8\sustainOff

      s4\sustainOn s4\ped s4\ped s8\ped s16 s\sustainOff
      s4\sustainOn s\ped s\ped s\ped
      s8.\ped s16\ped s8 s8\ped s4. s16 s16\sustainOff
      \repeat tremolo 4 {gis,32\sustainOn gis'} \repeat tremolo 4 {g,32\ped g'} s4\ped 
        \tuplet 3/2 {<fis fis'>16 ais' cis} <fis, e'>16^-\ped <fis fis,>^- 

      s4\ped r16^\>\ped <e gis>( <ais cis> <e e,>)\! \tuplet 3/2 {dis,(\ped b' dis^1 fis^4^\< b <dis dis,>)}
        \tuplet 3/2 {fisis,8^-\sustainOff gis^- ais^-\!}
      s4\sustainOn r16^\>\ped <e gis>( <ais cis> <e e,>)\! \tuplet 3/2 {dis,(\ped b' dis^1 fis^4^\< b <dis dis,>)}
        \tuplet 3/2 {fisis,8^-\sustainOff gis^- ais^-\!}
      s4\sustainOn r16^\>\ped <e gis>( <ais cis> <e e,>)\! \tuplet 3/2 {r16^\p dis,\ped b' dis^1^\markup{\italic dolce} fis^4 b }
        \tuplet 3/2 {dis16 fis, b^2 dis,^5 dis^1 dis,\sustainOff}
      %Page 8 (line following causes tuplet bracket warnings)
      \tuplet 3/2 {s16 s\sustainOn s4} \tuplet 3/2 {cis''16 fis, ais e_5 e_1 e,\sustainOff}
        \tuplet 3/2 {s16 s\sustainOn s4} \tuplet 3/2 {dis''16 fis, b dis, dis dis,\sustainOff}

      \tuplet 3/2 {s16 s\sustainOn s4} \tuplet 3/2 {e''16 fis, ais\sustainOff cis, a' e} s2
      \tuplet 3/2 {s16 s\sustainOn s4} \tuplet 3/2 {e'16 gis, cis e, cis_5 cis,_1\sustainOff} s2
      s1_\markup{\italic "Ped. simile"}
      s1

      s1
      s1
      s1
      \tuplet 3/2 {r16 fis e' fis ais cis} \tuplet 3/2 {e_1 cis ais cis_1 ais fis}
        \tuplet 3/2 {r16 fis, dis' fis b dis} \tuplet 3/2 {fis dis b dis bis fis}

      \tuplet 3/2 {r16 fis, cis' fis_1 ais_3 cis} \tuplet 3/2 {e cis ais fis_4 e_1 fis,}
        \tuplet 3/2 {r16 fis dis'_3 fis b dis_3} \tuplet 3/2 {fis_2 dis b_1 fis dis fis,}
      % Page 9
      \tuplet 3/2 {r16 fis cis' fis_1 ais_3 cis} \tuplet 3/2 {e cis ais fis_4 e_1 fis,}
        \tuplet 3/2 {r16 fis dis'_3 fis b dis_3} \tuplet 3/2 {fis_2 dis b_1 fis dis fis,~}
      fis8 <a' bis dis fis> <a bis dis g> <a bis dis gis>
      s8\sustainOn <ais cis e fis> <ais cis e fisis> <ais cis e gis>\sustainOff
        s8\sustainOn <ais cis e fis> <ais cis e fisis> <ais cis e gis>\sustainOff

      s8\sustainOn <ais cis eis>8\sustainOff 
        \tuplet 3/2 {<ais fis'>16\sustainOn <cis eis> <ais fisis'> <cis eis> <ais gis'>\sustainOff <cis eis>}
        \tuplet 3/2 {<ais gis'>16\sustainOn <cis eis> <ais eis'> <cis e> <ais fis'>\sustainOff <cis e>}
        \tuplet 3/2 {<ais fisis'>16\sustainOn <cis e> <ais gis'> <cis e> <ais ais'>\sustainOff <cis e>}
      s8 \tuplet 3/2 {e,,,8 b'16} e32 gis b e s8 s2
      r8 \tuplet 3/2 {b,8 fis'16} b32 dis fis b s8 s2
      s8 \tuplet 3/2 {e,,,8 b'16} e32 gis b e s8 s2
      r8 \tuplet 3/2 {b,8 fis'16} b32 dis fis b s8 s2
 
      %Page 10
      s16 s16\sustainOn s4 s8^\>\sustainOff <cis, e gis cis>8\sustainOn <b e gis b> <b e ais>8.\ped <e, gis'>16\!\ped
      s4^\markup{\italic "siempre raddolcendo"} s4\ped <e' gis cis>8 <e gis b> <b e gis> <e gis b>
      s2\ped <e b'>8 <gis b e> <e gis b> <b e gis>
      s4 <b g'>16_2_5 <e b'> <g e'> <b g'> <e b'>^2^1 <b, g'> <e b'> <g e'> s4
      s2. s8 e'16. r32
   }
  >>
>>

