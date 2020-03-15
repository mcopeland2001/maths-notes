@echo on

pdflatex -synctex=1 -interaction=nonstopmode --output-directory=build "Pure Mathematics.tex"
copy "build\Pure Mathematics.pdf" "pdf\Pure Mathematics.pdf"

CALL search "vector spaces"
copy "build\vector spaces.pdf" "pdf\vector spaces.pdf"
