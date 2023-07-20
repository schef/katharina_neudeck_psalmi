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
  title = "SVAKI KORAK"
  composer = "Katharina Neudeck"
  %meter = "5"
  broj = "5"
  style = ""
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
  \time 4/4
  \tempo 4 = 80
  \markMoj "Kitica" e8 d16 e16 ~e16 g8. e8 d16 e16 ~e16 g8. |
  c,16 c16 c8 c16 (d16 )e16 e16 ~e4 r8 r16 a,16 |
  f'16 f8 f16 r8 r16 f16 e8 d8 c4 |
  e8 (d8 )c8 (a8 )e'8. d16 ~d4 |
  e8 d16 e16 ~e16 g8. e8 d16 e16 ~e16 g8. |
  c,16 c16 c8 a'8 g16 g16 ~g4 r8 r16 a,16 |
  f'16 f8 f16 r8 f8 e8. d16 ~d8 c8 ~|
  c4 r4 r8 c'8 c8 h8 \bar "||" |
  \markMoj "Refren" a4. a16 h16 ~h4 h8 h8 |
  h4 (~h16 a16 h8 )c2 |
  r8 f,8 f16 f16 g16 e16 ~e16 d8. ~d4 |
  r8 e8 e16 e16 g16 e16 ~e16 d16 (c4. )|
  c4 c4 f8. e16 ~e8 d8 ~|
  d2 r2 \bar ":|." |
}

harmonyOne = \chordmode  {
  c2 g2/h |
  a2:m a2:m7/g |
  f2 c2/e |
  d2:m g8.:sus4 d16:sus4.7/a s16 g8./h |
  c2 g2/h |
  a2:m a2:m7/g |
  f2 g8.:sus4 g16 s8 c8 |
  s1 |
  f2 g2:7/f |
  e2:7 a2:m7 |
  f2 g2:7/f |
  e2:7 a2:m7 |
  f2 d4.:m7 g8 |
  s1 |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c16 c16 r16 c8. c8 c16 c16 r16 c8. |
  c16 c16 c8 c16 r16 c16 c16( c4) r8 r16 c16 |
  c16 c8 c16 r8 r16 c16 c8 c8 c4 |
  c8 r8 c8( c8) c8. c16( c4) |
  c8 c16 c16 r16 c8. c8 c16 c16 r16 c8. |
  c16 c16 c8 c8 c16 c16( c4) r8 r16 c16 |
  c16 c8 c16 r8 c8 c8. c16( c8) c8( |
  c4) r4 r8 c8 c8 c8 |
  c4. c16 c16( c4) c8 c8 |
  c4 r16 r16 r8 c2 |
  r8 c8 c16 c16 c16 c16 r16 c8.( c4) |
  r8 c8 c16 c16 c16 c16 r16 c16( c4.) |
  c4 c4 c8. c16( c8) c8( |
  c2) r2 |
}

lyricOneZero = \lyricmode {
  Sva -- ki ko -- rak, sva -- ki ko -- rak, %|
  ho -- dam sa I -- su -- som, __ on %|
  vo -- li me, on ču -- va me, %|
  ka -- kav __ je -- sam. __ %|
  Sva -- ki ko -- rak, sva -- ki ko -- rak, %|
  ho -- dam sa I -- su -- som, __ ne %|
  bo -- jim se, jer on je __ tu. __ %|
  Bog ka -- že, %|
  ne boj se __ i ne %|
  stra -- huj, %|
  jer ku -- da god po -- đeš, __ %|
  jer ku -- da god po -- đeš __ %|
  ja sam u -- vijek __ tu. __ %|
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
  }
  \hspace #1
  \column {
    \line { Svaki korak, svaki korak, hodam sa Isusom. }
    \line { Moj najbolji prijatelj, on me uvijek čuje. }
    \line { Svaki korak, svaki korak hodam sa Isusom, }
    \line { on vidi moje brige sve. }
  }
}
