#!/bin/bash

usage() {
	echo "usage: ./generate_pdfs.sh [OPTION]"
	echo ""
	echo "This script generates the dark and light themed CV pdfs according to the arguments."
   	echo "If no arguments are passed both versions are generated."
	echo ""
	echo "-l, --light	Generate CV with light theme."
	echo "-d, --dark	Generate CV with dark theme."
	echo "-h, --help	Disaply this message."
}

if [ $# -ne 0 ] 
then
	while :; do
		case $1 in 
			-l|--light)
				echo "Generating CV with light theme."
				latexmk -pdf -outdir=aux -auxdir=aux -jobname=light CV.tex > /dev/null 2>&1
				mv aux/light.pdf .
				;;
			-d|--dark)
				echo "Generating CV with dark theme."
				latexmk -pdf -outdir=aux -auxdir=aux -jobname=dark CV.tex > /dev/null 2>&1
				mv aux/dark.pdf .
				;;
			-h|--help)
				usage
				exit
				;;
			--)
				shift
				break
				;;
			-?*)
				echo "Unknown option.";
				;;
			*)
				break
		esac
		shift
	done
# getopts variant
#	while getopts "ld" opt; do
#		case $opt in
#			l)
#				echo "Generating CV with light theme."
#				latexmk -pdf -outdir=aux -auxdir=aux -jobname=light CV.tex > /dev/null 2>&1
#				mv aux/light.pdf .
#				;;
#			d)
#				echo "Generating CV with dark theme."
#				latexmk -pdf -outdir=aux -auxdir=aux -jobname=dark CV.tex > /dev/null 2>&1
#				mv aux/dark.pdf .
#				;;
#			\?)
#				echo "Invalid option: -$OPTARG" >&2
#				exit 1
#				;;
#		esac
#	done
else
			echo "Generating CV with light theme."
			latexmk -pdf -outdir=aux -auxdir=aux -jobname=light CV.tex > /dev/null 2>&1
			echo "Generating CV with dark theme."
			latexmk -pdf -outdir=aux -auxdir=aux -jobname=dark CV.tex > /dev/null 2>&1
			mv aux/light.pdf .
			mv aux/dark.pdf .
fi

echo "Removing auxiliary files."
rm -rf aux
echo "Done."
