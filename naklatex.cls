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

\RequirePackage[ngerman]{babel} % german language package
\RequirePackage[ngerman=ngerman-x-latest]{hyphsubst}

\RequirePackage[utf8]{inputenc} % utf8 Support
\RequirePackage[T1]{fontenc} % encoding to enable special characters
\RequirePackage{latexsym} % additional characters

\RequirePackage{stmaryrd} % font stuff
\RequirePackage[babel, german=quotes]{csquotes}
\RequirePackage{lmodern} % rendered font

\RequirePackage{eurosym} % euro symbol

\usepackage{etoolbox}

% for custom scripts f.e. filling colors.. https://tex.stackexchange.com/questions/83992/how-to-create-and-include-tikz-files-in-your-manuscript
% Tikz-Import
\RequirePackage{tikz}
\usetikzlibrary{fadings}

% pdf im text
\RequirePackage{pdfpages}
\RequirePackage[export]{adjustbox}

% load hyperref last but before glossaries
\RequirePackage[hyphens]{url} %break urls
\RequirePackage[hidelinks]{hyperref}
\hypersetup{bookmarksnumbered}

% glossary settings
\RequirePackage[automake,nonumberlist,acronym,toc,nopostdot,style=super]{glossaries}
\renewcommand{\glsnamefont}[1]{\textbf{#1}}
\makeglossaries

% literature settings
\usepackage[backend=biber, style=alphabetic, hyperref=true, natbib=true, maxbibnames=9, maxcitenames=2]{biblatex}
\DefineBibliographyStrings{ngerman}{andothers = {{et\,al\adddot}},}
\ExecuteBibliographyOptions{sorting=nty}
\addbibresource{sources.bib}

\ProcessOptions\relax

\input{settings/settings}