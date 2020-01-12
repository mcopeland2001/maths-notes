@echo on

pdflatex -synctex=1 -interaction=nonstopmode --output-directory=build MathsNotesBase.tex
copy build\MathsNotesBase.pdf d:\GoogleDrive\tmp\maths_notes.pdf

CALL search "vector spaces"
copy "build\vector spaces.pdf" "d:\GoogleDrive\tmp\vector spaces.pdf"
