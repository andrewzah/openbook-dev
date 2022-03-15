\version "2.22.1"

\include "../includes/globals.ily"
\include "../includes/chords.ily"
\include "../includes/symbols.ily"

\header {
  title = ""
  composer = ""
  subsubtitle = ""
  meter = ""
  poet = ""
}

\score {
  <<
    \new ChordNames="Chords" {
      \transpose c c {
        \chordmode {
          \set chordNameExceptions = #jazzChordExceptions
          \set chordChanges = ##t
        }
      }
    }

  \new Voice="Voice" {
    \transpose c c {
      \key c \major
      \time 4/4
      \numericTimeSignature

      \repeat volta 2 {

      } \alternative {
        {}
        {}
      }

      \songEndBar
    }
  }

  \new Lyrics="Lyrics" \lyricsto "Voice" {
    \lyricmode {
    }
  }

 >>
}
