# create the tutorial report
ROPTS= --no-save --no-restore-data

# dann funktioniert 'make clean' auch dann wenn ein file existiert das clean heisst
.PHONY: clean

makefile_doku.html: makefile_doku.Rmd
	R $(ROPTS) -e "library(rmarkdown); render('makefile_doku.Rmd')"
	
clean:
	-rm *.Rout *.bak

clean_all:
	-rm *.Rout *.bak *.html *.md 	