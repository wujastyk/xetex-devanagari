# xetex-devanagari 0.6

Xetex-devanagari (1,2) are input mappings (*.tec) for convenient LaTeX typesetting of simple Unicode Devanagari (0900-097F, 3,4) with the PDF-engine XeTeX (5).

(1) <http://www.ctan.org/tex-archive/macros/xetex/generic/devanagari>
(2) <https://github.com/danstender/xetex-devanagari>
(3) <http://www.unicode.org/charts/PDF/U0900.pdf>
(4) http://www.unicode.org/versions/Unicode6.2.0/ch09.pdf
(5) <http://en.wikipedia.org/wiki/Xetex>

Their sources (*.map) are to be compiled with the TECkit (6).

(6) <http://scripts.sil.org/TECkit>

The maps are maintained by Daniel Stender (7), please send hints and report problems to: <daniel@danielstender.com>.

(7) <http://www.danielstender.com/blog/>

# Velthuis maps

*velthuis.map*, *velthuis-sanskrit.map* and *devanagarinumerals.map* are taken over from the Velthuis packet (8), much thanks to Zdeněk Wagner.

(8) <http://www.ctan.org/tex-archive/language/devanagari/velthuis>

*devanagarinumerals.tec* is the simplest way to turn automatically generated counters to Devanagari (XeTeX displays the numbers in Devanagari while applications like Xindy could work with the original Arabic numbering).

Since "~" expands to nonbreakable space it's important to set *\catcode`\~=12* in the preamble (9).

(9) <http://cikitsa.blogspot.com/2010/09/xelatex-velthuis-encoding-and-palatal.html>

## *velthuis-sanskrit.map* (for Sanskrit)

Input encoding includes:

input | means
----- | -----------------
aa    | ā
ii    | ī
uu    | ū
.r    | ṛ
.R    | ṝ
.l    | ḷ
.L    | ḹ
"n    | ṅ
~n    | ñ
.t    | ṭ
.d    | ḍ
.n    | ṇ
"s    | ś
.s    | ṣ
.m    | Anusvāra
.h    | Visarga
.a    | Avagrāha
.o    | ॐ
@     | °
+     | ligature breaking

For a complete list of Velthuis input scheme cf. the manual of the Velthuis packet (10), p. 6.

(10) <http://mirrors.ctan.org/language/devanagari/velthuis/doc/generic/velthuis/manual.pdf>

Usage like:

~~~
\documentclass{article}

\usepackage{fontspec}
\setmainfont[Script=Devanagari,Mapping=../tec/velthuis-sanskrit]{Sanskrit 2003}

\catcode`\~=12

\setlength\parindent{0pt}

\begin{document}
namastu"n+ga"sira"scumbicandracaamaracaarave |\\
trailokyanagaraarambhamuulas+tambhaaya "sambhave || 1 ||\\
haraka.n.thagrahaanandamiilitaak.sii.m namaamyumaam |\\
kaalakuu.tavi.saspar"sajaatamuurcchaagamaamiva || 2 ||
\end{document}
~~~

## *velthuis.map* (for Hindi)

Input encoding includes:

input | means
----- | -----
qa    | क़
.kha  | ख़
.ga   | ग़
za    | ज़
Ra    | ड़
Rha   | ढ़
fa    | फ़
La    | ळ

Usage like:

~~~
\documentclass{article}

\usepackage{fontspec}
\setmainfont[Script=Devanagari,Mapping=../tec/velthuis]{Nakula}

\catcode`\~=12
	
\begin{document}
am.rt ek cho.te se ghaRe meM samudr ke tal meM sthit thaa | devataa aur asur
use nikaalane ke lie samudr ko mathanaa caahate the |
\end{document}
~~~

# harvardkyoto.map

Input coding includes (asterisk marks non-standard):

input | means
----- | -----------------
A     | ā 
I     | ī 
U     | ū 
R     | ṛ
RR    | ṝ
L*    | ḷ
G     | ṅ
J     | ñ 
T     | ṭ 
D     | ḍ 
N     | ṇ 
z     | ś 
S     | ṣ
M     | Anusvāra
H     | Visarga
'     | Avagrāha
OM    | ॐ
.l    | ळ
-     | Anudātta
!     | Svarita
.m    | Anunāsika
°     | abbrev (U+0970)
+     | ligature breaking

Usage like:

~~~
\documentclass[12pt]{article}

\usepackage{fontspec}
\setmainfont[Script=Devanagari,Mapping=../tec/harvardkyoto]{Sanskrit 2003}

\setlength\parindent{0pt}

\begin{document}
namastuG+gazirazcumbicandracAmaracArave |\\
trailokyanagarArambhamUlastambhAya zambhave || 1 ||\\
harakaNThagrahAnandamIlitAkSIM namAmyumAm |\\
kAlakUTaviSasparzajAtamUrcchAgamAmiva || 2 ||\\[1ex]

a-gnimI!.le pu-rohi!taM ya-jJasya! de-vamR-tvijaM! |
hotA!raM ratna-dhA!tamaM || 1.1.1 ||
\end{document}
~~~

# iast.map

Input coding includes Unicode entities
representing the IAST:

* ā ī ū ṛ ṝ (1E5D) ḷ ṅ ñ ṭ ḍ ṇ ś ṣ ṃ ḥ

Usage like:

~~~
\documentclass{article}

\usepackage{fontspec}
\setmainfont[Script=Devanagari,Mapping=../tec/iast]{Sanskrit 2003}

\setlength\parindent{0pt}

\begin{document}
namastuṅ+gaśiraścumbicandracāmaracārave |\\
trailokyanagarārambhamūlastambhāya śambhave || 1 ||\\
harakaṇṭhagrahānandamīlitākṣīṃ namāmyumām |\\
kālakūṭaviṣasparśajātamūrcchāgamāmiva || 2 ||
\end{document}
~~~

