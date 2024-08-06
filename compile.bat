@echo off
set PATH=%PATH%;%LOCALAPPDATA%\Programs\MiKTeX\miktex\bin\x64
pdflatex ./John-Jones-Resume-2024.tex
del John-Jones-Resume-2024.aux
del John-Jones-Resume-2024.out
John-Jones-Resume-2024.pdf