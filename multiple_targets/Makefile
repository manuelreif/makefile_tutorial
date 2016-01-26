# make3 Makefile

all: creategraphics.Rout

mtcars_red.RData: createdata.R
	R CMD BATCH --no-save createdata.R
	
results.RData: makeanalysis.R mtcars_red.RData
	R CMD BATCH --no-save makeanalysis.R

creategraphics.Rout: creategraphics.R results.RData
	R CMD BATCH --no-save creategraphics.R
	
# -------------------------------------------------------	
	
clean:
	-rm *.Rout *.RData *.bak