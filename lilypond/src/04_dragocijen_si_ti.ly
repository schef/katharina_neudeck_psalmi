\version "2.24.1"
\include "deutsch.ly"
jazzChords = { \semiGermanChords }
aFourL = {}
\include "../config/include.ily"
markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})

\layout {
  indent = 0
}

\header {
  titlex = "Pjevajte Jahvi"
  title = "DRAGOCJEN SI TI"
  %poet = "Izaija 43,4"
  style = "Izaija 43,4"
  composer = "Katharina Neudeck"
  %meter = "4"
  broj = "4"
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
  \key d \major
  \time 4/4
  \tempo 4 = 69
  \partial 4
  \markMoj "Refren" h16 (cis16 )d16 (h16 )|
  g'4. fis8 e8. e16 d8 e8 |
  fis4. e16 (d16 )h2 |
  h'4. g16 (a16 )a8 e8 a8 g16 g16 (~|
  g16 a16 )fis4 (e16 fis16 a4 )r8 e16 fis16 |
  g8 g16 g16 ~g8 fis8 e4. d16 e16 |
  fis8. (e16 ~e8 )d8 h4 r4 |
  h4 (~h16 cis16 )d16 (e16 )cis4 a8 cis8 (|
  d8 )d4 (cis16 d16 fis4. )e16 fis16 |
  g8 g16 g16 ~g8 fis8 e4 r8 d16 e16 |
  fis8. (e16 ~e8 )d8 h4 r4 |
  h4 (~h16 cis16 )d16 (e16 )cis4 a8 cis8 (|
  h8 )h4. ~h4 r8 r16 h16 \bar "||" |
  \markMoj "Kitica" h8 h16 h16 ~h16 h8 h16 ~h16 cis16 d4. |
  h8. h16 ~h8 cis8 d4 r4 |
  d8. d16 ~d4 d8 d8 d8 d8 |
  fis8. e16 ~e8 cis8 ~cis4 r4 |
  h8 h16 h16 ~h8 cis16 cis16 ~cis16 d8. ~d4 |
  h8 h16 h16 h8 cis16 d16 ~d4 r4 |
  d8. d16 ~d4 d8 d8 d4 |
  fis8. e16 ~e8 g8 ~g2 ~|
  \partial 2.
  g2. \bar ":|." |
}

harmonyOne = \chordmode  {
  s4 |
  e2:m7 a2 |
  d2 g2 |
  e2:m7 a2 |
  d2 dis2:dim |
  e2:m7 a2 |
  d2 g2 |
  e2:m7 a2 |
  d2 dis2:dim |
  e2:m7 a2 |
  d2 g2 |
  e2:m7 a2 |
  h1:sus4 |
  g2 a2:7/g |
  e1:m |
  g1 |
  fis1:m7 |
  g2 a2:7/g |
  e1:m |
  g1 |
  fis1:9- |
  s2. |
  \bar "|."
}

alignerOneZero = \relative {
  c16 r16 c16 r16 |
  c4. c8 c8. c16 c8 c8 |
  c4. c16 r16 c2 |
  c4. c16( c16) c8 c8 c8 c16 c16 |
  r16 r16 c4( c16 c16 c4) r8 c16 c16 |
  c8 c16 c16 r8 c8 c4. c16 c16 |
  c8. r16 r8 c8 c4 r4 |
  c4 r16 r16 c16( c16) c4 c8 c8 |
  r8 c4( c16 c16 c4.) c16 c16 |
  c8 c16 c16 r8 c8 c4 r8 c16 c16 |
  c8. r16 r8 c8 c4 r4 |
  c4 r16 r16 c16( c16) c4 c8 c8 |
  r8 c4.( c4) r8 r16 c16 |
  c8 c16 c16 r16 c8 c16 r16 c16 c4. |
  c8. c16( c8) c8 c4 r4 |
  c8. c16( c4) c8 c8 c8 c8 |
  c8. c16 r8 c8( c4) r4 |
  c8 c16 c16( c8) c16 c16 r16 c8.( c4) |
  c8 c16 c16 c8 c16 c16( c4) r4 |
  c8. c16( c4) c8 c8 c4 |
  c8. c16 r8 c8( c2 |
  c2.) |
}

lyricOneZero = \lyricmode {
  Dra -- go -- %|
  cjen si ti u mo -- jim %|
  o -- či -- ma, %|
  vrije -- dan si i ja te lju -- %|
  bim. __ Ne -- ću %|
  te o -- sta -- vi -- ti i ne %|
  pla -- ši se. %|
  Go -- spod Bog je "s to" -- %|
  bom __ ne -- ću %|
  te o -- sta -- vi -- ti i ne %|
  pla -- ši se. %|
  Go -- spod Bog je "s to" -- %|
  bom. __ \set stanza = "1." Kad %|
  pre -- ko vo -- de pre -- la -- ziš, %|
  "s to" -- bom sam ja %|
  rije -- ke __ ne -- će te pre -- %|
  pla -- vi -- ti. __ %|
  Po -- đeš li __ kroz va -- tru, __ %|
  ne -- ćeš iz -- gor -- je -- ti, __ %|
  pla -- men __ ne -- će te %|
  spa -- li -- ti. __ %|
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
  \vspace #3
  \column {
    \line { \bold 2. }
  }
  \hspace #1
  \column {
    \line { Stvorio sam te, }
    \line { sazdao sam te, }
    \line { ja sam Bog, tvoj spasitelj. }
    \line { Ne boj se, otkupio sam te, }
    \line { pozvao po imenu i ti si moj. }
  }
}
