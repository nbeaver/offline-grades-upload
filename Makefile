TSV = $(wildcard *.tsv)
OUT = upload.xls

default : $(OUT)

upload.xls : $(TSV)
	head -n 1 $< > $@
	tail -q -n +2 $(TSV) >> $@

clean :
	rm -f $(OUT)
