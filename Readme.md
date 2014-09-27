xetex-devanagari 0.6
====================

Xetex-devanagari [[1](http://www.ctan.org/tex-archive/macros/xetex/generic/devanagari)][[2](https://github.com/danstender/xetex-devanagari)] are input mappings (\*.tec) for convenient LaTeX typesetting of simple Unicode Devanagari (0900-097F) [[3](http://www.unicode.org/charts/PDF/U0900.pdf)][[4](http://en.wikipedia.org/wiki/Xetex)] with the PDF-engine XeTeX [[5](http://en.wikipedia.org/wiki/Xetex)].

Their sources (\*.map) are to be compiled with the TECkit [[6](http://scripts.sil.org/TECkit)].

The maps are maintained by Daniel Stender [[7](http://www.danielstender.com/blog/>)] please send hints and report problems to: <daniel@danielstender.com>.

Velthuis maps
=============

*velthuis.map*, *velthuis-sanskrit.map*, and *devanagarinumerals.map* are taken over from the Velthuis packet [[8](http://www.ctan.org/tex-archive/language/devanagari/velthuis)] much thanks to Zdeněk Wagner.

*devanagarinumerals.tec* is the simplest way to turn automatically generated counters to Devanagari (XeTeX displays the numbers in Devanagari while applications like Xindy could work with the original Arabic numbering).

Since "\~" expands to nonbreakable space it's important to set *\`\~=12* in the preamble [[9](http://cikitsa.blogspot.com/2010/09/xelatex-velthuis-encoding-and-palatal.html)].

*velthuis-sanskrit.tec* (for Sanskrit)
--------------------------------------

Input encoding includes:

|input|means|
|-----|-----|
|aa|ā|
|ii|ī|
|uu|ū|
|.r|ṛ|
|.R|ṝ|
|.l|ḷ|
|"n|ṅ|
|\~n|ñ|
|.t|ṭ|
|.d|ḍ|
|.n|ṇ|
|"s|ś|
|.s|ṣ|
|.m|Anusvāra|
|.h|Visarga|
|.a|Avagrāha|
|.o|ॐ|
|@|°|
|+|ligature breaking|

For a complete list of Velthuis input scheme see cf. the manual of the Velthuis packet [[10](http://mirrors.ctan.org/language/devanagari/velthuis/doc/generic/velthuis/manual.pdf#page=6)].

Usage like:

    \documentclass{article}

    \usepackage{fontspec}
    \setmainfont[Script=Devanagari,Mapping=velthuis-sanskrit]{Sanskrit 2003}

    \catcode`\~=12

    \setlength\parindent{0pt}

    \begin{document}
    namastu"n+ga"sira"scumbicandracaamaracaarave |\\
    trailokyanagaraarambhamuulas+tambhaaya "sambhave || 1 ||\\
    haraka.n.thagrahaanandamiilitaak.sii.m namaamyumaam |\\
    kaalakuu.tavi.saspar"sajaatamuurcchaagamaamiva || 2 ||
    \end{document}

*velthuis.tec* (for Hindi)
--------------------------

Input encoding includes:

|input|means|
|-----|-----|
|qa|क़|
|.kha|ख़|
|.ga|ग़|
|za|ज़|
|Ra|ड़|
|Rha|ढ़|
|fa|फ़|
|La|ळ|

Usage like:

    \documentclass{article}

    \usepackage{fontspec}
    \setmainfont[Script=Devanagari,Mapping=velthuis]{Nakula}

    \catcode`\~=12

    \begin{document}
    am.rt ek cho.te se ghaRe meM samudr ke tal meM sthit thaa | devataa aur asur
    use nikaalane ke lie samudr ko mathanaa caahate the |
    \end{document}

harvardkyoto.tec
================

Input coding includes (asterisk marks non-standard):

|input|means|
|-----|-----|
|A|ā|
|I|ī|
|U|ū|
|R|ṛ|
|RR|ṝ|
|L|ḷ|
|G|ṅ|
|J|ñ|
|T|ṭ|
|D|ḍ|
|N|ṇ|
|z|ś|
|S|ṣ|
|M|Anusvāra|
|H|Visarga|
|'|Avagrāha|
|OM|ॐ|
|.l|ळ|
|-|Anudātta|
|!|Svarita|
|.m|Anunāsika|
|°|abbrev (U+0970)|
|+|ligature breaking|

Usage like:

    \documentclass[12pt]{article}

    \usepackage{fontspec}
    \setmainfont[Script=Devanagari,Mapping=harvardkyoto]{Sanskrit 2003}

    \setlength\parindent{0pt}

    \begin{document}
    namastuG+gazirazcumbicandracAmaracArave |\\
    trailokyanagarArambhamUlastambhAya zambhave || 1 ||\\
    harakaNThagrahAnandamIlitAkSIM namAmyumAm |\\
    kAlakUTaviSasparzajAtamUrcchAgamAmiva || 2 ||\\[1ex]

    a-gnimI!.le pu-rohi!taM ya-jJasya! de-vamR-tvijaM! |
    hotA!raM ratna-dhA!tamaM || 1.1.1 ||
    \end{document}

iast.tec
========

Input coding includes Unicode entities representing the International Alphabet of Sanskrit Transliteration (IAST):

|Entity|Hex|
|------|---|
|ā|U+0101|
|ī|U+012B|
|ū|U+016B|
|ṛ|U+1E5B|
|ṝ|U+1E5D|
|ḷ|U+1E37|
|ṅ|U+1E45|
|ñ|U+00F1|
|ṭ|U+1E6D|
|ḍ|U+1E0D|
|ṇ|U+1E47|
|ś|U+015B|
|ṣ|U+1E63|
|ṃ|U+1E43|
|ḥ|U+1E25|

Usage like:

    \documentclass{article}

    \usepackage{fontspec}
    \setmainfont[Script=Devanagari,Mapping=iast]{Sanskrit 2003}

    \setlength\parindent{0pt}

    \begin{document}
    namastuṅ+gaśiraścumbicandracāmaracārave |\\
    trailokyanagarārambhamūlastambhāya śambhave || 1 ||\\
    harakaṇṭhagrahānandamīlitākṣīṃ namāmyumām |\\
    kālakūṭaviṣasparśajātamūrcchāgamāmiva || 2 ||
    \end{document}

RomDev.tec
==========

Alternative romanized Sanskrit input map (version 0.3) [[11](https://github.com/somadeva/RomDev)] Thanks to Somadeva Vasudeva.

