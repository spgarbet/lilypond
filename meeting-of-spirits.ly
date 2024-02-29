\version "2.18.2"
\header {
  title    = "Meeting of the Spirits"
  composer = "Mahavishnu John McLaughlin"
  arranger = "Arr. Shawn Garbett"
}

upper = \relative c' {
  \tempo "F# Phrygian" 4 = 176
  \clef bass
  \key d \major
  \time 6/4

  % Prelude
  <f, gis cis e>1.\fermata |
  <fis a d f>1.\fermata   |
  <gis b e f>1. \fermata |
  <e g c dis>1. \fermata |
  \clef treble <b' dis fis>1. \fermata |
  <c f a>2. <d g b>~ |
  <d g b>1. \fermata |
  <g, b d>1. \fermata |
  <a c f>1. \fermata \bar "||" \break

  % Intro
  \clef bass r8 fis[ cis' g e'] r fis,[ cis' g e'] r4 |
  r8 fis,[ cis' g e'] r fis,[ cis' g e'] r4 |
  r8 fis,[ cis' g e'] r fis,[ cis' g e'] r4 |
  r8 fis,[ cis' g e'] r fis,[ cis' g e'] r4 |
  r8 fis,[ cis' g e'] r fis,[ cis' g e'] r4 |
  r8 fis,[ cis' g e'] r fis,[ cis' g e'] r4 |

  % Melody
  \clef treble \ottava #1 cis''8 e e cis e4 cis8 e4 cis8 e4  |
  \clef bass \ottava 0 r8 fis,,,[ cis' g e'] r fis,[ cis' g e'] r4 |
  \clef treble \ottava #1 cis''8 e e cis e4 cis8 e4 cis8 e4~ |
  e1.  | \break
  
  % First Solo
  \tuplet 3/2 { e8[ d cis]} \tuplet 3/2 { d[ cis b] }
    \tuplet 3/2 {cis[ b a] } \tuplet 3/2 {b[ a g]}
    \tuplet 3/2 {a[ g fis8]~} fis4~  |

  fis1. |

  \tuplet 3/2 { e'8[ d cis]} \tuplet 3/2 { d[ cis b] }
    \tuplet 3/2 {cis[ b a] } \tuplet 3/2 {b[ cis d]}
    \tuplet 3/2 {cis[ d e]~} e4~  |

  e1. |

  \tuplet 3/2 { e8[ d cis]} \tuplet 3/2 {b[ ais g]} fis4 
    \tuplet 3/2 { 8[ g ais]} \tuplet 3/2 {b[ cis d]} e4
 
  fis,8 e'4 fis,8 e'4 r4 ais,2

  \tuplet 3/2 { e'8[ d cis]} \tuplet 3/2 { d[ cis b] }
    \tuplet 3/2 {cis[ b ais] } \tuplet 3/2 {b[ ais g]}
    \tuplet 3/2 {ais[ g fis8]~} fis4  |
  
  \ottava 0 b,1.

  % Melody
  \repeat volta 4 {\ottava #1 cis'8 e e cis e4 cis8 e4 cis8 e4~  | }
  \alternative { { e1. | } { e2. \ottava 0 b,8[ a g cis]~ cis b| } }
  a d~ d[ cis b e] d[ cis fis e] d g   
  fis e \ottava #1 \tuplet 3/2 {a[ g fis]} \tuplet 3/2 {b[ a g]}
    \tuplet 3/2 {cis[ b a]} \tuplet 3/2 {d[ cis b]} \tuplet 3/2 {e[ d cis]}

  % Interlude
  fis4 e d a2~ a8 \fermata g |
  fis4 d'8 b~ b2. \fermata  fis'8 d |
  e4 a4~ a1 \fermata |

  % Lead in 
  \repeat volta 2 {
    \ottava #1 cis,8 e e cis e4 cis8 e4 cis8 e4~  | 
    e1. | 
  }

  % Guitar Solo 
  \repeat volta 2 {
  \ottava 0
  fis,8 e cis a' r fis4 e'16 cis \tuplet 3/2 {b8[ a fis]} \tuplet 3/2 {e[ cis b]~}
  b8[ a g cis]~ cis[ b a d]~ d cis b e
  d[ cis fis e] d[ g fis e] \ottava #1 \tuplet 3/2 {a[ g fis]} \tuplet 3/2 {b[ a g]}
  \tuplet 3/2 {cis[ b a]} \tuplet 3/2 {d[ cis b]} \tuplet 3/2 {e[ d cis]}
    fis[ e cis a'] r  fis~
  fis \ottava 0 e16 cis \tuplet 3/2 {b8[ a fis]} \tuplet 3/2 {e[ cis b]~}
    b8[ a g cis]~  cis b
  a d~ d[ cis b e] d[ cis fis e] d g
  fis e \ottava #1 \tuplet 3/2 {a[ g fis]} \tuplet 3/2 {b[ a g]}
    \tuplet 3/2 {cis8[ b a]} \tuplet 3/2 {d[ cis b]} \tuplet 3/2 {e[ d cis]}
  }
  
  % Fadeout
  % fis1.~ | fis1. | r1. \bar "||"

  % Tihai
  \ottava #1 cis8 e e cis e4 cis8 e4 cis8 e4~ |
  e8 r4 <g,, b d>\sfz r cis'8 e e cis e4 |
  cis8 e4 cis8 e4. r4 <a,, c f> \sfz r4 |
  cis'8 e e cis e4 cis8 e4 cis8 |
  fis1. |

}

lower = \relative c {
  \clef bass
  \key d \major
  \time 6/4

  % Prelude
  <cis, cis'>1.\fermata |
  <cis cis'>1.\fermata |
  <cis cis'>1.\fermata |
  <b b'>1.\fermata |
  <b g' c>1.\fermata |
  <e g>2. <f a>~ |
  <f a>1.    \fermata |
  a1.    \fermata |
  g1.    \fermata \bar "||" \break

  % Intro
  fis4.~ fis4 fis4.~ fis4 fis8 e8 |
  fis4.~ fis4 fis4.~ fis4 fis8 e8 |
  fis4.~ fis4 fis8 fis4~ fis4 fis8 e8 |
  fis4.~ fis4 fis8 fis4~ fis4 fis8 e8 |
  fis8[ e d g]~ g[ fis e a]~ a g fis g |
  fis8[ e d g]~ g[ fis e a]~ a g fis g |

  % Melody  
  fis8[ e d g]~ g[ fis e a]~ a g fis g |
  fis8[ e d g]~ g[ fis e a]~ a g fis g |
  fis8[ e d g]~ g[ fis e a]~ a g fis g |
  fis8[ e d g]~ g[ fis e a]~ a g fis g | \break

  % First Solo
  fis8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ e d g]~ g[ fis e a]~ a g fis g |
  fis8[ e d g]~ g[ fis e a]~ a g fis g |
  fis8[ e d g]~ g[ fis e a]~ a g fis g |
  fis8[ e d g]~ g[ fis e a]~ a g fis g |


  % Melody
  \repeat volta 4 {fis8[ e d g]~ g[ fis e a]~ a g fis g | | }
  \alternative { { fis8[ e d g]~ g[ fis e a]~ a g fis g | | } 
                 { fis8[ e d g]~ g[ fis e a]~ a g fis g | | }  }

  fis8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |

  % Interlude
  <c,, c' a' b d e fis>1. \fermata \arpeggio |
  <b b' a' b d e> \fermata \arpeggio |
  <c c' a' b d e fis>1. \fermata  \arpeggio |

  % Lead In
  \repeat volta 2 {
    fis8[ e d g]~ g[ fis e a]~ a g fis g |
    fis8[ e d g]~ g[ fis e a]~ a g fis g |
  }
  

  % Guitar Solo
  \repeat volta 2 {
  fis8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  }

  % Fade out
  % fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  % fis,,8[ fis' cis' g e'] fis,,[ fis' cis' g e'] r4 |
  % fis,,1. \fermata \bar "||" 

  % Tihai
  fis,,8[ e d g]~ g[ fis e a]~ a g fis g |
  fis8 r4 a4 r4 fis8[ e d g]~ g[ |
  fis e a]~ a[ g fis g] fis r4 g |
  r4 fis8[ e d g]~ g[ fis e a]~ a g |
  fis1. |
   
}

\score {
  \new PianoStaff <<
    \chords {
      \set noChordSymbol = ""
      cis1.:5.9+ 
      cis1.:m13
      cis1.:7.9+
      b1.:5.9-.13
      b1.:6-.9-
      f2.:9/e g2.:9/f~ 
      r1.
      g:/a
      f:/g 
    }
    \new Staff = "upper" \upper 
    \new Staff = "lower" \lower 
  >>
  \layout {}
}
