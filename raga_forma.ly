\version "2.20.0"

\header {
  title   = "Raga Forma"
  subtitle = "From Etude in Melakarta 10, NAtaka-priya"
  composer = "Radhika Iyer"
  arranger = "Arranged by Shawn Garbett, Andrew Wampler" 
  tagline  = ""
}

\layout{
  \context { \ChordNames
    \override ChordName #'font-size = #0.5
  }
  #(layout-set-staff-size 16)  
}


guitar = \relative c' {
  \tempo "Largo" 4 = 40-60
  \key c \major
 
  \cadenzaOn
  \time 4/4
  r4^\markup { \italic Alap \italic Timeless } c1^\fermata  \bar "|"
  r4 c4 des1^\fermata \bar "|"
  r4 c8 des!8 ees1^\fermata \bar "|"     
  r8 c8 des!8 ees!8 f1->^\fermata \bar "|"     
  r4 f4 ~ f1^\fermata  \bar "|"
  r4 f4 g1^\fermata \bar "|"
  r4 f8 g8 \grace a16 bes1^\fermata \bar "|"
  r8 f8 g8 bes!8 c1^\fermata \bar "|"
  \cadenzaOff
  \bar "||"  \break

  \tempo "Allegro - Moderato" 4 = 140-160
  r4^\markup {X \italic {Rhythm in Teental} } c4. f4 g8
  r4 c,4. f4 g8
  c,,4^\markup {o} c'4. f4 g8
  r1

  r4^\markup {X} c,4. f4 g8
  r4 c,4. f4 g8
  c,,4^\markup {o} c'4. f4 g8
  r4 bes,8 c4 f8 g4

  % Chalan
  des'4.^\markup {X \italic Chalan \fontsize #-2 {(pulse doubles)}}( c4 f, g8
  c2) r8 f,( des' c
  bes c bes g~ g f~ f g~ 
  g4) r8 g8~( g f c' bes

  g4.)^\markup{o} f8~( f c~ c des~ 
  des4) ees8( des~ des  des ees f
  g4.) ees8~( ees des~ des c~
  c4) r8 \improvisationOn c4.^\markup{Bb-} r4

  % 1st variation
  c4.^\markup{\column{Fsus4 "X 1st variation"}} c r4
  c4. c r4
  c4. c r4
  c4.^\markup{Bb-} r8 r2

  r1^\markup{o}
  r4. c4.^\markup{Bb-} r4
  c4.^\markup{Fsus4} c4. r4
  c4.^\markup{C-6} c4. r4
  \improvisationOff

  % 2nd variation
  <f,, c' f a c f>4.\arpeggio^\markup{X 2nd variation} f'4 f'8 g, g'
  f,,4 c'8 f~ f c f a
  f,4 c'8 f~ f c g' f
  f,4 c'8 f~ f c f a

  f4^\markup{o} c8 f~ f c bes' a
  bes,4 f'8 bes~ bes f bes des    
  c,4 g'8 c~ c a c ees
  f,,4 c'8 f~ f c ees g 

  % Tihai
  <f, c' f a c f>4.\arpeggio^\markup {X \italic Tihai}( c'''4 f, g8
  c2) r8 f,( des' c
  bes c bes g~ g f~ f g~ 
  g4) r8 g8~( g f c' a
  <f,, c' f a c f>4\arpeggio)

  r4 \improvisationOn c''4^\markup{G-b5}-^ \improvisationOff r4

  <f,, c' f a c f>4.\arpeggio(
  c'''4 f, g8
  c2) r8 f,( des' c
  bes c bes g~ g f~ f g~ 
  g4) r8 g8~( g f c' a
  <f,, c' f a c f>4\arpeggio)

  r4  \improvisationOn c''4^\markup{C-7}-^ \improvisationOff r4

  <f,, c' f a c f>4.\arpeggio(
  c'''4 f, g8
  c2) r8 f,( des' c
  bes c bes g~ g f~ f g~ 
  g4) r8 g8~( g f c' a
  %<f,, c' f a c f>4\arpeggio)

 
  % Outro
  r4^\markup{X Outro} f,2 a4~
  a4 f'2~ f8 a8~
  a2 bes2

  <f,, c' f a c f>1^\markup{F/C}\fermata
}

upper =  \relative c' {
  \key c \major

  % Alap
  r1 r r r r r r r r r r r2 r4
  \bar "||" \break

  % Rhythm
  <c f>4. <f g> r4
  <c f>4. <f g> r4
  r1
  <des f>4. <des f> r4

  <c f>4. <f g> r4
  <c f>4. <f g> r4
  r1
  <des f>4. <des f> r4

  % Chalan
  <c f>4. <f g> r4
  <c f>4. <f g> r4
  <c f>4. <f g> r4
  <f bes>4. <g bes>4. r8 g

  r4 c,8 r4 f8 r8 des
  r4 des8 r4 f8 r ees
  <g bes des>4. <g bes des>4. r4
  <ees g>4. r4 f8 r g

  % 1st variation
  r4 c,8 r4 f8 r8 g
  r4 c,8 r4 f8 r8 g
  r4 c,8 r4 f8 r8 g
  r4 bes8 c~ c f g4

  r4 c,8 r4 f8 r8 g
  r8 des des r ees, ees r des
  r4 c8 r4 f8 r8 g
  c4 bes8 c~ c f g4

  % 2nd variation
  <c, f a>4.\arpeggio c4 f g8 
  c2 r8 a, bes a 
  g a g f~ f4 des8 ees
  f4. a8~ a g bes a

  g4 c,8 a'~ a f4 ees'8
  des2 r8 des ees f
  g4. ees8~ ees des4 c8~
  c4 f,8 a~ a c4 bes8

  % Tihai
  <c, f a>4\arpeggio <c c'>4. <f f'>4 <g g'>8
  r4 <c, c'>4. <f f'>4 <g g'>8
  r4 <c, c'>4. <f f'>4 <g g'>8
  r4 <des des'>8 r4 <ees ees'>8 r8 <g g'>8
  <c f a>4\arpeggio

  r4 <g bes des>-^ r

  <c, f a>4\arpeggio <c c'>4. <f f'>4 <g g'>8
  r4 <c, c'>4. <f f'>4 <g g'>8
  r4 <c, c'>4. <f f'>4 <g g'>8
  r4 <des des'>8 r4 <ees ees'>8 r8 <g g'>8
  <c f a>4\arpeggio

  r4 <g bes ees>-^ r

  <c, f a>4\arpeggio <c c'>4. <f f'>4 <g g'>8
  r4 <c, c'>4. <f f'>4 <g g'>8
  r4 <c, c'>4. <f f'>4 <g g'>8
  r4 <des des'>8 r4 <ees ees'>8 r8 <g g'>8


  % Outro
  r1
  r2 a2
  c4~ c4 r8 ees8
  <c f a>1\fermata
}

lower = \relative c {
  \clef "bass"
  \key c \major

  % Alap

  r1 r r r r r r r r r r r2 r4
  \bar "||" \break

  % Rhythm

  <c g'>4. <f c'> r4
  <c g'>4. <f c'> r4
  r1
  bes4. bes r4

  <c, g'>4. <f c'> r4
  <c g'>4. <f c'> r4
  r1
  bes4. <bes ees,> r4

  % Chalan

  <c, g'>4. <f c'> r4
  <c g'>4. <f c'> r4
  <c g'>4. <f c'> r4
  <bes, ees>4. <ees g>4. g4

  c,4. f4. ees4
  des4. ees4. des4
  ees4. ees4. r4
  <c bes'>4. f4. g4

  % 1st variation

  c,4. f4. g4
  c,4. f4. g4
  c,4. f4. g4
  des4. ees4. r4

  c'4. f4. g4
  des4. ees, des4
  c4. f4. g4
  c,4. f4. g4

  % 2nd variation
  c,4 g'8 f~ f c bes' a 
  <c, f>4. <f g>4. r4
  <c f>4. <f g>4. r4
  <c f>4. <f a>4. r4

  r1 
  r4. <bes, ees>4. r4
  <c f>4. <f a>4. r4
  <c f>4. <ees bes'>4. r4

  % Tihaai
  <c f a>4.\arpeggio f4. g4
  c,4. f4. g4
  c,4. f4. g4
  c,4. f4. g4
  <c f a>4\arpeggio

  r4  <g, f'>4-^ r4 
  
  <c f a>4.\arpeggio f4. g4
  c,4. f4. g4
  c,4. f4. g4
  c,4. f4. g4
  <c f a>4\arpeggio
  
  r4  <c, g'>4-^ r4 

  <c f a>4.\arpeggio f4. g4
  c,4. f4. g4
  c,4. f4. g4
  c,4. f4. g4
  r4

  
  % Outro
  r4 r8 a4.
  r8 c4.~ c2~
  c1
  <c f a>1\fermata
} 

bass = \relative c {
  \key c \major
  \clef "bass"
    
  c4 ~ c1^\fermata 
  c2 ~ c1^\fermata 
  c2 ~ c1^\fermata 
  c2 ~ c1^\fermata 
  c2  c'1^\fermata 
  f,2 c1^\fermata 
  c2 ~ c1^\fermata 
  c2 c'1^\fermata 
  \bar "||" \break
 
  c,4. f4. g4
  c,4. f4. g4
  r4.  f4. g4
  des8 des' des ees, ees' ees des, des'

  c,4. f4. g4
  c,4. f4. g4
  r4.  f4. g4
  des8 des' des ees, ees' ees des, des'

  % Chalan
  c,4 c'8 f,4 f'8 g,8 g' 
  c,,4 c'8 f,4 f'8 g,8 g' 
  c,,4 c'8 f,4 f'8 g,8 g' 
  des,8 des' des ees, r2

  r1
  r2 ees'8 ees des, des'
  des,8 des' des ees, ees' ees des, des'
  c,4 bes8 c ~ c f g4

  % 1st Variation
  des'4.( c4 f, g8
  c2) r8 f, des' c
  bes8 c bes g~ g f~ f g~
  g4 r8 g8~ g f c' bes

  g4. f8~ f c~ c des~
  des4 ees8 des8~ des des ees f
  g4. ees8~ ees des~ des c~
  c4 bes8 a~ a ees a ees 

  % 2nd Variation
  c'4. f4. r4
  c4. f4. r4
  c4. f4. r4
  c4. f4. r4
  
  r1 % c4. f4. r4
  r4. ees4. r4
  c4. f4. r4
  f,4. ees'4. r4

  % Tihaai
  c4. f r4
  c4. f r4
  c4. f r4
  bes4. ees,4. r4
  c'4
 
  r4 g4-^ r4

  c,4. f r4
  c4. f r4
  c4. f r4
  bes4. ees,4. r4
  c'4
  
  r4 c4-^ r4 

  c,4. f r4
  c4. f r4
  c4. f r4
  bes4. ees,4. r4

  % Outro
  c,4. f8~ f2
  c'2 f2~
  f8 c'2 bes8~ bes4 
  c,1\fermata
}

\score {
  \layout {
    \context {
       \Staff \RemoveAllEmptyStaves
    }
  }
  <<
    \context Staff = "Guitar" <<
      \set Staff.instrumentName = "Guitar"
      \set Staff.shortInstrumentName = "Gt."
      \guitar
    >>
    \context Staff = "Bass" <<
      \set Staff.instrumentName = "Bass"
      \set Staff.shortInstrumentName = "Bs."
      \bass
    >> 
    \context PianoStaff = "prima" <<
      \set PianoStaff.connectArpeggios = ##t
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.shortInstrumentName = "Pn."
      \context Staff = "uppera" << 
        \upper
      >>
      \context Staff = "lowera" <<
        \lower
      >>
    >>
  >>
}



