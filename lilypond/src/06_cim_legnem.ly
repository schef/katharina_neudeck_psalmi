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
  title = "ČIM LEGNEM"
  %poet = "Psalam 4,9"
  style = "Psalam 4,9"
  composer = "Katharina Neudeck"
  %meter = "6"
  broj = "6"
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
  \time 4/4
  \tempo 4 = 63
  \partial 4
  g'8 (fis8 )\bar "||" |
  \markMoj "Refren" e4 (d4 )h4. a16 (h16 )|
  c4. (h8 )a4 g'8 fis8 |
  e4 (d4 )h2 |
  g'4. (a8 )a4 g8 (fis8 )|
  e4 (d4 )h4. a16 (h16 )|
  c4. (h8 )a4 g'8 fis8 |
  e4 (g4 )a8 a16 a16 ~a8 g8 |
  g1 \bar "||" |
  \markMoj "Kitica" e8 e16 e16 ~e16 e8 e16 ~e16 e16 (fis4. )|
  fis8 fis16 fis16 ~fis16 fis8 fis16 ~fis16 g8. fis8 (e16 )e16 ~|
  e2 r8 r16 g,16 e'8 d16 d16 ~|
  d2 r2 |
  e8 e16 e16 ~e16 e8 e16 ~e16 fis8 fis16 ~fis4 |
  fis8 fis16 fis16 ~fis16 fis8. g4 fis8 (e8 )|
  e2 g8. a16 ~a8 a8 ~|
  a2. r4 |
}

harmonyOne = \chordmode  {
  s4 |
  c2 g2/h |
  a2:m d2 |
  c2 g2/h |
  a2:m d2 |
  c2 g2/h |
  a2:m d2 |
  c2 c2:9^7/d |
  g1 |
  c2 d2:7/c |
  h2:m7 e2:m7 |
  c2 c2:9^7/d |
  g1 |
  c2 d2:7/c |
  h2:7 e2:m7 |
  c2 a2:m7 |
  a2:m7.11/d d2 |
  \bar "|."
}

alignerOneZero = \relative {
  c8( c8) |
  c4 r4 c4. c16( c16) |
  c4. r8 c4 c8 c8 |
  c4 r4 c2 |
  c4. r8 c4 c8( c8) |
  c4 r4 c4. c16( c16) |
  c4. r8 c4 c8 c8 |
  c4( c4) c8 c16 c16 r8 c8 |
  c1 |
  c8 c16 c16 r16 c8 c16 r16 c16( c4.) |
  c8 c16 c16( c16) c8 c16 r16 c8. c8 r16 c16( |
  c2) r8 r16 c16 c8 c16 c16( |
  c2) r2 |
  c8 c16 c16 r16 c8 c16 r16 c8 c16( c4) |
  c8 c16 c16 r16 c8. c4 c8( c8) |
  c2 c8. c16 r8 c8( |
  c2.) r4 |
}

lyricOneZero = \lyricmode {
  Čim __ %|
  le -- gnem, čim __ %|
  le -- gnem, od -- mah %|
  mir -- no %|
  u -- snem. Čim __ %|
  le -- gnem, čim __ %|
  le -- gnem, sa -- mo %|
  ti, __ Ja -- hve, da -- ješ %|
  mir. %|
  \set stanza = "1."
  Dan je bi -- o di -- van. __ %|
  Noć je tu __ i mo -- lim, Bo -- že, __ %|
  za mi -- ran san. __ %|
  %|
  Lju -- bav tvo -- ja ra -- du -- je. __ %|
  Tvo -- ja ru -- ka dr -- ži __ %|
  sve i me -- ne. __ %|
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
    \vspace #1
    \column { 
    \hspace #3
  }
  \column {
    \line { \bold 2. }
  }
  \hspace #1
  \column {
    \line { Kad me brige tište, }
    \line { tebi glas podižem. }
    \line { Bože, ti čuješ me! }
    \line { Teret činiš lakim, }
    \line { grijehe mi opraštaš, }
    \line { samo ti, Gospode! }
  }
}
