\ProvidesClass{naklatex}

\LoadClass[
	%oneside, % If commented out its two-sided
	bibliography=totoc,
	index=totoc,
	listof=totoc,
	fontsize=12pt,
	headings=small,
	parskip=half,
    openany,
    numbers=noenddot,
    dvipsnames, % for xcolor
]{scrbook}

\input{settings/advanced/silence.tex}

\RequirePackage[english,ngerman]{babel} % german language package
\RequirePackage[ngerman=ngerman-x-latest]{hyphsubst}

\RequirePackage[utf8]{inputenc} % utf8 Support
\RequirePackage[T1]{fontenc} % encoding to enable special characters
\RequirePackage{latexsym} % additional characters

\RequirePackage{stmaryrd} % font stuff
\RequirePackage[babel, german=quotes]{csquotes}
\RequirePackage{lmodern} % rendered font

\RequirePackage{eurosym} % euro symbol

\RequirePackage{etoolbox}

% load hyperref last but before glossaries
\RequirePackage[hyphens]{url} %break urls
\RequirePackage[hidelinks]{hyperref}
\hypersetup{bookmarksnumbered}

% glossary settings
\RequirePackage[automake,nonumberlist,acronym,toc,nopostdot,style=super]{glossaries}
\renewcommand{\glsnamefont}[1]{\textbf{#1}}
\makeglossaries

\newcommand{\finishWork}{}

\input{cover/assignment}
\input{cover/transfer}
\input{cover/expose}
\input{cover/thesis}

\ProcessOptions\relax

\newcommand*{\matriculationnumber}[1]{\gdef\@matriculationnumber{#1}}

% assignment specific variables
\newcommand*{\modulenumber}[1]{\gdef\@modulenumber{#1}}
\newcommand*{\modulename}[1]{\gdef\@modulename{#1}}
\newcommand*{\lecturer}[1]{\gdef\@lecturer{#1}}

% transfermodule specific variables
\newcommand*{\transfermodulenumber}[1]{\gdef\@transfermodulenumber{#1}}
\newcommand*{\centurion}[1]{\gdef\@centurion{#1}}

% thesis specific variables
\newcommand*{\studyprogramme}[1]{\gdef\@studyprogramme{#1}}

\newcommand*{\authoraddress}[1]{\gdef\@authoraddress{#1}}
\newcommand*{\phonenumber}[1]{\gdef\@phonenumber{#1}}
\newcommand*{\mailaddress}[1]{\gdef\@mailaddress{#1}}

\newcommand*{\dateStart}[1]{\gdef\@dateStart{#1}}
\newcommand*{\dateFinish}[1]{\gdef\@dateFinish{#1}}

\newcommand*{\appraiser}[1]{\gdef\@appraiser{#1}}
\newcommand*{\coappraiser}[1]{\gdef\@coappraiser{#1}}
 
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\supervisoraddress}[1]{\gdef\@supervisoraddress{#1}}
\newcommand*{\supervisorphonenumber}[1]{\gdef\@supervisorphonenumber{#1}}
\newcommand*{\supervisormailaddress}[1]{\gdef\@supervisormailaddress{#1}}

\input{settings/settings}