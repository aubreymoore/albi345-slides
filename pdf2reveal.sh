#!/bin/bash
echo "$1"
if test -f "$1"; then
    papermill -p PDFPATH $1 pdf2reveal.ipynb out.ipynb
fi
