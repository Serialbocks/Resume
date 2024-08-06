@echo off
set PATH=%PATH%;%LOCALAPPDATA%\Programs\MiKTeX\miktex\bin\x64
pdflatex ./Cover-Letter.tex
del Cover-Letter.aux
del Cover-Letter.out
Cover-Letter.pdf