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
  title = "JAHVE JE PASTIR MOJ"
  %poet = "Psalam 23"
  style = "Psalam 23"
  composer = "Katharina Neudeck"
  meter = "1"
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
  \time 4/4
  \tempo 4 = 65
  \markMoj "Refren" e8 c8 r8 e8 f8 e16 d16 ~d4 |
  d8 h8 r8 d8 e8 f16 f16 (~f16 e16 d16 c16 )|
  e8 c8 r8 e8 f8 g16 a16 ~a8 a16 a16 |
  g8 g16 g16 f16 e16 d8 c4 r8 r16 c16 \bar "||" |
  \markMoj "Kitica" a'16 a16 a16 a16 a8 g16 g16 ~g4 r8 e16 e16 |
  f8 e8 d8 c8 h4 r8 r16 c16 |
  a'8 a16 a16 a8 a16 a16 g8 e8 r8 r16 e16 |
  f8 e8 d8 c8 e8. d16 ~d4 |
  r1 |
}

harmonyOne = \chordmode  {
  c2 d2:m7/c |
  g2/h c4 g4/h |
  a2:m d2:m |
  c4/g g4 c2 |
  f2 c2/e |
  d2:m g2 |
  f2 c2/e |
  d2:m c2/g |
  g1 |
  \bar "|."
}

alignerOneZero = \relative {
  c8 c8 r8 c8 c8 c16 c16( c4) |
  c8 c8 r8 c8 c8 c16 c16( c16 c16 c16 c16) |
  c8 c8 r8 c8 c8 c16 c16( c8) c16 c16 |
  c8 c16 c16 c16 c16 c8 c4 r8 r16 c16 |
  c16 c16 c16 c16 c8 c16 c16( c4) r8 c16 c16 |
  c8 c8 c8 c8 c4 r8 r16 c16 |
  c8 c16 c16 c8 c16 c16 c8 c8 r8 r16 c16 |
  c8 c8 c8 c8 c8. c16( c4) |
  r1 |
}

lyricOneZero = \lyricmode {
  Ja -- hve je pa -- stir moj, __ %|
  Ja -- hve je pa -- stir moj __ %|
  Ja -- hve je pa -- stir moj, ni u %|
  čem ja ne o -- sku -- dije -- vam. 
  
  \set stanza = "1."
  Na %|
  po -- lja -- na -- ma ze -- le -- nim __ on mi %|
  da -- je od -- mo -- ra. Na %|
  vru -- tke me ti -- ha -- ne vo -- di i %|
  krije -- pi du -- šu mo -- ju. __ %|
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
    \line { Da mi je dolinom smrti proći, }
    \line { zla se ne bojim, jer si sa mnom. }
    \line { Tvoj štap i palica tvoja }
    \line { utjeha su meni. }
    \line {  }
    \line { \bold 3. }
    \line { Trpezu preda mnom prostireš, }
    \line { na oči dušmanima mojim. }
    \line { Uljem mi glavu mažeš, }
    \line { čaša se moja prelijeva. }
    \line {  }
    \line { \bold 4. }
    \line { Dobrota i milost me prate }
    \line { sve dane života moga. }
    \line { U domu ću tvome biti }
    \line { kroz dane mnoge. }
  }
}
