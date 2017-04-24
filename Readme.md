xetex-devanagari 1.0
====================

2017-04-23, Dominik Wujastyk: I've incremented the release to 1.0, since this package has been in use for several years without updates.  Not to say it's perfect, but it's moved from beta to stable release.

This Xetex-devanagari package [1] offers XeTeX input mappings (*.tec* ) for convenient LaTeX typesetting of simple Unicode Devanagari (0900-097F [3]) with the PDF-engine XeTeX [4].

Their sources (*.map*) are to be compiled with the TECkit [5].

The maps were initially maintained by Daniel Stender [6], to whom many thanks! 
Currently, from 2017, xetex-devanagari is maintained by me, Dominik Wujastyk.  By "maintained" I mean stored in GitHub. Feel free to fork and develop further!

Contents
========

* Velthuis maps silently convert Velthuis input to Devanagari output: k.r.s.naarpa.nam > कृष्णार्पणम्
* HarvardKyoto converts HK input to Devanagari: kRSNArpaNam > कृष्णार्पणम्
* iast converts IAST encoding to Devanagari: kṛṣṇārpaṇam > कृष्णार्पणम्
* RomDev does the same: kṛṣṇārpaṇam > कृष्णार्पणम्

Velthuis maps
=============

*velthuis.map* (for Hindi), *velthuis-sanskrit.map* (for Sanskrit), and *devanagarinumerals.map* are taken over from the Velthuis packet [7] much thanks to Zdeněk Wagner.

*devanagarinumerals.tec* is the simplest way to turn automatically generated counters to Devanagari (XeTeX displays the numbers in Devanagari while applications like Xindy could work with the original Arabic numbering).

Since "\~" expands to nonbreakable space it's important to set *\`\~=12* in the preamble [8].

*velthuis-sanskrit.tec* (for Sanskrit)
--------------------------------------

Input encoding includes:

| input | means             |
| ----- | ----------------- |
| aa    | ā                 |
| ii    | ī                 |
| uu    | ū                 |
| .r    | ṛ                 |
| .R    | ṝ                 |
| .l    | ḷ                 |
| "n    | ṅ                 |
| \~n   | ñ                 |
| .t    | ṭ                 |
| .d    | ḍ                 |
| .n    | ṇ                 |
| "s    | ś                 |
| .s    | ṣ                 |
| .m    | Anusvāra          |
| .h    | Visarga           |
| .a    | Avagrāha          |
| .o    | ॐ                 |
| @     | °                 |
| +     | ligature breaking |

For a complete list of Velthuis input scheme see cf. the manual of the Velthuis packet [9].

Usage like:

    \documentclass{article}

    \usepackage{fontspec}
    \setmainfont[
         Script=Devanagari,
         Mapping=velthuis-sanskrit]
         {Sanskrit 2003}
    
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

| input | means |
| ----- | ----- |
| qa    | क़     |
| .kha  | ख़     |
| .ga   | ग़     |
| za    | ज़     |
| Ra    | ड़     |
| Rha   | ढ़     |
| fa    | फ़     |
| La    | ळ     |

Usage like:

    \documentclass{article}

    \usepackage{fontspec}
    \setmainfont[
        Script=Devanagari,
        Mapping=velthuis]
        {Nakula}
    
    \catcode`\~=12
    
    \begin{document}
    am.rt ek cho.te se ghaRe meM samudr ke tal meM sthit thaa | devataa aur asur
    use nikaalane ke lie samudr ko mathanaa caahate the |
    \end{document}

harvardkyoto.tec
================

This input encoding is the only one at the moment that supports Vedic accents.

Input coding includes (asterisk marks non-standard):

| input | means             |
| ----- | ----------------- |
| A     | ā                 |
| I     | ī                 |
| U     | ū                 |
| R     | ṛ                 |
| RR    | ṝ                 |
| L     | ḷ                 |
| G     | ṅ                 |
| J     | ñ                 |
| T     | ṭ                 |
| D     | ḍ                 |
| N     | ṇ                 |
| z     | ś                 |
| S     | ṣ                 |
| M     | Anusvāra          |
| H     | Visarga           |
| '     | Avagrāha          |
| OM    | ॐ                 |
| .l    | ळ                 |
| -     | Anudātta          |
| !     | Svarita           |
| .m    | Anunāsika         |
| °     | abbrev (U+0970)   |
| +     | ligature breaking |

Usage like:

    \documentclass[12pt]{article}

    \usepackage{fontspec}
    \setmainfont[
        Script=Devanagari,
        Mapping=harvardkyoto]
        {Sanskrit 2003}
    
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

| Entity | Hex    |
| ------ | ------ |
| ā      | U+0101 |
| ī      | U+012B |
| ū      | U+016B |
| ṛ      | U+1E5B |
| ṝ     | U+1E5D |
| ḷ      | U+1E37 |
| ṅ      | U+1E45 |
| ñ      | U+00F1 |
| ṭ      | U+1E6D |
| ḍ      | U+1E0D |
| ṇ      | U+1E47 |
| ś      | U+015B |
| ṣ      | U+1E63 |
| ṃ      | U+1E43 |
| ḥ      | U+1E25 |

Usage like:

    \documentclass{article}

    \usepackage{fontspec}
    \setmainfont[
        Script=Devanagari,
        Mapping=iast]
        {Sanskrit 2003}
    
    \setlength\parindent{0pt}
    
    \begin{document}
    namastuṅ+gaśiraścumbicandracāmaracārave |\\
    trailokyanagarārambhamūlastambhāya śambhave || 1 ||\\
    harakaṇṭhagrahānandamīlitākṣīṃ namāmyumām |\\
    kālakūṭaviṣasparśajātamūrcchāgamāmiva || 2 ||
    \end{document}

RomDev.tec
==========

Alternative romanized Sanskrit input map (0.3 [10]). Thanks to Dominik Wujastyk for suggestion, 
and Somadeva Vasudeva for permission.  The RomDev (Roman-to-Devanagari) input map has an advantage over the iast.tec one, in that it deals correctly with conjunct consonants even in strings that are not typeset with a specifically Sanskrit Devanagari font.  Thus, in the following document: 

    \documentclass{article}
    \usepackage{polyglossia}
    
    \setmainlanguage{sanskrit}
    
    \newfontfamily\devanagarifont[
    Mapping=RomDev,
    Script=Devanagari]
    {Sanskrit 2003} 
    
    \begin{document}
    
    शब्दादर्थं
    
    śabdādarthaṃ
    
    \end{document}

The strings शब्दादर्थं and śabdādarthaṃ are both typeset correctly in Devanagari.  This is not the case with iast.

Links
=====

[1] http://www.ctan.org/tex-archive/macros/xetex/generic/devanagari

[2] Olim https://github.com/danstender/xetex-devanagari (last seen in September 2014 - [WayBackMachine](https://web-beta.archive.org/web/20140911055205/https://github.com/danstender/xetex-devanagari))

[3] http://www.unicode.org/charts/PDF/U0900.pdf

[4] http://en.wikipedia.org/wiki/Xetex

[5] http://scripts.sil.org/TECkit

[6] http://www.danielstender.com/blog

[7] http://www.ctan.org/tex-archive/language/devanagari/velthuis

[8] http://cikitsa.blogspot.com/2010/09/xelatex-velthuis-encoding-and-palatal.html

[9] http://mirrors.ctan.org/language/devanagari/velthuis/doc/generic/velthuis/manual.pdf\#page=6

[10] https://github.com/somadeva/RomDev

