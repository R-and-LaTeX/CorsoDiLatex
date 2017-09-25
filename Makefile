SLIDES := $(sort $(wildcard */))
SHELL := /bin/bash #Need bash not shell
CC := latexmk
CCFLAGS := -pdflatex='pdflatex -interaction=nonstopmode' -pdf -quiet
PROJECT_NAME := CorsoLaTeX
COMPRESS := zip
COMPRESSFLAG := -r

all: $(SLIDES) export

$(SLIDES):
	if [[ "$@" != "tema/" ]]; \
	then \
		echo "-- BUILDING $@ --"; \
		cd $@; \
		$(CC) $(CCFLAGS) -jobname='Slide'; \
	fi; \

export:
	if [[ -a "$(PROJECT_NAME).zip" ]]; then rm $(PROJECT_NAME).zip; fi;
	for i in $(wildcard ./**/*.log); do \
		$(COMPRESS) $(COMPRESSFLAG) $(PROJECT_NAME).zip $$i; \
	done; \

clean:
	git clean -Xfd
