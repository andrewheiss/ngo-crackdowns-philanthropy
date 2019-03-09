build:
	Rscript -e "rmarkdown::render_site(input = 'analysis')"

.PHONY: html docx paper

html:
	$(MAKE) -C manuscript html

tex:
	$(MAKE) -C manuscript tex

docx:
	$(MAKE) -C manuscript docx

paper:
	$(MAKE) -C manuscript html tex

# Anything that doesn't match one of the targets in this file gets passed on to 
# the manuscript Makefile
#%:
#	$(MAKE) -C manuscript $@
