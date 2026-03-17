\version "2.24.3"

\header
{
  title     = "Gormenghast 2077"
  subtitle  = "Sonata No 1 Op 2"
  composer  = "Composed by Shawn Garbett"
  arranger  = "Arranged by Shawn Garbett and Buffy Rhea"
  tagline   = ""
  midititle = "gormenghast_quartet.midi"
}

exposition_violin_i = \relative c''' 
{
  \tempo "Gemendo" 4 = 90
  \key cis \minor
  \clef treble
  \time 4/4

  % Opening Sentence 

  <<cis4 gis'4-._\markup{\italic pizz.}_\mp>> r2. \bar "!"
  c,4-. r2. \bar "!"
  cis4-. r4 c4-. r4 |

  <<cis4 gis'4-.>> r2. \bar "!"
  c,4-. r2. \bar "!"
  cis4-. r4 c4-. r4 |

  gis,1
  fis1
  e4 r dis r

  cis1~(
  cis1
  c)

  % Tihai lead to harmonic loosening

  r1
  r1
  r1

  a'8-> r8 r4 r b8->-. r8 \bar "!"
  r8 a8-> r8 r4 r b8->-. \bar "!"
  r4 gis8->( fis gis a cis4)-\fermata |
  
  % Period
  \repeat volta 2 {
  cis8._\ff cis8. cis8 cis4 r4 \bar "!"
  cis8. cis8. cis8 cis4 r4 \bar "!"
  dis8. dis8. dis8 dis4 r4 |
  
  r1
  r1
  b8_\markup{\italic freddo}_\mp fis' b8 dis fis \tuplet 3/2 {gis ais b} r8 |
  }
}

exposition_violin_ii = \relative c''' 
{
  \key cis \minor
  \clef treble
  \time 4/4

  % Opening Sentence

  e4-._\markup{\italic pizz.}_\mp r2. \bar "!"
  dis4-. r2. \bar "!"
  e4-. r dis-. r |

  e4-. r2. \bar "!"
  dis4-. r2. \bar "!"
  e4-. r dis-. r |

  dis,1
  cis1
  gis2 fis2  

  gis1
  a1
  gis1
 
  % Tihai lead to harmonic loosening

  r1 
  r1 
  r1

  a8-> r8 r4 r b8->-. r8 \bar "!"
  r8 a->( gis a b dis4 b8)->-. \bar "!"
  %r4 gis8-> r8 r4 cis4-\fermata |
  r4 gis8->( fis gis a cis4)-\fermata |

  % Period 

  \repeat volta 2 
  {
  gis8._\ff gis8. gis8 gis4 r4 \bar "!"
  gis8. gis8. gis8 gis4 r4 \bar "!"
  ais8. ais8. ais8 ais4 r4 |

  r1 
  fis8_\markup{\italic freddo}_\p cis' fis8 ais cis \tuplet 3/2 {dis e fis} r8 \bar "!"
  r1 
  } 
}

exposition_viola = \relative c'
{
  \key cis \minor
  \clef alto
  \time 4/4

  % Opening Sentence

  cis2-^(\>_\mp_\markup{\italic gemendo} gis)\! \bar "!"
  dis4(\> cis bis)\! r8 cis(\< \bar "!"
  dis8 cis dis e gis4) dis | 

  gis2(\!-^ e2) \bar "!"
  bis'4( ais gis) r8 ais( \bar "!"
  gis8 fis gis ais bis4) gis |

  gis8( fis gis a b4) gis \bar "!"
  fis8( e fis gis a4) fis \bar "!"
  <e gis>4( b'-.) <dis, fis>( a'-.) |

  cis,2 e4 gis \bar "!"
  g2  a4  cis8( b\bar "!"
  a8 gis4) r8 gis8( ais8 bis4  |  

  % Tihai lead to harmonic loosening

  cis2)-> r2
  r1
  r1

  a8(-> gis a b dis4 b8-.->) r8 \bar "!"
  r8 <a cis>4-> <cis e> <b dis> <gis b>8-.-> \bar "!"  
  %r4 <b e>4-> <a cis> <cis e>-\fermata
  r4 gis8->( fis gis a cis4)-\fermata |

  % Period

  \repeat volta 2 
  {
  e,16_\ff \xNotesOn fis fis \xNotesOff e \xNotesOn fis fis \xNotesOff e \xNotesOn fis \xNotesOff e4 r4 \bar "!"
  e16 \xNotesOn fis fis \xNotesOff e \xNotesOn fis fis \xNotesOff e \xNotesOn fis \xNotesOff e4 r4 \bar "!"
  fis16 \xNotesOn gis gis \xNotesOff fis \xNotesOn gis gis \xNotesOff fis \xNotesOn gis \xNotesOff fis4 r4 |

  cis8_\markup{\italic freddo}_\pp fis  cis'8 fis a \tuplet 3/2 {b cis fis} r8 \bar "!"
  r1
  r1
  }
}

exposition_cello = \relative c
{
  \key cis \minor
  \clef bass
  \time 4/4

  % Opening Sentence

  cis2-^_\mp r2 \bar "!"
  dis4-> r2. \bar "!"
  r2 gis2( |

  cis,2-^) r2 \bar "!"
  dis4-> r2. \bar "!"
  r2 gis2 |
  
  gis2. r4 \bar "!"
  fis2. r4 \bar "!"
  e4 r dis4 r |

  cis1( \bar "!"
  g1 \bar "!"
  c1) |
  
  % Tihai lead to harmonic loosening

  gis'2-^(_\markup{\italic gemendo} dis2) \bar "!"
  a4->( gis fis) r8 gis( \bar "!"
  ais8 gis ais bis dis4) gis, |

  <e' gis>4-> <fis a> <fis b> <e gis>8-. r8 \bar "!"
  r8 <e gis>4-> <fis a> <fis b> <e gis>8-. \bar "!"
  r4 <gis b>4-> <fis a> <fis ais>-\fermata  |

  % Period
  \repeat volta 2{

  b,16-^_\markup{\italic feroce}_\ff b b b-> b b b-> b b4-^ r4 \bar "!"
  b16-^ b b b-> b b b-> b b4-^ r4 \bar"!"
  cis16-^ cis cis cis-> cis cis cis-> cis cis4-^ r4 |
  
  r1 \bar "!"
  r1 \bar "!"
  r1 |

  }

  % Subordinate Theme

  % Additional Motif

  % Romantic Cadential build up 

  % Codetta

  % Romantc

}

theExposition =
{ \new StaffGroup <<

  \new Staff \with {instrumentName = "Violin I"} \exposition_violin_i
  \new Staff \with {instrumentName = "Violin II"} \exposition_violin_ii
  \new Staff \with {instrumentName = "Viola"}    \exposition_viola
  \new Staff \with {instrumentName = "Cello"}    \exposition_cello

  >>
}

\score
{
  \theExposition
  \layout {}
}
