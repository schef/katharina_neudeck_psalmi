\version "2.24.1"
\include "deutsch.ly"
jazzChords = { \semiGermanChords }
aFourR = {}
\include "../config/include.ily"
markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})

\layout {
  indent = 0
}

\header {
  titlex = "Pjevajte Jahvi"
  title = "GOSPODE NAŠ"
  %poet = "Psalam 8"
  style = "Psalam 8"
  composer = "Katharina Neudeck"
  %meter = "8"
  broj = "8"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \key g \major
  \time 6/8
  \tempo 4 = 115
  \markMoj "Refren" g'4. g4 g8 |
  g4. r8 g8 g8 |
  a4. a4 a8 |
  g8. (a16 h8 a4. )|
  h4. a4. |
  g4. g4 fis8 |
  e2. |
  d2. |
  g4. g4 g8 |
  g2. |
  a4. a4 a8 |
  g8. (a16 h8 )a4. |
  h4 h8 g4 fis8 |
  e4. g4. |
  a4. (fis4. )|
  g2. |
  r4. h,8 c8 d8 \bar "||" |
  \markMoj "Kitica" e4. e4. |
  r8 a,8 a8 a8 h8 c8 |
  d4. d4. |
  r4. g,8 a8 h8 |
  c4. c4. |
  r8 c8 c8 c4 h8 |
  h2. |
  r4. h8 c8 d8 |
  e4 e8 e4. |
  r4. fis8 fis8 fis8 |
  fis4. (a4 fis8 )|
  g4. g8 (a8 )h8 |
  h4. e,4. |
  r4. h'4 h8 |
  h8. (c16 h8 )a4. |
  r2. \bar ":|." |
}

harmonyOne = \chordmode  {
  g2. |
  c2. |
  a2.:m |
  g4./d d4. |
  g2. |
  e2.:m |
  c2. |
  d2. |
  g2. |
  c2. |
  a2.:m |
  g4./d d4. |
  g4. g4./h |
  c2. |
  d2. |
  g2. |
  s2. |
  c2. |
  d2./a |
  h2.:m7 |
  e2.:m |
  c2. |
  d8 s4 s4. |
  g2. |
  s4. g4./h |
  c2. |
  d2.:7/c |
  h2. |
  e2.:m |
  c2. |
  a2.:m |
  d2. |
  s2. |
  \bar "|."
}

alignerOneZero = \relative {
  c4. c4 c8 |
  c4. r8 c8 c8 |
  c4. c4 c8 |
  c8.( c16 c8 c4.) |
  c4. c4. |
  c4. c4 c8 |
  c2. |
  c2. |
  c4. c4 c8 |
  c2. |
  c4. c4 c8 |
  c8. r16 r8 c4. |
  c4 c8 c4 c8 |
  c4. c4. |
  c4. r4. |
  c2. |
  r4. c8 c8 c8 |
  c4. c4. |
  r8 c8 c8 c8 c8 c8 |
  c4. c4. |
  r4. c8 c8 c8 |
  c4. c4. |
  r8 c8 c8 c4 c8 |
  c2. |
  r4. c8 c8 c8 |
  c4 c8 c4. |
  r4. c8 c8 c8 |
  c4. r4 r8 |
  c4. c8 r8 c8 |
  c4. c4. |
  r4. c4 c8 |
  c8. r16 r8 c4. |
  r2. |
}

lyricOneZero = \lyricmode {
  Go -- spo -- de %|
  naš, ve -- li -- %|
  čan -- stven si %|
  ti, __ %|
  di -- vno %|
  je i -- me %|
  tvo -- %|
  je. %|
  Sla -- vi -- mo %|
  te, %|
  pje -- va -- mo %|
  te -- bi, %|
  tvo -- ja lju -- bav %|
  ne -- ma %|
  kra -- %|
  ja. %|
  \set stanza = "1."
  Gle -- dam ne -- %|
  be -- sa, %|
  dje -- la pr -- sti -- ju %|
  tvo -- jih, %|
  mje -- sec i %|
  zvije -- zde %|
  što ih u -- čvr -- %|
  sti. %|
  Ja -- hve, naš %|
  Go -- spo -- de, %|
  di -- vno je %|
  i -- %|
  me, i -- me %|
  tvo -- je, %|
  po svoj %|
  ze -- mlji. %|
  %|
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff {
        <<
        \new Voice { \staffOne }
        \new NullVoice = "alignerOneZero" { \alignerOneZero }
        \new Lyrics \lyricsto "alignerOneZero" { \lyricOneZero }
        >>
    }
    >>
}

\markup {
    %\vspace #1
    \column { 
    \hspace #3.4
  }
  \column {
    \line { \bold 2. }
    \vspace #4
    \line { \bold 3. }
  }
  \hspace #1
  \column {
    \line { Što li je čovjek da ga se spominješ, }
    \line { sin čovječji, te ga pohodiš? }
    \line { Ti ga učini malo manjim od Boga, }
    \line { slavom i sjajem njega okruni. }
    \vspace #1
    \line { Vlast mu dade nad djelima svojim, }
    \line { njemu pod noge sve podloži. }
    \line { Jahve, naš Gospode, divno je ime, }
    \line { ime tvoje, po svoj zemlji. }
  }
}
