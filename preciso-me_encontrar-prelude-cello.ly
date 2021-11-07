\version "2.20.0"

\header {
  title   = "Preciso Me Encontrar"
  subtitle = "I Must Find Myself (Prelude)"
  composer = "Cartola (Angenor de Oliveira) 1976"
  arranger = "Arrangement Shawn Garbett, Buffy Rhea" 
  tagline  = ""
}

\layout{
  \context { \ChordNames
    \override ChordName #'font-size = #0.5
  }
  #(layout-set-staff-size 16)  
}


cello = \relative c {
  \clef "bass"
  \key f \major
    
  r2
  r2
  r2
  r4 d16 f8 a16
  d,8. f8 a d,16~ 
  d4 d16 f8 a16~
  a16 d,8 d16 f a8 d,16~
  d4 r8 a
  g8. e8 g f16 
  d4 r4
  r2 
  r4 d16 f8 a16
  d,8 f a8 d,~
  d8. r16 d f8 a16
  d,8 f a d,~
  d8. r8. a'8
  g8. e8 g f16
  d4 r
  r2
  r4 fis16 a8 d16 %r4 g16 bes8 d16
  fis,8 a d g, %g,8 bes d g,
  r2
  bes16 d bes g' d bes g e~
  e4 r16 e g c
  e8.-- g8 c f,16~
  f4\fermata  d,16 f a d
  c8^"rit." bes16 a8 g d16~
  d2 
  \bar "||"
}

upper =  \relative c' {
  \tempo "freely" 4 = 80
  \key f \major
  \time 2/4

  r16\mf( a' d f r a, d f 
  r16 e, g d' e d g, e   
  r16 e  g cis f cis e cis)
  r16 a d f d <f a> d a 
  r16 a d f a f d r16
  r16 e, g e bes' e, d' e, 
  r16 e bes' d bes e bes r
  r16 f b d f d b d
  r16 e, g bes cis g e r16
  r16 a <d f> a r16 a <d f> a
  r16 <a d f>-. r <g bes d f>-. r <g bes cis e>-. r <g a cis e>-.
  r16 a d f a d, f a,
  r16 a d c a d f a,
  r16 e g bes d g, f' g,
  r16 e bes' g <bes d> e, g e
  r16\p f b f <b d> f b f
  r16 e g cis a g a cis
  r16 a d a f' a, d a
  r2
  r16\mf a c ees ges a ges d
  r16 a c f c a c f
  r16\> <des e g>-. r <cis e g>-. r <bes e g >-. r\! <bes e fis>-.\p
  r2      %r4 r16 <bes c e>-. r <bes c>-.
  r16\mf e, bes' e, e' e, bes' e,
  g e bes' e bes e, bes' e
  <f, a c f>2\arpeggio\fermata
  <e g c>8-> <e g c>8-> r16 <cis e g>16-. r8
  r2
}

lower = \relative c {
  \clef "bass"
  \key f \major

  d'4 c4
  bes2
  a2
  d,8. d16~ d4 
  c8. c8. des32\< c ces bes->~\!
  bes2
  g8. g8. e32\< f fis g\!
  aes4 r16 f8.
  a8. a16~ a4 
  d4 c4
  b8->  bes-> a-> cis-> 
  d8.-> d16~ d4
  c8. c16~ c4
  bes8. bes16~ bes4
  g8. g16~ g4
  aes2
  a4 cis4
  d8. d16~ d4
  d8-. \breathe a16\< bes b c cis d\!
  ees8. ees16~ ees4 
  d4 c4
  bes8-> a-> g-> ges->
  r2                     % r4 g8 g8
  c4 c4
  c4 c4
  <f, c'>2\arpeggio
  bes8->^"rit." bes-> a a
  d2-^
} 

\score {
  <<
    \context Staff = "Cello" <<
      \set Staff.instrumentName = "Cello"
      \set Staff.shortInstrumentName = "Cl."
      \chords {
        d2:m 
        e2:m5-7/bes
        a2:7
        d2:m
        d2:m
        e1:m5-7/bes
        aes2:dim
        a2:7
        d2:m
        d8:m e8:m5-7/bes a4:7 
        d2:m
        d2:m
        e1:m5-7/bes
        aes2:dim
        a2:7
        d1:m
        ees2:dim
        d2:m7
        bes8:dim a8:7 e8:m5-7/bes e8:m5-9/bes
        e4:m5-7/bes c:7/g
        c1:7
        f2
        bes4:6.5- a4:7
        d2:m
      }

      \cello
    >>
    \context PianoStaff = "prima" <<
      \set PianoStaff.connectArpeggios = ##t
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.shortInstrumentName = "Pn."
      \context Staff = "uppera" \upper
      \context Staff = "lowera" \lower
    >>
  >>
  \layout { }
}



