\version "2.24.1"
\include "deutsch.ly"
jazzChords = {}
aFourL = {}
\include "../config/include.ily"
markMoj = #(define-music-function (letter) (string?) #{ \mark \markup { \box \bold #letter } #})

\layout {
  indent = 0
}

\header {
  titlex = "Pjevajte Jahvi"
  title = "GORAMA OČI SVOJE UZDIŽEM"
  composer = "Katharina Neudeck"
  %poet = "Psalam 121"
  style = "Psalam 121"
  meter = "2"
  broj = "2"
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
  \key es \major
  \time 4/4
  \tempo 4 = 106
  \markMoj "Refren" g'8 g8 g8 g8 ~g8 g8 es8 b8 |
  as8 as8 es'8 (f8 ~f4 )r4 |
  f8 f8 f8 f8 ~f8 g8 as8 g8 |
  g2. r4 |
  g8 g8 g8 g8 ~g8 es8 b8 as8 ~|
  as8 f'4. r4 f8 es8 |
  d4 d8 c8 ~c8 c8 d4 |
  f4. es8 ~es2 \bar ":|." |
  \markMoj "Kitica" c4 c4 d4 c8 c8 |
  b8 es8 es2 r4 |
  as,4 as8 as8 c4 b8 as8 |
  g8 b8 b2 r8 b8 |
  c4 c4 es4 d8 (c8 )|
  b8 (es8 )es2 r8 es8 |
  c4 c4 as'4 g8 f8 |
  f2. (~f8 d16 c16 |
  b2. )r4 |
}

harmonyOne = \chordmode  {
  es1 |
  as1/c |
  b1 |
  es1 |
  s1 |
  as1/c |
  b1/d |
  es1 |
  as1 |
  es1/g |
  f2:m7 b2 |
  es1 |
  as1 |
  es1/g |
  f1:m7 |
  es1/b |
  b1 |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 c8 c8 r8 c8 c8 c8 |
  c8 c8 c8( c8 c4) r4 |
  c8 c8 c8 c8 r8 c8 c8 c8 |
  c2. r4 |
  c8 c8 c8 c8 r8 c8 c8 c8 |
  r8 c4. r4 c8 c8 |
  c4 c8 c8 r8 c8 c4 |
  c4. c8( c2) |
  c4 c4 c4 c8 c8 |
  c8 c8 c2 r4 |
  c4 c8 c8 c4 c8 c8 |
  c8 c8 c2 r8 c8 |
  c4 c4 c4 c8( c8) |
  c8 r8 c2 r8 c8 |
  c4 c4 c4 c8 c8 |
  c2.( c8 c16 c16 |
  c2.) r4 |
}

lyricOneZero = \lyricmode {
  Go -- ra -- ma o -- či svo -- je %|
  uz -- di -- žem: __ %|
  o -- da -- kle po -- moć do -- la -- %|
  zi? %|
  Po -- moć je mo -- ja od Ja -- %|
  hve ko -- ji %|
  stvo -- ri ne -- bo i %|
  ze -- mlju. __ %|
  \set stanza = "1."
  Tvoj pad ne -- će do -- %|
  pu -- sti -- ti, %|
  tvoj ču -- var ne -- će za -- %|
  drije -- ma -- ti. Ne %|
  drije -- ma i ne __ %|
  spa -- va on, %|
  ču -- var I -- zra -- e -- %|
  la. __ %|
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
    \hspace #4
  }
  \column { 
    \line { \bold 2. }
    \vspace #4
    \line { \bold 3. }
  }
  \hspace #1
  \column {
    \line { Jahve je čuvar tvoj, }
    \line { Bog ti je zaklon i zaštita. }
    \line { Sunce ti neće danju nauditi }
    \line { ni mjesec noću. }
    \vspace #1
    \line { Bog te štiti od svakog zla, }
    \line { on čuva život tvoj, }
    \line { čuva te na odlasku i povratku }
    \line { od sada pa do vječnosti. }
  }
}
