% lbustio_lecture_notes.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lbustio_lecture_notes}[2026/01/11 Lecture notes class (Agenda-style)]

% -------------------------------------------------
% Base class
% -------------------------------------------------
\LoadClass[12pt,letterpaper]{article}

% -------------------------------------------------
% Packages
% -------------------------------------------------
% Robust key=value options (MUST be before babel)
\RequirePackage{kvoptions}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}

% -------------------------------------------------
% Class options (key=value)
% -------------------------------------------------
\SetupKeyvalOptions{
  family=ibero,
  prefix=ibero@
}

% Language options
% lang: main language for babel (e.g., spanish, english, french)
% otherlangs: comma-separated list of extra babel languages (e.g., english,french)
\DeclareStringOption[spanish]{lang}
\DeclareStringOption[]{otherlangs}
\DeclareStringOption[1in]{margin}
\DeclareStringOption[0.85in]{bottommargin}

% Author (header)
\DeclareStringOption[]{authorname}
\DeclareStringOption[]{authorsurname}
\DeclareStringOption[]{author}
\DeclareStringOption[]{authortitle}
\DeclareStringOption[]{role}
\DeclareStringOption[]{email}
\DeclareStringOption[]{phone}
\DeclareStringOption[]{ext}

% Institution (footer + cover)
\DeclareStringOption[]{institution}
\DeclareStringOption[]{university}
\DeclareStringOption[]{unit}
\DeclareStringOption[]{department}
\DeclareStringOption[]{address}

% Course/document metadata
\DeclareStringOption[]{coursetitle}
\DeclareStringOption[]{coursehours}
\DeclareStringOption[]{coursedate}
\DeclareStringOption[]{term}
\DeclareStringOption[]{doctype}

\ProcessKeyvalOptions*

% Prevent class-only key=value options from being parsed by packages.
\let\@classoptionslist\@empty

\RequirePackage{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage{graphicx}

% =================================================
% Callouts (Nota / Observaciones / Advertencia / Tip)
% Estilo: borde redondeado + etiqueta flotante
% =================================================
\RequirePackage{tcolorbox}
\tcbuselibrary{skins,breakable,listings}

% Paleta sobria (ajusta si quieres)
\definecolor{IberoBlueCallout}{RGB}{ 33, 87, 150}
\definecolor{IberoBlueBack}{RGB}{240, 246, 255}

\definecolor{IberoGreenCallout}{RGB}{ 34, 139,  90}
\definecolor{IberoGreenBack}{RGB}{240, 252, 246}

\definecolor{IberoRedCallout}{RGB}{170,  40,  40}
\definecolor{IberoRedBack}{RGB}{255, 242, 242}

\definecolor{IberoGrayCallout}{RGB}{ 90,  90,  90}
\definecolor{IberoGrayBack}{RGB}{247, 247, 247}

% ---- Variantes (env) ----
\newtcolorbox{NotaBox}[1][]{%
  enhanced,breakable,
  colback=IberoBlueBack,
  colframe=IberoBlueCallout,
  boxrule=0.9pt,arc=3.2mm,
  left=10pt,right=10pt,top=12pt,bottom=10pt,
  before skip=10pt,after skip=10pt,
  title={Nota:},
  attach boxed title to top left={xshift=10pt,yshift=-2mm},
  boxed title style={
    enhanced,colback=white,colframe=IberoBlueCallout,
    boxrule=0.9pt,arc=2.4mm,left=7pt,right=7pt,top=2pt,bottom=2pt
  },
  fonttitle=\bfseries,coltitle=black,
  #1
}

\newtcolorbox{ObservacionesBox}[1][]{%
  enhanced,breakable,
  colback=IberoGrayBack,
  colframe=IberoGrayCallout,
  boxrule=0.9pt,arc=3.2mm,
  left=10pt,right=10pt,top=12pt,bottom=10pt,
  before skip=10pt,after skip=10pt,
  title={Observaciones:},
  attach boxed title to top left={xshift=10pt,yshift=-2mm},
  boxed title style={
    enhanced,colback=white,colframe=IberoGrayCallout,
    boxrule=0.9pt,arc=2.4mm,left=7pt,right=7pt,top=2pt,bottom=2pt
  },
  fonttitle=\bfseries,coltitle=black,
  #1
}

\newtcolorbox{AdvertenciaBox}[1][]{%
  enhanced,breakable,
  colback=IberoRedBack,
  colframe=IberoRedCallout,
  boxrule=0.9pt,arc=3.2mm,
  left=10pt,right=10pt,top=12pt,bottom=10pt,
  before skip=10pt,after skip=10pt,
  title={Advertencia:},
  attach boxed title to top left={xshift=10pt,yshift=-2mm},
  boxed title style={
    enhanced,colback=white,colframe=IberoRedCallout,
    boxrule=0.9pt,arc=2.4mm,left=7pt,right=7pt,top=2pt,bottom=2pt
  },
  fonttitle=\bfseries,coltitle=black,
  #1
}

\newtcolorbox{TipBox}[1][]{%
  enhanced,breakable,
  colback=IberoGreenBack,
  colframe=IberoGreenCallout,
  boxrule=0.9pt,arc=3.2mm,
  left=10pt,right=10pt,top=12pt,bottom=10pt,
  before skip=10pt,after skip=10pt,
  title={Tip:},
  attach boxed title to top left={xshift=10pt,yshift=-2mm},
  boxed title style={
    enhanced,colback=white,colframe=IberoGreenCallout,
    boxrule=0.9pt,arc=2.4mm,left=7pt,right=7pt,top=2pt,bottom=2pt
  },
  fonttitle=\bfseries,coltitle=black,
  #1
}

% ---- Atajos (comandos) ----
\newcommand{\Nota}[1]{\begin{NotaBox}#1\end{NotaBox}}
\newcommand{\Observaciones}[1]{\begin{ObservacionesBox}#1\end{ObservacionesBox}}
\newcommand{\Advertencia}[1]{\begin{AdvertenciaBox}#1\end{AdvertenciaBox}}
\newcommand{\Tip}[1]{\begin{TipBox}#1\end{TipBox}}

% Math (keep LaTeX's default Computer Modern fonts)
\RequirePackage{mathtools}

% Algorithms / pseudocode
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}

% Code listings (syntax highlighting; no shell-escape needed)
\RequirePackage{listings}

% Notes/observations boxes
% \RequirePackage[most]{tcolorbox}

% -------------------------------------------------
% babel (configurable main + optional extra languages)
% -------------------------------------------------
\begingroup
\edef\ibero@babelopts{main=\ibero@lang}%
\ifx\ibero@otherlangs\empty
  \edef\ibero@loadbabel{\endgroup
    \noexpand\RequirePackage[\ibero@babelopts]{babel}}%
\else
  \edef\ibero@babelopts{\ibero@babelopts,\ibero@otherlangs}%
  \edef\ibero@loadbabel{\endgroup
    \noexpand\RequirePackage[\ibero@babelopts]{babel}}%
\fi
\ibero@loadbabel

% -------------------------------------------------
% Geometry
% -------------------------------------------------
\geometry{
  letterpaper,
  includeheadfoot,
  left=\ibero@margin,
  right=\ibero@margin,
  top=\ibero@margin,
  bottom=\ibero@bottommargin,
  headheight=52pt,
  headsep=14pt,
  footskip=52pt
}
\setlength{\headheight}{52pt}
\setlength{\footskip}{52pt}

\hypersetup{
  colorlinks=true,
  linkcolor=black,
  urlcolor=black
}

% Cover rule color (Word blue)
\definecolor{IberoBlue}{RGB}{0,112,192}
\definecolor{IberoHeaderMuted}{RGB}{120,120,120}

% -------------------------------------------------
% Algorithms formatting tweaks (readability)
% -------------------------------------------------
\algrenewcommand\algorithmiccomment[1]{\hfill\(\triangleright\) #1}
\algrenewcommand\algorithmicrequire{\textbf{Input:}}
\algrenewcommand\algorithmicensure{\textbf{Output:}}

% -------------------------------------------------
% Code listings style (safe defaults + Spanish chars)
% -------------------------------------------------
\lstdefinestyle{lbustio-default}{
  basicstyle=\ttfamily\small,
  numbers=left,
  numberstyle=\tiny,
  stepnumber=1,
  numbersep=8pt,
  showstringspaces=false,
  breaklines=true,
  breakatwhitespace=true,
  keepspaces=true,
  columns=fullflexible,
  tabsize=2,
  frame=single,
  framerule=0.4pt,
  xleftmargin=2.2em,
  framexleftmargin=1.8em,
  aboveskip=10pt,
  belowskip=10pt,
  upquote=true,
  inputencoding=utf8,
  extendedchars=true,
  literate=
    {á}{{\'a}}1 {é}{{\'e}}1 {í}{{\'i}}1 {ó}{{\'o}}1 {ú}{{\'u}}1
    {Á}{{\'A}}1 {É}{{\'E}}1 {Í}{{\'I}}1 {Ó}{{\'O}}1 {Ú}{{\'U}}1
    {ñ}{{\~n}}1 {Ñ}{{\~N}}1
    {ü}{{\"u}}1 {Ü}{{\"U}}1
}

\lstset{style=lbustio-default}

% Convenience environments by language
\lstnewenvironment{pythoncode}{\lstset{language=Python}}{}
\lstnewenvironment{ccode}{\lstset{language=C}}{}
\lstnewenvironment{cppcode}{\lstset{language=C++}}{}
\lstnewenvironment{pascalcode}{\lstset{language=Pascal}}{}

% -------------------------------------------------
% NEW: Boxed source code with language label (consistent with callouts)
% -------------------------------------------------
% Usage:
%   \begin{CodeBox}{Python}
%   ...
%   \end{CodeBox}
% Optional:
%   \begin{CodeBox}[title={C\'odigo fuente \texttt{Python} (ejemplo)}]{Python}
%   ...
%   \end{CodeBox}
\newtcblisting{CodeBox}[2][]{%
  enhanced,
  breakable,
  colback=IberoGrayBack,
  colframe=IberoGrayCallout,
  boxrule=0.9pt,
  arc=3.2mm,
  left=10pt,right=10pt,top=12pt,bottom=10pt,
  before skip=10pt,after skip=10pt,
  title={C\'odigo fuente \texttt{#2}},
  attach boxed title to top left={xshift=10pt,yshift=-2mm},
  boxed title style={
    enhanced,
    colback=white,
    colframe=IberoGrayCallout,
    boxrule=0.9pt,
    arc=2.4mm,
    left=7pt,right=7pt,top=2pt,bottom=2pt
  },
  fonttitle=\bfseries,
  coltitle=black,
  listing engine=listings,
  listing only,
  listing options={style=lbustio-default,language=#2},
  #1
}

% -------------------------------------------------
% Stable internal macros
% -------------------------------------------------
\newcommand{\IberoAuthorName}{\ibero@authorname}
\newcommand{\IberoAuthorSurname}{\ibero@authorsurname}
\newcommand{\IberoAuthor}{\ibero@author}
\newcommand{\IberoAuthorTitle}{\ibero@authortitle}
\newcommand{\IberoRole}{\ibero@role}
\newcommand{\IberoEmail}{\ibero@email}
\newcommand{\IberoPhone}{\ibero@phone}
\newcommand{\IberoExt}{\ibero@ext}

\newcommand{\IberoInstitution}{%
  \ifx\ibero@institution\empty\IberoUniversity\else\ibero@institution\fi
}
\newcommand{\IberoUniversity}{\ibero@university}
\newcommand{\IberoUnit}{\ibero@unit}
\newcommand{\IberoDepartment}{\ibero@department}
\newcommand{\IberoAddress}{\ibero@address}

\newcommand{\IberoCourseTitle}{\ibero@coursetitle}
\newcommand{\IberoCourseHours}{\ibero@coursehours}
\newcommand{\IberoCourseDate}{%
  \ibero@coursedate
}
\newcommand{\IberoTerm}{\ibero@term}
\newcommand{\IberoDocType}{\ibero@doctype}

\newif\ifibero@hasauthorname
\ibero@hasauthornamefalse
\ifx\ibero@authorname\empty
  \ifx\ibero@authorsurname\empty
    \ifx\ibero@author\empty\else\ibero@hasauthornametrue\fi
  \else
    \ibero@hasauthornametrue
  \fi
\else
  \ibero@hasauthornametrue
\fi

\newif\ifibero@hasauthorline
\ibero@hasauthorlinefalse
\ifibero@hasauthorname\ibero@hasauthorlinetrue\fi
\ifx\ibero@authortitle\empty\else\ibero@hasauthorlinetrue\fi

\newif\ifibero@hascontactline
\ibero@hascontactlinefalse
\ifx\ibero@email\empty\else\ibero@hascontactlinetrue\fi
\ifx\ibero@phone\empty\else\ibero@hascontactlinetrue\fi
\ifx\ibero@ext\empty\else\ibero@hascontactlinetrue\fi

\newif\ifibero@hasinstitutionline
\ibero@hasinstitutionlinefalse
\ifx\ibero@institution\empty
  \ifx\ibero@university\empty\else\ibero@hasinstitutionlinetrue\fi
\else
  \ibero@hasinstitutionlinetrue
\fi
\ifx\ibero@department\empty\else\ibero@hasinstitutionlinetrue\fi
\ifx\ibero@unit\empty\else\ibero@hasinstitutionlinetrue\fi

\newcommand{\IberoAuthorFullName}{%
  \ifx\ibero@authorname\empty
    \ifx\ibero@authorsurname\empty
      \IberoAuthor
    \else
      \IberoAuthorSurname
    \fi
  \else
    \IberoAuthorName\ifx\ibero@authorsurname\empty\else\ \IberoAuthorSurname\fi
  \fi
}

\newcommand{\IberoAuthorLine}{%
  \ifibero@hasauthorname
    \IberoAuthorFullName\ifx\ibero@authortitle\empty\else, \IberoAuthorTitle\fi.%
  \else
    \ifx\ibero@authortitle\empty\else\IberoAuthorTitle.\fi
  \fi
}

\newcommand{\IberoAuthorCourseLine}{%
  \ifibero@hasauthorname
    \IberoAuthorFullName\ifx\ibero@authortitle\empty\else, \IberoAuthorTitle\fi
  \else
    \ifx\ibero@authortitle\empty\else\IberoAuthorTitle\fi
  \fi
}

\newif\ifibero@contactprinted
\newcommand{\IberoContactLine}{%
  \begingroup
  \ibero@contactprintedfalse
  \ifx\ibero@email\empty\else
    \href{mailto:\IberoEmail}{\IberoEmail}\ibero@contactprintedtrue
  \fi
  \ifx\ibero@phone\empty\else
    \ifibero@contactprinted\ \fi Tel. \IberoPhone\ibero@contactprintedtrue
  \fi
  \ifx\ibero@ext\empty\else
    \ifibero@contactprinted, \fi ext. \IberoExt
  \fi
  \endgroup
}

\newif\ifibero@instprinted
\newcommand{\ibero@printinstpart}[1]{%
  \ifx#1\empty\else
    \ifibero@instprinted\ - \fi#1\ibero@instprintedtrue
  \fi
}

\newcommand{\IberoInstitutionLine}{%
  \begingroup
  \ibero@instprintedfalse
  \ifx\ibero@institution\empty
    \ibero@printinstpart{\ibero@university}%
  \else
    \ibero@printinstpart{\ibero@institution}%
  \fi
  \ibero@printinstpart{\ibero@department}%
  \ibero@printinstpart{\ibero@unit}%
  \endgroup
}

\newsavebox{\ibero@authorlinebox}
\newsavebox{\ibero@headerbox}

% -------------------------------------------------
% Header / Footer content (match Agenda)
% -------------------------------------------------
\newcommand{\IberoHeaderBody}{%
  \raggedleft\footnotesize\color{IberoHeaderMuted}%
  \ifibero@hasauthorline\IberoAuthorLine\par\fi
  \ifx\ibero@role\empty\else\IberoRole\par\fi
  \ifibero@hascontactline\IberoContactLine\fi\strut
}

\newcommand{\IberoHeader}{%
  \sbox{\ibero@authorlinebox}{\footnotesize\IberoAuthorLine}%
  \sbox{\ibero@headerbox}{\parbox[t]{\textwidth}{\IberoHeaderBody}}%
  \ifdim\wd\ibero@authorlinebox>\textwidth
    \resizebox{\textwidth}{!}{\usebox{\ibero@headerbox}}%
  \else
    \usebox{\ibero@headerbox}%
  \fi
}

\newcommand{\IberoFooter}{%
  \parbox[b]{\textwidth}{%
    \footnotesize\color{IberoHeaderMuted}%
    \raggedleft
    \ifibero@hasinstitutionline\IberoInstitutionLine.\par\fi
    \ifx\ibero@address\empty\else\IberoAddress\par\fi
    \centering\thepage\strut
  }%
}

% -------------------------------------------------
% fancyhdr setup
% -------------------------------------------------
\pagestyle{fancy}
\fancyhf{}

\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}
\renewcommand{\headrule}{\hbox to\headwidth{\color{IberoHeaderMuted}\leaders\hrule height \headrulewidth\hfill}}
\renewcommand{\footrule}{\hbox to\headwidth{\color{IberoHeaderMuted}\leaders\hrule height \footrulewidth\hfill}}

\fancyhead[R]{\IberoHeader}
\fancyfoot[C]{\IberoFooter}

\fancypagestyle{ibero-firstpage}{
  \fancyhf{}
  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\footrulewidth}{0.4pt}
  \fancyhead[R]{\IberoHeader}
  \fancyfoot[C]{\IberoFooter}
}

% -------------------------------------------------
% Section formatting
% -------------------------------------------------
\titleformat{\section}{\bfseries}{\thesection.}{0.6em}{}
\titleformat{\subsection}{\bfseries}{\thesubsection.}{0.6em}{}

% -------------------------------------------------
% Cover macro (Agenda-style blue rules)
% -------------------------------------------------
\newcommand{\IberoCourseInfo}{%
\thispagestyle{ibero-firstpage}

\vspace*{18pt}

\noindent{\color{IberoBlue}\rule{\textwidth}{0.6pt}}\\[-2pt]
\ifx\ibero@coursetitle\empty\else
\begin{center}
{\Large\bfseries \IberoCourseTitle\par}
\end{center}
\vspace{-4pt}
\fi
\noindent{\color{IberoBlue}\rule{\textwidth}{0.6pt}}

\vspace{18pt}
\begin{center}
\ifibero@hasinstitutionline\IberoInstitutionLine\par\fi
\ifibero@hasauthorline\IberoAuthorCourseLine\par\fi
\ifx\ibero@email\empty\else\href{mailto:\IberoEmail}{\IberoEmail}\par\fi
\ifx\ibero@coursedate\empty\else\IberoCourseDate\par\fi
\ifx\ibero@coursehours\empty\else\IberoCourseHours\ horas\par\fi
\ifx\ibero@doctype\empty\else\textbf{- \IberoDocType\ -}\fi
\end{center}

\vspace{18pt}
}

\let\IberoCover\IberoCourseInfo

% -------------------------------------------------
% Notes / Observation blocks (professional)
% -------------------------------------------------
\tcbset{
  iberoNoteBase/.style={
    enhanced,
    breakable,
    colback=white,
    boxrule=0.6pt,
    arc=2pt,
    outer arc=2pt,
    left=10pt,right=10pt,top=8pt,bottom=8pt,
    before skip=10pt, after skip=10pt,
    fonttitle=\bfseries,
    attach title to upper,
    title={#1},
  }
}

\newtcolorbox{nota}[1][Nota]{%
  iberoNoteBase={#1},
  colframe=IberoBlue,
  coltitle=black
}

\newtcolorbox{observacion}[1][Observaci\'{o}n]{%
  iberoNoteBase={#1},
  colframe=black,
  coltitle=black
}

\newtcolorbox{warning}[1][Advertencia]{%
  iberoNoteBase={#1},
  colframe=black,
  coltitle=black
}

\newtcolorbox{info}[1][Info]{%
  iberoNoteBase={#1},
  colframe=IberoBlue,
  coltitle=black
}

\endinput
