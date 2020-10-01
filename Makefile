# Makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    = -Dversion=$(shell git describe --tags)
SPHINXBUILD   = sphinx-build
SOURCEDIR     = source
BUILDDIR      = _build
OUTPUTDIR     = html
FILENAME      = zawiki
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
	$(SVG2PDF) $(SVG2PDF_FLAGS) -f $< -A $@

# Pattern rule for converting SVG to PNG
%.png : %.svg
	$(SVG2PNG) $(SVG2PNG_FLAGS) -f $< -e $@

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
	sphinx-autobuild --port 0 --open-browser -b html "$(SOURCEDIR)" "$(BUILDDIR)/html" $(SPHINXOPTS)

.PHONY: openhtml
openhtml:
	python -c "import os;os.system('start $(BUILDDIR)/html/index.html')"

.PHONY: dirhtml
dirhtml:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The HTML pages are in $(BUILDDIR)/dirhtml."

.PHONY: singlehtml
singlehtml:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The HTML page is in $(BUILDDIR)/singlehtml."

.PHONY: pickle
pickle:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished; now you can process the pickle files."

.PHONY: json
json:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished; now you can process the JSON files."

.PHONY: htmlhelp
htmlhelp:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished; now you can run HTML Help Workshop with the" \
				".hhp project file in $(BUILDDIR)/htmlhelp."

.PHONY: qthelp
qthelp:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished; now you can run "qcollectiongenerator" with the" \
				".qhcp project file in $(BUILDDIR)/qthelp, like this:"
	@echo "# qcollectiongenerator $(BUILDDIR)/qthelp/Example.qhcp"
	@echo "To view the help file:"
	@echo "# assistant -collectionFile $(BUILDDIR)/qthelp/Example.qhc"

.PHONY: applehelp
applehelp:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The help book is in $(BUILDDIR)/applehelp."
	@echo "N.B. You won't be able to view it unless you put it in" \
				"~/Library/Documentation/Help or install it in your application" \
				"bundle."

.PHONY: devhelp
devhelp:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished."
	@echo "To view the help file:"
	@echo "# mkdir -p $$HOME/.local/share/devhelp/Example"
	@echo "# ln -s $(BUILDDIR)/devhelp $$HOME/.local/share/devhelp/Example"
	@echo "# devhelp"

.PHONY: epub
epub:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The epub file is in $(BUILDDIR)/epub."

.PHONY: latex
latex: images-pdf
	if [ -a $(SOURCEDIR)/index.rst ]; then rm $(SOURCEDIR)/index.rst; fi;
	cp $(SOURCEDIR)/index_html.rst $(SOURCEDIR)/index.rst
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished; the LaTeX files are in $(BUILDDIR)/latex."
	@echo "Run \`make' in that directory to run these through (pdf)latex" \
				"(use \`make latexpdf' here to do that automatically)."

.PHONY: latexpdf
latexpdf: images-pdf
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
latexpdfja: images-pdf
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "Running LaTeX files through platex and dvipdfmx..."
	$(MAKE) -C $(BUILDDIR)/latex all-pdf-ja
	@echo "pdflatex finished; the PDF files are in $(BUILDDIR)/latex."

.PHONY: text
text:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The text files are in $(BUILDDIR)/text."

.PHONY: man
man:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The manual pages are in $(BUILDDIR)/man."

.PHONY: texinfo
texinfo:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The Texinfo files are in $(BUILDDIR)/texinfo."
	@echo "Run \`make' in that directory to run these through makeinfo" \
				"(use \`make info' here to do that automatically)."

.PHONY: info
info:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "Running Texinfo files through makeinfo..."
	make -C $(BUILDDIR)/texinfo info
	@echo "makeinfo finished; the Info files are in $(BUILDDIR)/texinfo."

.PHONY: gettext
gettext:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The message catalogs are in $(BUILDDIR)/locale."

.PHONY: changes
changes:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "The overview file is in $(BUILDDIR)/changes."

.PHONY: linkcheck
linkcheck:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Link check complete; look for any errors in the above output " \
				"or in $(BUILDDIR)/linkcheck/output.txt."

.PHONY: doctest
doctest:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "Testing of doctests in the sources finished, look at the " \
				"results in $(BUILDDIR)/doctest/output.txt."

.PHONY: coverage
coverage:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "Testing of coverage in the sources finished, look at the " \
				"results in $(BUILDDIR)/coverage/python.txt."

.PHONY: xml
xml:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The XML files are in $(BUILDDIR)/xml."

.PHONY: pseudoxml
pseudoxml:
	$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo
	@echo "Build finished. The pseudo-XML files are in $(BUILDDIR)/pseudoxml."
