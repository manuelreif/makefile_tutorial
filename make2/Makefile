## my makefile

all: mygraphic_red.pdf

prepdata: mtcars_red.RData

# ---------------------------------------------

mygraphic_red.pdf: analyse.R mtcars_red.RData
	R CMD BATCH --no-save analyse.R
	
mtcars_red.RData: datenaufbereitung.R
	R CMD BATCH --no-save datenaufbereitung.R
	

### und noch was zum cleanen
# das throwed einen error wenn es eines von den files nicht gibt, also keine panik


clean:
	\rm *.Rout *.RData *.bak

clean_pdf:
	\rm *.pdf