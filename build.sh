#! /bin/bash

function search() {
  tags="$@"
  pdflatex -synctex=1 -interaction=nonstopmode --output-directory=build -jobname="$tags" '\renewcommand\searchResult[2]{\search{#1}{#2}{'$tags'}}\input "Pure Mathematics.tex"'
}

pdflatex -synctex=1 -interaction=nonstopmode --output-directory=build 'Pure Mathematics.tex'
cp -p "build/Pure Mathematics.pdf" "pdf/Pure Mathematics.pdf"

# search "vector spaces"
# cp -p "build/vector spaces.pdf" "pdf/vector spaces.pdf"
