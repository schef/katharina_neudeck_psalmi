\version "2.24.1"
\include "deutsch.ly"
jazzChords = {}
aFourL = {}
markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})
%\include "../config/include.ily"

\layout {
  indent = 0
}

\header {
  titlex = "Farmfest 2023"
  title = "TEST LYRICS"
  broj = "5"
  composer = "comps"
  style = "liriks"
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
  c4 d4 (f2 ~|
  \markMoj "C" f2. c4 )|
}

harmonyOne = \chordmode  {
  s4 c2.:7 |
  s1 |
  \bar "|."
}

alignerOneZero = \relative {
  r4 c4 r2 |
  r2. c4 |
}

lyricOneZero = \lyricmode {
  bok %|
  cok %|
}

alignerOneOne = \relative {
  c4( c4) r2 |
  c2. c4 |
}

lyricOneOne = \lyricmode {
  moj __ %|
  kmet -- moj %|
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff {
        <<
        \new Voice { \staffOne }
        \new NullVoice = "alignerOneZero" { \alignerOneZero }
        \new Lyrics \lyricsto "alignerOneZero" { \lyricOneZero }
        \new NullVoice = "alignerOneOne" { \alignerOneOne }
        \new Lyrics \lyricsto "alignerOneOne" { \lyricOneOne }
        >>
    }
    >>
}
