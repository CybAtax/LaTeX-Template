\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{naklatex}

\LoadClass[
	oneside,
	bibliography=totoc,
	index=totoc,
	listof=totoc,
	fontsize=12pt,
	headings=small,
	parskip=half
]{scrbook}

\RequirePackage{scrhack} % package for compatibility with listings
\RequirePackage{listings} % code formatting
\RequirePackage{xstring} % string comparison (transfermodule course of study)
\RequirePackage[ngerman]{babel} % deutsches Sprachpaket
\RequirePackage[ngerman=ngerman-x-latest]{hyphsubst}
\RequirePackage[utf8]{inputenc} % utf8 Support
\RequirePackage{stmaryrd}
\RequirePackage[babel, german=quotes]{csquotes}
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern} % Gerenderte Schrift
\RequirePackage{microtype}
\RequirePackage{eurosym} % Euro Symbol
\RequirePackage{tabularx}

\usepackage{tabulary} %for custom table in the first page
\usepackage{colortbl}
\usepackage{etoolbox}

\RequirePackage{latexsym}

%for custom scripts f.e. filling colors.. https://tex.stackexchange.com/questions/83992/how-to-create-and-include-tikz-files-in-your-manuscript
%Tikz-Import
\RequirePackage{tikz}
\usetikzlibrary{fadings}

%pdf im text
\RequirePackage{pdfpages}
\RequirePackage[export]{adjustbox}

%load hyperref last but before glossaries
\RequirePackage[hyphens]{url} %break urls
\RequirePackage[hidelinks]{hyperref}
\hypersetup{bookmarksnumbered}

\RequirePackage[automake,nonumberlist,acronym,toc,nopostdot,style=super]{glossaries}
\renewcommand{\glsnamefont}[1]{\textbf{#1}}
\makeglossaries

\ProcessOptions\relax

\input{settings/page}

\input{settings/image}
\input{settings/codestyle}