\version "2.24.1"
\include "deutsch.ly"
jazzChords = { \semiGermanChords }
aFourL = {}
markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})
%\include "../config/include.ily"

\layout {
  indent = 0
}

\header {
  titlex = "Farmfest 2023"
  style = ""
  broj = "1"
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
  \key g \major
  \time 6/8
  g'4. g4 g8 |
  g4. r8 g8 g8 |
  a4. a4 a8 |
  g8. a16 h8 a4. |
  h4. a4. |
  g4. g4 fis8 |
  e2. |
  d2. |
  g4. g4 g8 |
  g2. |
  a4. a4 a8 |
  g8. a16 h8 a4. |
  h4 h8 g4 fis8 |
  e4. g4. |
  a4. fis4. |
  g2. |
}

harmonyOne = \chordmode  {
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  \bar "|."
}

staffTwo = \relative c' {
  \key g \major
  \time 6/8
  d4. d4 d8 |
  e4. r8 e8 e8 |
  e4. e4 e8 |
  d8. fis16 g8 fis4. |
  g4. fis4. |
  e4. e4 d8 |
  c2. |
  a2. |
  d4. d4 d8 |
  e2. |
  e4. e4 e8 |
  d8. fis16 g8 fis4. |
  g4 g8 d4 d8 |
  c4. e4. |
  e4. d4. |
  d2. |
}

harmonyTwo = \chordmode  {
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  \bar "|."
}

staffThree = \relative c' {
  \key g \major
  \time 6/8
  h4. h4 h8 |
  c4. r8 c8 c8 |
  c4. c4 c8 |
  h8. d16 d8 d4. |
  d4. c4. |
  h4. h4 a8 |
  g2. |
  fis2. |
  h4. h4 h8 |
  c2. |
  c4. c4 c8 |
  h8. d16 d8 d4. |
  d4 d8 h4 h8 |
  g4. c4. |
  c4. a4. |
  h2. |
}

harmonyThree = \chordmode  {
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  s2. |
  \bar "|."
}

\score {
    <<
    \new ChordNames { \jazzChords \harmonyOne }
    \new Staff {
        <<
        \new Voice { \staffOne }
        >>
    }
    \new ChordNames { \jazzChords \harmonyTwo }
    \new Staff {
        <<
        \new Voice { \staffTwo }
        >>
    }
    \new ChordNames { \jazzChords \harmonyThree }
    \new Staff {
        <<
        \new Voice { \staffThree }
        >>
    }
    >>
}

\markup {
  \column {
  }
}
