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
  title = "PJEVAJTE JAHVI PJESMU NOVU"
  composer = "Katharina Neudeck"
  %poet = "Psalam 98"
  style = "Psalam 98"
  %meter = "3"
  broj = "3"
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
  \key f \major
  \time 4/4
  \tempo 4 = 140
  \markMoj "Refren" d4 a'8 a8 f4 d4 |
  d4 a'4 f4 d8 d8 |
  cis4 e8 e8 cis4 e4 |
  f8 (g8 )e8 (f8 )d4 r4 \bar ":|." |
  \markMoj "Kitica" b'8 b8 b8 b8 b8 b8 a8 g8 |
  a4 g4 f4 f8 f8 |
  e4 g4 f8 f8 e8 e8 |
  a2. ~a8 a8 |
  b8 b8 b4 b4 a8 (g8 )|
  a4 g4 f8 f8 f8 f8 |
  e4 g4 f4 e4 |
  a4. (b8 a4. b8 |
  a8 b8 a8 b8 a4 )r4 \bar "||" | \break
  \markMoj "Outro" b2. a8 (g8 )|
  a4 (g8 )f8 ~f4 r4 |
  g2. f8 (e8 )|
  f4 (g8 )a8 ~a4 r4 | \break
  b2. a8 (g8 )|
  a4 (g8 )f8 ~f4 r8 f8 |
  e4 (a4 )e4 (f4 )|
  d2. r4 |
}

harmonyOne = \chordmode  {
  d1:m |
  s1 |
  a1:9- |
  s2 d2:m |
  g1:m |
  d1:m |
  a1 |
  d2:m d2:9- |
  g1:m |
  d1:m |
  e1:m7.5- |
  a4. b8 a4. b8 |
  a8 b8 a8 b8 a2 |
  g1:m |
  d1:m |
  a1 |
  d2:m d2:9- |
  g1:m |
  d1:m |
  a1 |
  d1:m |
  \bar "|."
}

alignerOneZero = \relative {
  c4 c8 c8 c4 c4 |
  c4 c4 c4 c8 c8 |
  c4 c8 c8 c4 c4 |
  c8 r8 c8 r8 c4 r4 |
  c8 c8 c8 c8 c8 c8 c8 c8 |
  c4 c4 c4 c8 c8 |
  c4 c4 c8 c8 c8 c8 |
  c2.( c8) c8 |
  c8 c8 c4 c4 c8( c8) |
  c4 c4 c8 c8 c8 c8 |
  c4 c4 c4 c4 |
  c4.( c8 c4. c8 |
  c8 c8 c8 c8 c4) r4 |
  c2. c8 r8 |
  c4 r8 c8( c4) r4 |
  c2. c8 r8 |
  c4 r8 c8( c4) r4 |
  c2. c8 r8 |
  c4 r8 c8( c4) r8 c8 |
  c4 r4 c4 r4 |
  c2. r4 |
}

lyricOneZero = \lyricmode {
  Pje -- vaj -- te Ja -- hvi %|
  pje -- smu no -- vu, jer %|
  dje -- la u -- či -- ni %|
  ču -- de -- sna. %|
  \set stanza = "1."
  Spo -- me -- nu se do -- bro -- te i %|
  vjer -- no -- sti pre -- ma %|
  do -- mu I -- zra -- e -- lo -- %|
  vu. __ Svi %|
  kra -- je -- vi svije -- ta __ %|
  vi -- dje -- še spa -- se -- nje %|
  Bo -- ga na -- še -- %|
  ga. __ %|
  %|
  Ha -- le -- %|
  lu -- ja, __ %|
  ha -- le -- %|
  lu -- ja! __ %|
  Ha -- le -- %|
  lu -- ja, __ ha -- %|
  le -- lu -- %|
  ja! %|
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
  \column { \bold 2. }
  \hspace #1
  \column {
    \line { Sva zemljo, poklikni Jahvi, }
    \line { raduj se, kliči i pjevaj! }
    \line { Lirama slavite Boga }
    \line { uz trublje i zvuke rogova! }
  }
  \hspace #4
  \column { \bold 3. }
  \hspace #1
  \column {
    \line { Nek' huči more i što je u njemu, }
    \line { zemlja i žitelji njezini! }
    \line { Rijeke nek' plješću rukama, }
    \line { neka se brda raduju! }
  }
}
