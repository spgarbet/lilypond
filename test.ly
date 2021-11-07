A = \relative c'' {
  \key c \major
  a1 a a a a a a a a a a a a a a a a a a a \bar "" \break a a a a  
}

B = \relative c'' {
  \key c \major
  b1 b b b b b b b b b b b b b b b b b b b \bar "" \break b b b b 
}

C = \relative c'' {
  \key c \major
  r1 r r r r r r r r r r r r r r r r r r r \bar "" \break r r r c
}

\score
{
  \layout
  {
    \context { \Staff \RemoveAllEmptyStaves }
  }
  <<
    \time 4/4
   
    \context Staff = "A" <<   
      \set Staff.instrumentName = "A"
      \A
    >>

    \context Staff = "B" <<
      \set Staff.instrumentName = "B"
      \B
    >> 

    \context Staff = "C" <<
      \set Staff.instrumentName = "C"
      \C
    >>
  >>
}
