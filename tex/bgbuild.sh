#!/bin/bash

latexmk -output-directory=../build -pdf -pvc -view=none -interaction=nonstopmode 'Pure Mathematics.tex'
