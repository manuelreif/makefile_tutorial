# create the tutorial report
ROPTS= --no-save --no-restore-data

makefile_doku.html: makefile_doku.Rmd
	R $(ROPTS) -e "library(rmarkdown); render('makefile_doku.Rmd')"
	
clean:
	-rm *.Rout *.bak

clean_all:
	-rm *.Rout *.bak *.html *.md 	