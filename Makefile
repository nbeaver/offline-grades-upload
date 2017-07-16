ODS :=$(wildcard *.ods)
TSV :=$(patsubst %.ods, %.tsv, $(ODS))
# https://wiki.openoffice.org/wiki/Documentation/DevGuide/Spreadsheets/Filter_Options
FIELD_DELIMITER :=9# ASCII for \t
TEXT_DELIMITER :=34# ASCII for "
ENCODING :=76# UTF-8
FIRST_LINE :=1
FILTER_OPTIONS := $(FIELD_DELIMITER),$(TEXT_DELIMITER),$(ENCODING),$(FIRST_LINE)
FILTER_NAME := "Text - txt - csv (StarCalc)"
EXT:=tsv

all: $(TSV)

# https://bugs.documentfoundation.org/show_bug.cgi?id=37531
TMPDIR = $(shell mktemp -d)

# https://ask.libreoffice.org/en/question/2641/convert-to-command-line-parameter/
# https://cgit.freedesktop.org/libreoffice/core/tree/filter/source/config/fragments/filters/Text___txt___csv__StarCalc_.xcu
%.tsv : %.ods
	soffice -env:UserInstallation=file://$(TMPDIR) --headless \
		--convert-to $(EXT):$(FILTER_NAME):$(FILTER_OPTIONS) $<

upload.tsv : $(TSV)
	head -n 1 $< > $@
	tail -q -n +2 $(TSV) >> $@

readme.html : readme.rst
	rst2html $< $@

clean:
	rm -f -- $(TSV) upload.tsv readme.html
