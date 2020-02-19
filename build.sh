#! /bin/bash

function search() {
  tags=#1
  ~/bin/pdflatex -synctex=1 -interaction=nonstopmode --output-directory=build -jobname="$tags" '\renewcommand\searchResult[2]{\search{#1}{#2}{'$tags'}}\input MathsNotesBase'
}

~/bin/pdflatex -synctex=1 -interaction=nonstopmode --output-directory=build MathsNotesBase.tex
cp -p build/MathsNotesBase.pdf pdf/maths_notes.pdf

search "vector spaces"
cp -p "build/vector spaces.pdf" "pdf/vector spaces.pdf"
