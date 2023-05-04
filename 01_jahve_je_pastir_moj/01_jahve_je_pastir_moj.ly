\version "2.19.84"
\include "deutsch.ly"

\layout {
  indent = 0
}

\header {
  title = "Jahve je pastir moj"
  composer = "Katharina Neudeck"
  poet = "Psalam 23"
}

staffOne = \relative c' {
  \clef treble
  \time 4/4
  
  \mark \markup { \box \bold A }
  e8 c8 r8 e8 f8 e16 d16 \( d4 \) |
  d8 h8 r8 d8 e8 f16 f16 \( f16 \) e16 d16 c16 |
  e8 c8 r8 e8 f8 g16 a16 \( a8 \) a16 a16 |
  g8 g16 g16 f16 e16 d8 c4 r16 c16 c16 c16 \bar "||" |
  
  \mark \markup { \box \bold B }
  a'16 a16 a16 a16 a16 a16 a16 g16 \( g8 \) e8 r16 e16 e16 e16 |
  f8 e16 e16 d16 d16 c16 c16 c8. h16 r8 r16 c16 |
  a'8 a16 a16 a16 a16 a16 g16 \( g8 \) e8 r8 r16 e16 |
  f8 e16 e16 d8 c16 c16 e8. d16 \( d4 \) |
  r1 |
}

lyricOneZero = \lyricmode {
  Ja -- hve je pa -- stir  moj, __ 
  _ Ja -- hve je pa -- stir  moj __ _ _ _ _ Ja -- hve je pa -- stir  moj, __ 
  _ ni u ćem ja ne o -- sku -- dije -- vam. 
  _ _ Na po -- lja -- na -- ma  ze -- _ le -- nim __ _ _ "" on mi da -- je  _ od -- _ mo -- _ ra. __ 
  _ Na vrut -- ke  me ti -- ha -- ne  vo -- _ di i krije -- pi  _ du -- šu  _ mo -- ju. __ 
  _ 
}

lyricOneOne = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ Da mi je do -- li -- nom __ _ smr -- _ ti  pro -- _ ći, 
  zla se ne bo -- jim,  
  _ jer _ si _ sa -- mnom. 
  Tvoj štap i __ _ pa -- li -- ca  tvo -- _ ja _ u -- tje -- _ ha  su _ me -- ni. __ 
  _ 
}

lyricOneTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ Tr -- pe -- zu  pre -- dam -- nom __ _ pro -- _ sti -- reš, __ 
  _ _ "" _ na o -- či  _ duš -- ma -- ni -- ma  mo -- jim. 
  _ U -- ljem  mi gla -- _ vu ma -- _ žeš _ ča -- ša  se mo -- ja  pre -- lje -- va. __ 
  _ 
}

lyricOneThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ Do -- bro -- _ ta  i mi -- lost  me pra -- _ te, 
  _ _ sve da -- ne  ži -- vo -- _ ta __ _ mo -- ga. 
  U do -- mu  ću tvo -- _ me  bi -- _ ti kroz da -- _ _ ne -- _ _ mno -- ge. __ 
  _ 
}

harme = \chordmode  {
}

\score {
    <<
    \new ChordNames \harme
    \new Staff {
        \new Voice = "lead" { \staffOne }
    }
    \new Lyrics \lyricsto "lead" { \lyricOneZero }
    \new Lyrics \lyricsto "lead" { \lyricOneOne }
    \new Lyrics \lyricsto "lead" { \lyricOneTwo }
    \new Lyrics \lyricsto "lead" { \lyricOneThree }
    >>
}
