#!zsh

# Nettoyage des fichiers de compilation

## Fichier LaTeX
rm -f *.aux
rm -f *.bbl
rm -f *.bcf
rm -f *.blg
rm -f *.fls
rm -f *.loc
rm -f *.log
rm -f *.out
rm -f *.soc
rm -f *.synctex.gz
rm -f *.toc

## Fichiers LaTeXmk
rm -f *.fdb_latexmk

## Fichiers pyLaTeX
rm -rf __pycache__
rm -rf pythontex-files-*
rm -rf *.pytxcode
rm -rf *.run.xml

## Sorties de graphiques
rm -f *.pgf

## Retirer les vieilles sorties
ls -t *-*-*.pdf > fichiers_version.txt
tail -n +2 fichiers_version.txt > supprimer.txt
rm $(cat supprimer.txt)
rm supprimer.txt
rm fichiers_version.txt
