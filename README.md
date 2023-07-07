# *Mysterium* corpus: Summary, important changes, sources
*Mysterium* is a corpus of solo piano music by Alexander Scriabin. The corpus comprises all of Scriabin's solo piano music with an opus number and published during his lifetime.**(N.B.: Op. 50 and Op. 55 are not extant.)** There are 207 works in the corpus. Eleven works had been encoded prior to creating the corpus; the files for these works come from the website for the Center for Computer Assisted Research in the Humanities and were encoded by Craig Stuart Sapp. These works are listed at the bottom of this README. I encoded the remaining 196 files as part of my thesis (2022; full citation below). See that thesis for more information, or the article in which I published the corpus, Bell and Albrecht (In press). All editions referenced for encoding are included in the directory reference_editions.

All files are in the kern format. Each file begins with a set of reference records containing information including composer (i.e., Scriabin), work title, opus number, date of composition, and genre. Each file also ends with a set of reference records containing information regarding the encoder, period of encoding, publication editor, and publication title. The last two records refer to the edition used for encoding. These are accessible on IMSLP. For a discussion of editions and how they were chosen see Bell and Albrecht (In press), referenced below.

Scriabin's music is quite complex in all its aspects. In the process of converting from the traditional score to kern, certain changes in the musical representation become necessary. Below, I have listed such changes under two categories, the first regarding basic, general changes, and the second regarding specific, substantive changes made within individual pieces.

General changes
- Ties:
  - Notes are doubled when ties have been drawn between two notes in different voices.
  - There are two scenarios in arpeggiated chords whose notes have been tied over to sustained chords. In the first, different grace notes have been entered into different voices with a rhythmic value corresponding to when the note occurs in the arpeggio (e.g., the first note is a quarter note, the second a dotted eighth, the third an eighth, etc.). In the second, notes and ties have been added to each note as the chord is "spelled out" to avoid ties drawn over notes without adding many voices.
  - Some ties in the corpus appear erroneous because they are not connected to noteheads. Despite this, they are in fact preserved from Scriabin's original notation. Almost always, these "incomplete" ties are used to communicate a sustained, laissez vibrer effect. 
- Alla ottava / alla ottava bassa:
  - I encoded any notes written by Scriabin under an 8va or 8vb sign at their actual sounding pitch level.

On specific pieces
- Allegro appassionato, Op. 4
  - The cadenza measure (m. 163) uses a 22/4 time signature in the kern encoding. The original score uses no time signature with small noteheads.
- Etude, Op. 8, No. 7
  - The left-hand triplets in the A sections are eighth-note triplets in common time. The original score uses common time in the right hand and 12/8 in the left hand.
- Prelude, Op. 11, No. 1
  - This prelude consists of constant eighth-note quintuplets beamed across the bar in the right hand. While the beams are simple to encode, the use of quarter-note triplets across the bar in the left hand in mm. 18–25 is difficult to encode because (a) the alignment between the quarter notes and eighth notes is vague, and (b) the shifting of the first quarter note in a quarter-note triplet group to the previous measure creates proportions in that measure that do not add up correctly. See Julian Hook's (2011) article for further discussion. What is clear in the original score is that the onsets of each quintuplet and triplet group should align. Therefore, I encoded the original quarter-note triplets as eighth-note quintuplets grouped in the ratio 1.5:1.5:2. As a result, the group onsets align, but the kern file assumes that the best alignment after this is a 3:2 cross-rhythm. Note that this solution is consistent with Example 33 in Hook (2011).
- Prelude, Op. 11, No. 24
  - Measures in this prelude alternate 6/8 and 5/8 time signatures. In the original score, one time signature appears at the beginning with 6/8 and 5/8 printed next to each other. In the kern file, the time signature changes for each measure.
- Impromptu, Op. 14, No. 2
  - The B section of this impromptu is in 3/4, the A sections in 9/8. The B section, in the original score, begins with a quarter-note anacrusis in 3/4 taken from the last beat of the previous 9/8 measure. Because an eighth note is dropped from the measure in order to create the anacrusis, a different notation is necessary in the encoding for the measures to align. Since there are multiple interpretations for how the performer moves in tempo from the 9/8 to the 3/4 section, I decided to resolve this issue by retaining Scriabin's original rhythmic values (rather than adjusting the anacrusis to fit in the 9/8 measure). So, I encoded m. 34 in 6/8 and the anacrusis in a separate 1/4 measure.
- Etude, Op. 42, No. 8
  - The left and right hand parts in this etude are shifted ahead of the bar line. The tenor voice in mm. 5, 9, 13–15, 38, 42, and 45–48 groups different numbers of shifted triplet eighth notes in the bass voice as quarter notes, i.e. one quarter note for two triplet eighth notes and one quarter note for three triplet eighth notes. To preserve this alignment between the voices, I broke the quarter notes that group three eighth notes into a triplet eighth note tied over to a quarter note that groups two triplets.
- Poème, Op. 59, No. 1
  - The last measure of the kern file uses a 9/4 measure to accommodate the quarter-note arpeggio that does not fit in the original 6/8 time signature.
- Sonata No. 6, Op. 62
  - Scriabin uses different time signatures for each hand in mm. 330–334 and 365–369, with the right hand notated in 2/8 and the left hand notated in 3/8. Two 2/8 measures occur per each 3/8 measure. This notation does not work in a kern file because each measure must add up to the same total rhythmic values. Consequently, I encoded both hands in 3/8 using tuplets for the right hand.
- Sonata No. 10, Op. 70
  - Multiple sections in this sonata use different time signatures simultaneously that do not work in a kern file because the total rhythmic values between the two signatures do not add up for each measure. Mm. 21–24 and 364–367 use 2/4 and 3/8. Since the 2/4 and 3/8 measures end with a single bar line, it can be assumed that each measure lasts for the same amount of time, and therefore to work out proportionally what the rhythms are between the parts notated in the different signatures. They are used to notate 3:2 cross-rhythms, so I encoded these measures in 6/8 (for 2/4) and 3/4 (for 3/8). (6/8 and 3/4 can be used at the same time in kern because the rhythmic values in both signatures are equal.) Mm. 32–36, 39–58, 124–127, 154–183, 208–210, 224–234, and 238–245 use 9/16 and 3/8. Again, these signatures are really used to notate 3:2 cross-rhythms. I encoded the 9/16 measures in 3/8 and augmented the original 3/8 rhythmic values by half.
- Flammes sombres, Op. 73, No. 2
  - The original score uses 2/4 and 6/8 at the same time throughout. As with other works mentioned above, the measures do not align, and do not work in kern. I used 2/4 for all measures, and used triplets to convert the 6/8 measures.

Pieces Encoded by Craig Stuart Sapp
- Op. 2, No. 1; Op. 8, No. 1; Op. 8, No. 2; Op. 8, No. 3; Op. 8, No. 4; Op. 8, No. 5; Op. 8, No. 6; Op. 11, No. 4; Op. 11, No. 15; Op. 65, No. 2; Op. 65, No. 3

Sources
- Bell, B. J. (2022). An Inner Metric Analysis of Meter in the Music of Alexander Scriabin [Master's thesis, Kent State University]. OhioLINK Electronic Theses and Dissertations Center. http://rave.ohiolink.edu/etdc/view?acc_num=kent1650651343569665.
- Bell, B.J., & Albrecht, J. (In press). Mysterium corpus: The solo piano music of Alexander Scriabin. Empirical Musicology Review.
- Hook, J. (2011). How to perform impossible rhythms. Music Theory Online, 17(4). https://www.mtosmt.org/issues/mto.11.17.4/mto.11.17.4.hook.html. 
