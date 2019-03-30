\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wzbeamer}[2018/12/22 wz custom beamer]



\DeclareOption{noindent}{\setlength\parindent{0pt}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass{beamer}
\RequirePackage[UTF8]{ctex}
\RequirePackage{mathrsfs}
\RequirePackage{amsmath,amsfonts,amssymb,amsthm}
\RequirePackage{multirow,multicol,booktabs,bookmark}
\RequirePackage{geometry}
\RequirePackage{tcolorbox}
\RequirePackage{physics}
\RequirePackage{xcolor}
\RequirePackage{bbm}
\RequirePackage{tcolorbox}
\RequirePackage{graphicx}
\RequirePackage{subfigure}
% \RequirePackage{caption}
\RequirePackage{siunitx}
\RequirePackage{translator}

\sisetup{
    separate-uncertainty = true,
    range-phrase= -- ,
    range-units=single,
}


\setbeamertemplate{bibliography item}[text]

\def\mathfamilydefault{\rmdefault}

\definecolor[named]{link}{RGB}{141, 66, 245}
\hypersetup{colorlinks,linkcolor=link,citecolor=blue}


\newcommand{\ee}{\mathrm{e}}
\newcommand{\ii}{\mathrm{i}}
\newcommand{\mbf}[1]{\boldsymbol{#1}}

\makeatletter
\newcommand{\rmnum}[1]{\romannumeral #1}
\newcommand{\Rmnum}[1]{\expandafter\@slowromancap\romannumeral #1@}
\makeatother


\numberwithin{footnote}{section}
\numberwithin{equation}{section}

\renewtcolorbox{block}[1]{colback=blue!5!white,
colframe=blue!65!black,fonttitle=\bfseries,
title=#1}
\renewtcolorbox{alertblock}[1]{colback=red!5!white,
colframe=red!75!black,fonttitle=\bfseries,
title=#1}
\renewtcolorbox{exampleblock}[1]{colback=green!5!white,
colframe=green!55!black,fonttitle=\bfseries,
title=#1}

\let\emph\relax % there's no \RedeclareTextFontCommand
\DeclareTextFontCommand{\emph}{\bfseries\em}

\newcommand{\dbar}{\dd\hspace*{-0.08em}\bar{}\hspace*{0.1em}}