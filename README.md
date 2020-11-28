<h1 align="center">
  <br>
  <img src="./source/img/logo.svg" alt="Z-Notes Logo" width="250">
  <br>
  Z-Notes Knowledge Database
  <br>
</h1>

This is the static sphinx documentation for myself

[![pipeline status](https://gitlab.hevs.ch/SPL/spl-docs/badges/master/pipeline.svg)](https://gitlab.hevs.ch/SPL/spl-docs/commits/master)

# How to use the Sphinx Documentation Platform
## Sphinx Requirements

* make
  * Windows - [GnuWin32](http://gnuwin32.sourceforge.net/packages/make.htm)
  * Linux
    ``` bash
    sudo apt-get install build-essential
    ```
* Python 3
   * [Python](https://www.python.org/downloads/)
   * [Anaconda](https://www.anaconda.com/distribution/)
* Python Modules (can be installed with pipenv)
  ``` bash
  pip install sphinx
  pip install sphinx-rtd-theme
  pip install sphinxcontrib-wavedrom
  pip install sphinxcontrib-plantuml
  pip install recommonmark
  ```
* Latex Tools (only for latex build)
   * Windows
      * [MikTex](https://miktex.org/)
      * [TexStudio](https://www.texstudio.org/)
   * Linux
     ``` bash
     sudo apt install texlive-full
     ```
* Inkscape (for `.svg` to `.pdf` and to `.png` conversion)
   * Windows - [Inkscape](https://inkscape.org/release/)
   * Linux
     ``` bash
     sudo apt-get install inkscape
     ```

## How to create a new Sphinxdoc

``` bash
sphinx-quickstart
```

## How to Build Sphinxdoc locally

### Without pipenv

* Install requirements see: [Sphinx Requirements](./source/about/sphinx.rst)
* `cd` to the git folder
* Generate the desired output
  ``` bash
  make          # list all the available output format
  make help     # list all the available output format

  make html     # for html
  make latex    # for latex
  make latexpdf # for latex (will require latexpdf installed)

  make clean    # cleans all generated file, TODO before commiting
  make clean-images # cleans all autogerated png and pdf files
  ```

### With pipenv

* Install requirements see: [Sphinx Requirements](./source/about/sphinx.rst)
* Create a virtual environment with pipenv (will use the Pipfile for installing the necessary packages)
  ``` bash
  pipenv install
  ```
* then you can build the documentation
  ``` bash
  pipenv run make html
  ```
* if you want run `make` multiple times, prepone `pipenv run` on each command can be annoying, you can spawn a subshell with
  ``` bash
     pipenv shell
  ```
* and then you can use `make` the usual way
  ``` bash
  make          # list all the available output format
  make help     # list all the available output format

  make html     # for html
  make latex    # for latex
  make latexpdf # for latex (will require latexpdf installed)

  make clean    # cleans all generated file, TODO before commiting
  make clean-images # cleans all autogerated png and pdf files
  ```

all the outputs will be in `_build` folder

* html: `_build/html`
* pdf & tex: `_build/latex`

### Continuous Build
During developement or creation of a page, the script [build-loop.bash](./build-loop.bash) will rebuild the webpages every X seconds.
In this way a constant preview of the page can be shown.

## Commit to Repository
Before performing a commit the following steps are required:

* Verify the `html` documentation local [How to Build Sphinxdoc locally](./README.md#How_to_Build_Sphinxdoc_locally)
  ``` bash
  make html
  ```
* Solve all build `Warnings` and `Errors` display during build in the commandline
* Generate `pdf`
  ``` bash
  make latexpdf
  ```
* Clean the repo from generated files
  ``` bash
  make clean
  ```
* Commit and push the changes [Continuous Integration (CI)](./README.md#Continuous_Integration(CI))

## Continuous Integration(CI)
The [.travis.yml](./.travis.yml) will run on each `master` commit and create a `_build/` folder which will be pushed onto the branch gh-pages and consequently be used by github to displayed static html pages.