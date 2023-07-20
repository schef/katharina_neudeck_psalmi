\version "2.24.1"
\include "deutsch.ly"
jazzChords = { \semiGermanChords }
aFourL = {}
%\include "../config/include.ily"
markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})

\layout {
  indent = 0
}

\header {
  titlex = "Pjevajte Jahvi"
  title = "DOĐITE K MENI"
  %poet = "Matej 11,28-30"
  style = "Matej 11,28-30"
  composer = "Katharina Neudeck"
  %meter = "7"
  broj = "7"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
  %page-breaking = #ly:one-page-breaking
  %last-bottom-spacing.minimum-distance = #8
}

staffOne = \relative c' {
  \key b \major
  \time 4/4
  \tempo 4 = 127
  \markMoj "Kitica" b'8 g8 a8 b8 ~b8 g4 b8 ~|
  b8 g8 a8 b8 ~b8 g8 a8 b8 ~|
  b8 g8 g8 g8 (~g8 a8 )g4 |
  fis2 r2 |
  b8 g8 a8 b8 ~b8 g4 b8 ~|
  b8 g8 a8 b8 ~b8 g8 a8 b8 ~|
  b8 g8 g8 g8 (~g8 a8 )g4 |
  fis2 r2 |
  r2 d8 d8 d8 d8 \bar "||" |
  \key g \major
  \markMoj "Refren" h'2 d,4. (e8 )|
  e2. ~e8 e8 |
  a2 fis2 |
  d2 r2 |
  e4 fis8 g8 ~g2 |
  e4 h'2 (~h8 a8 )|
  a1 ~|
  a4 r4 d,8 d8 d8 d8 |
  h'2 d,4. (e8 )|
  e2. ~e8 e8 |
  a2 fis2 |
  d2. r4 |
  e4 fis8 g8 ~g2 |
  g4 fis2. |
  g1 ~|
  g2 r2 |
}

harmonyOne = \chordmode  {
  g1:m |
  g1:m7/f |
  es1 |
  d1 |
  g1:m |
  g1:m7/f |
  es1 |
  d1 |
  s1 |
  g1 |
  c1 |
  d1 |
  h1:m7 |
  c1 |
  a1:m7 |
  d1:sus4 |
  d1 |
  g1 |
  c1 |
  d1 |
  h1:m7 |
  c1 |
  d1 |
  g1 |
  s1 |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 c8 c8 r8 c4 c8( |
  c8) c8 c8 c8( c8) c8 c8 c8( |
  c8) c8 c8 c8 r8 r8 c4 |
  c2 r2 |
  c8 c8 c8 c8 r8 c4 c8( |
  c8) c8 c8 c8( c8) c8 c8 c8( |
  c8) c8 c8 c8 r8 r8 c4 |
  c2 r2 |
  r2 c8 c8 c8 c8 |
  c2 c4. r8 |
  c2.( c8) c8 |
  c2 c2 |
  c2 r2 |
  c4 c8 c8( c2) |
  c4 c2( c8 c8) |
  c1( |
  c4) r4 c8 c8 c8 c8 |
  c2 c4. r8 |
  c2.( c8) c8 |
  c2 c2 |
  c2. r4 |
  c4 c8 c8( c2) |
  c4 c2. |
  c1( |
  c2) r2 |
}

lyricOneZero = \lyricmode {
  Do -- đi -- te k me -- ni svi __ %|
  ko -- ji ste __ u -- mor -- ni, __ %|
  op -- te -- re -- će -- %|
  ni! %|
  Do -- đi -- te k me -- ni svi __ %|
  ko -- ji ste __ u -- mor -- ni, __ %|
  op -- te -- re -- će -- %|
  ni! %|
  Ja ću vas o -- %|
  bno -- vi -- %|
  ti, __ od -- %|
  mo -- ri -- %|
  ti, %|
  do -- đi -- te __ %|
  k me -- ni __ %|
  svi! __ %|
  Ja ću vas o -- %|
  bno -- vi -- %|
  ti, __ od -- %|
  mo -- ri -- %|
  ti, %|
  do -- đi -- te __ %|
  k me -- ni %|
  svi! __ %|
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
  \column {
    \line { \bold 2. }
    \line { Uzmite jaram moj na sebe, učite od mene, }
    \line { jer ja sam krotka, ponizna srca, nađite kod mene mir. }
    \line {  }
    \line { \bold 3. }
    \line { Uistinu, jaram moj je sladak, breme je moje lako. }
    \line { Uistinu, jaram moj je sladak, breme je moje lako. }
  }
}
