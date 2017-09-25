SLIDES := $(sort $(wildcard */))
SHELL := /bin/bash #Need bash not shell
CC := latexmk
CCFLAGS := -pdflatex='pdflatex -interaction=nonstopmode' -pdf -quiet
PROJECT_NAME := CorsoLaTeX

all: $(SLIDES) export

$(SLIDES):
	if [[ "$@" != "tema/" ]]; \
	then \
		echo "-- BUILDING $@ --"; \
		cd $@; \
		$(CC) $(CCFLAGS); \
	fi; \

export:
	zip $(PROJECT_NAME).zip $(wildcard ./*.pdf)

clean:
	git clean -Xfd



$(sort $(wildcard $(PATH_OF_CONTENTS)/*.tex))
