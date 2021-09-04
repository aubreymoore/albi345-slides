#!/bin/bash
echo $1
if test -r $1
then
    papermill -p PDFPATH $1 pdf2reveal.ipynb out.ipynb
	git pull
	git add .
	git commit -m "$1"
	git push
else
    echo "ERROR: Cannot find PDF at $1"
fi
