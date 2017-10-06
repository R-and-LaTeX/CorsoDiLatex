SLIDES := $(sort $(wildcard */))
SHELL := /bin/bash #Need bash not shell
CC := latexmk
CCFLAGS := -pdflatex='pdflatex -interaction=nonstopmode' -pdf
PROJECT_NAME := CorsoLaTeX
COMPRESS := zip
COMPRESSFLAG := -r

all: $(SLIDES) export

$(SLIDES):
	if [[ "$@" != "UnipdTheme/" ]]; \
	then \
		echo "-- BUILDING $@ --"; \
		cd $@; \
		$(CC) $(CCFLAGS); \
	fi; \

export:
	if [[ -a "$(PROJECT_NAME).zip" ]]; then rm $(PROJECT_NAME).zip; fi;
	for i in $(wildcard ./**/*.pdf); do \
		$(COMPRESS) $(COMPRESSFLAG) $(PROJECT_NAME).zip $$i; \
	done; \

clean:
	git clean -Xfd
