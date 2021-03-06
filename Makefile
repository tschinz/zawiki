# Makefile for Sphinx documentation
#

PROJECT_DIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
PROJECT_NAME = uspml
PYTHON_INTERPRETER = python
CONDA_ENV_FILE = condaenv.yml
CONDA_ENV_NAME = znotes-env

ifeq (,$(shell where conda))
HAS_CONDA=False
else
HAS_CONDA=True
SEARCH_ENV=$(shell conda.bat info --envs | grep $(CONDA_ENV_NAME))
FOUND_ENV_NAME = $(word 1, $(notdir $(SEARCH_ENV)))
# check if conda environment is active
ifneq ($(CONDA_DEFAULT_ENV),$(FOUND_ENV_NAME))
	CONDA_ACTIVATE := source $$(conda.bat info --base)/etc/profile.d/conda.sh ; conda activate $(CONDA_ENV_NAME)
else
    CONDA_ACTIVATE := true
endif
endif


# You can set these variables from the command line.
SPHINXOPTS    = -Dversion=$(shell git describe --tags)
SPHINXBUILD   = sphinx-build
SOURCEDIR     = source
BUILDDIR      = _build
OUTPUTDIR     = html
FILENAME      = znotes
# IMAGEDIRS can be a list of directories that contain SVG files and are relative to the SOURCEDIR
IMAGEOBJS     = $(sort $(dir $(wildcard source/img/* source/*/img/* source/*/*/img/* source/*/*/*/img/* source/*/*/*/*/img/*)))
IMAGEDIRS     = $(patsubst source/%/, %, $(IMAGEOBJS)) # remove source/ and last /
IMAGEDIRS    += img/icons
# SVG to PDF conversion
SVG2PDF       = inkscape
SVG2PDF_FLAGS = -C

# SVG to PNG conversion
SVG2PNG       = inkscape
SVG2PNG_FLAGS = -C -d=90 --export-background-opacity=\#00

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# Pattern rule for converting SVG to PDF
%.pdf : %.svg
	$(SVG2PDF) $(SVG2PDF_FLAGS) -o $@ $<

# Pattern rule for converting SVG to PNG
%.png : %.svg
	$(SVG2PNG) $(SVG2PNG_FLAGS) -o $@ $<

# Build a list of SVG files to convert to PDFs
PDFs := $(foreach dir, $(IMAGEDIRS), $(patsubst %.svg,%.pdf,$(wildcard $(SOURCEDIR)/$(dir)/*.svg)))

# Build a list of SVG files to convert to PNGs
PNGs := $(foreach dir, $(IMAGEDIRS), $(patsubst %.svg,%.png,$(wildcard $(SOURCEDIR)/$(dir)/*.svg)))

# Make a rule to build the PDFs
images-pdf: $(PDFs)

# Make a rule to build the PNGs
images-png: $(PNGs)

# Make a rule to build the images
images: images-pdf images-png

clean-pdf:
	-rm $(PDFs)

clean-png:
	-rm $(PNGs)

clean-images: clean-pdf clean-png

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
#%: Makefile
# @$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: clean
clean: clean-images
	rm -rf $(BUILDDIR)/*

.PHONY: clean-quick
clean-quick:
	rm -rf $(BUILDDIR)/*

.PHONY: index
index:
	chmod +x source/_static/jar/plantuml.jar
	if [ -a $(SOURCEDIR)/index.rst ]; then rm $(SOURCEDIR)/index.rst; fi;
	cp $(SOURCEDIR)/index_html.rst $(SOURCEDIR)/index.rst

.PHONY: html
html: index # images-png
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html."

.PHONY: publichtml
publichtml: index html
	mkdir -p $(OUTPUTDIR)/html/
	cp -R $(BUILDDIR)/html/* $(OUTPUTDIR)
	@echo "html files copied; the html files are in $(OUTPUTDIR)/html/."

.PHONY: livehtml
livehtml: index
	@$(CONDA_ACTIVATE); sphinx-autobuild --port 0 --open-browser -b html "$(SOURCEDIR)" "$(BUILDDIR)/html" $(SPHINXOPTS)

.PHONY: openhtml
openhtml:
	python -c "import os;os.system('start $(BUILDDIR)/html/index.html')"

.PHONY: epub
epub:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The epub file is in $(BUILDDIR)/epub."

.PHONY: latex
latex: # images-pdf
	if [ -a $(SOURCEDIR)/index.rst ]; then rm $(SOURCEDIR)/index.rst; fi;
	cp $(SOURCEDIR)/index_html.rst $(SOURCEDIR)/index.rst
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex."
	@echo "Run \`make' in that directory to run these through (pdf)latex" \
				"(use \`make latexpdf' here to do that automatically)."

.PHONY: latexpdf
latexpdf: # images-pdf
	if [ -a $(SOURCEDIR)/index.rst ]; then rm $(SOURCEDIR)/index.rst; fi;
	cp $(SOURCEDIR)/index_latex.rst $(SOURCEDIR)/index.rst
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "Running LaTeX files through pdflatex..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf
	@echo "xelatex finished; the PDF files are in $(BUILDDIR)/latex."
	mkdir -p $(OUTPUTDIR)/
	cp $(BUILDDIR)/latex/$(FILENAME).pdf $(OUTPUTDIR)/$(FILENAME).pdf
	@echo "pdf copied; the PDF files are in $(OUTPUTDIR)/$(FILENAME).pdf."

.PHONY: latexpdfja
latexpdfja: # images-pdf
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "Running LaTeX files through platex and dvipdfmx..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf-ja
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

.PHONY: linkcheck
linkcheck:
	@$(CONDA_ACTIVATE); $(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Link check complete; look for any errors in the above output " \
				"or in $(BUILDDIR)/linkcheck/output.txt."

.PHONY: doctest
doctest:
	@$(CONDA_ACTIVATE); $(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "Testing of doctests in the sources finished, look at the " \
				"results in $(BUILDDIR)/doctest/output.txt."

.PHONY: coverage
coverage:
	@$(CONDA_ACTIVATE); $(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "Testing of coverage in the sources finished, look at the " \
				"results in $(BUILDDIR)/coverage/python.txt."
