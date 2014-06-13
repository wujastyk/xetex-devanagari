VERSION = `cat Changelog | head -1 | egrep -o '[0-9].[0-9]'`
ZIP = ../xetex-devanagari-$(VERSION).zip

all: clean maps test ctan

maps:
	for i in map/*.map; do teckit_compile $$i -o tec/`echo $$i | sed 's/map\/\(.*\)map/\1/'`tec; done

.PHONY: test
test:
	make -C test all

doc:
	filepp -DREGEXP=/\{version\}/$(VERSION)/ -m regexp.pm -Itest -kc § -lc % -dl -o Readme.md misc/Readme.pre.md
	rm -rf Readme.md~

ctan:doc
	pandoc -t plain -o README Readme.md
	rm -rf $(ZIP)
	zip -j $(ZIP) map/* tec/* README Changelog

clean:
	make -C test clean
	rm -rf README $(ZIP)

