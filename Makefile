## 
## This Makefile is kind of a catch-all convenience script that can run targets
## from analysis/Makefile and manuscript/Makefile. It's generally easier to run 
## things there directly, but if you're at the project root and want to build 
## stuff, go ahead and do so here I guess ¯\_(ツ)_/¯
## 

## build	:	Build the R Markdown website in analysis/
.PHONY: build
build:
	Rscript -e "rmarkdown::render_site(input = 'analysis', encoding = 'UTF-8')"

## serve	:	Serve analysis/_site/ at http://localhost:7000
.PHONY: serve
serve:
	$(MAKE) -C analysis serve

## html	:	Convert manuscript to HTML
.PHONY: html
html:
	$(MAKE) -C manuscript html

## tex	:	Convert manuscript to PDF through XeLaTeX
.PHONY: text
tex:
	$(MAKE) -C manuscript tex

## docx	:	Convert manuscript to .docx
.PHONY: docx
docx:
	$(MAKE) -C manuscript docx

## paper	:	Convert manuscript to HTML, PDF, and .docx
.PHONY: paper
paper:
	$(MAKE) -C manuscript html tex

# Self-documenting Makefiles from The Carpentries
# https://swcarpentry.github.io/make-novice/08-self-doc/index.html
## help	:	Show possible targets
.PHONY: help
help: Makefile
	@sed -n 's/^##//p' $<

# Anything that doesn't match one of the targets in this file gets passed on to 
# the manuscript Makefile
#%:
#	$(MAKE) -C manuscript $@
