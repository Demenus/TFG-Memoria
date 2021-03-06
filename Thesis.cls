%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Thesis LaTeX Template - THESIS CLASS FILE
%
% This template has been downloaded from:
% http://www.latextemplates.com
%
% This class file defines the structure and design of the template. 
%
% There is one part of this file that needs to be filled out - the variables
% dictating the document particulars such as the author name, university
% name, etc. You will find these in the commented "DOCUMENT VARIABLES"
% section below.
%
% The other two easily-editable sections are the margin sizes and abstract.
% These have both been commented for easy editing. Advanced LaTeX
% users will have no trouble editing the rest of the document to their liking.
%
% Original header:
%% This is file `Thesis.cls', based on 'ECSthesis.cls', by Steve R. Gunn
%% generated with the docstrip utility.
%%
%% Created by Steve R. Gunn, modified by Sunil Patel: www.sunilpatel.co.uk
%% Further modified by www.latextemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{Thesis}
              [2007/22/02 v1.0
   LaTeX document class]
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
  \edef\@curroptions{\@ptionlist{\@currname.\@currext}}
  \@tempswafalse
  \@tfor\@this:=#2\do{
    \@expandtwoargs\in@{,\@this,}{,\@curroptions,}
    \ifin@ \@tempswatrue \@break@tfor \fi}
  \let\@this\@empty
  \if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{11pt}{{10pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
\newcommand\bhrule{\typeout{------------------------------------------------------------------------------}}

\newcommand\Declaration[1]{
\btypeout{Declaraci\'on de Autor\'ia}
\addtotoc{Declaraci\'on de Autor\'ia}
\thispagestyle{plain}
\null\vfil
%\vskip 60\p@
\begin{center}{\huge\bf Declaraci\'on de Autor\'ia\par}\end{center}
%\vskip 60\p@
{\normalsize #1}
\vfil\vfil\null
%\cleardoublepage
}

\newcommand\btypeout[1]{\bhrule\typeout{\space #1}\bhrule}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space \number\year}
\usepackage{setspace}
\onehalfspacing
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}

\RequirePackage[utf8]{inputenc} % Allows the use of international characters (e.g. Umlauts)

%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------
\setmarginsrb  { 1.5in}  % left margin
                        { 0.6in}  % top margin
                        { 1.0in}  % right margin
                        { 0.8in}  % bottom margin
                        {  20pt}  % head height
                        {0.25in}  % head sep
                        {   9pt}  % foot height
                        { 0.3in}  % foot sep
%----------------------------------------------------------------------------------------
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000       % No consecutive line hyphens.
\brokenpenalty=10000              % No broken words across columns/pages.
\widowpenalty=9999                % Almost no widows at bottom of page.
\clubpenalty=9999                 % Almost no orphans at top of page.
\interfootnotelinepenalty=9999    % Almost never break footnotes.
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\sl{\rightmark}}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}\lfoot{}\rfoot{}\cfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\btypeout{\thechapter\space #1}\markboth{\@chapapp\ \thechapter\ #1}{\@chapapp\ \thechapter\ #1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}
\thispagestyle{empty}
\newpage
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\usepackage{amsmath,amsfonts,amssymb,amscd,amsthm,xspace}
\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
\usepackage[centerlast,small,sc]{caption}
\setlength{\captionmargin}{20pt}
\newcommand{\fref}[1]{Figura~\ref{#1}}
\newcommand{\tref}[1]{Tabla~\ref{#1}}
\newcommand{\eref}[1]{Equation~\ref{#1}}
\newcommand{\cref}[1]{Cap\'itulo~\ref{#1}}
\newcommand{\sref}[1]{Secci\'on~\ref{#1}}
\newcommand{\aref}[1]{App\'endice~\ref{#1}}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{.85}
\renewcommand{\textfraction}{0.1}
\renewcommand{\dbltopfraction}{.85}
\renewcommand{\floatpagefraction}{0.75}
\renewcommand{\dblfloatpagefraction}{.75}
\setcounter{topnumber}{9}
\setcounter{bottomnumber}{9}
\setcounter{totalnumber}{20}
\setcounter{dbltopnumber}{9}
\usepackage{graphicx}
\usepackage{epstopdf}
\usepackage{booktabs}
\usepackage{rotating}
\usepackage{listings}
\usepackage{lstpatch}
\lstset{captionpos=b,
        frame=tb,
        basicstyle=\scriptsize\ttfamily,
        showstringspaces=false,
        keepspaces=true}
\lstdefinestyle{matlab} {
        language=Matlab,
        keywordstyle=\color{blue},
        commentstyle=\color[rgb]{0.13,0.55,0.13}\em,
        stringstyle=\color[rgb]{0.7,0,0} }
\usepackage[pdfpagemode={UseOutlines},bookmarks=true,bookmarksopen=true,
   bookmarksopenlevel=0,bookmarksnumbered=true,hypertexnames=false,
   colorlinks,linkcolor={blue},citecolor={blue},urlcolor={red},
   pdfstartview={FitV},unicode,breaklinks=true]{hyperref}
\pdfstringdefDisableCommands{
   \let\\\space
}
\newcommand{\roref}[2]{\href{http://mrrobotto.github.io/docs/v1/mr/robotto/#1.html}{#2}\xspace}
\newcommand{\rorefm}[3]{\href{http://mrrobotto.github.io/docs/v1/mr/robotto/#1.html\##2}{#3}\xspace}
\newcommand*{\robottoname}[1]{\def\robotto{#1}}
\newcommand*{\studioname}[1]{\def\studio{#1}}
\newcommand*{\supervisor}[1]{\def\supname{#1}}
\newcommand*{\thesistitle}[1]{\def\ttitle{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\degree}[1]{\def\degreename{#1}}
\newcommand*{\authors}[1]{\def\authornames{#1}}
\newcommand*{\addresses}[1]{\def\addressnames{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\UNIVERSITY}[1]{\def\UNIVNAME{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\DEPARTMENT}[1]{\def\DEPTNAME{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\GROUP}[1]{\def\GROUPNAME{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\FACULTY}[1]{\def\FACNAME{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}

%----------------------------------------------------------------------------------------
%  LIST OF DOCUMENTATION IN ORDER OF APPAREANCE
%----------------------------------------------------------------------------------------
\newcommand{\rorefrobottoengine}[0]{\roref{MrRobottoEngine}{MrRobottoEngine}}

\newcommand{\rorefsurfaceview}[0]{\roref{engine/ui/MrSurfaceView}{MrSurfaceView}}

\newcommand{\rorefscenetree}[0]{\roref{scenetree/MrSceneTree}{MrSceneTree}}

\newcommand{\rorefmodel}[0]{\roref{sceneobjects/MrModel}{MrModel}}

\newcommand{\roreflight}[0]{\roref{sceneobjects/MrLight}{MrLight}}

\newcommand{\rorefcamera}[0]{\roref{sceneobjects/MrCamera}{MrCamera}}

\newcommand{\rorefscene}[0]{\roref{sceneobjects/MrScene}{MrScene}}

\newcommand{\rorefobject}[0]{\roref{sceneobjects/MrObject}{MrObject}}

\newcommand{\rorefeventlistener}[0]{\roref{engine/events/MrEventListener}{MrEventListener}}

\newcommand{\rorefobjectdata}[0]{\roref{engine/core/data/MrObjectData}{MrObjectData}}

\newcommand{\rorefobjectrender}[0]{\roref{engine/core/renderer/MrObjectRender}{MrObjectRender}}

\newcommand{\rorefobjectcontroller}[0]{\roref{engine/core/controller/MrObjectController}{MrObjectController}}

\newcommand{\rorefcomponent}[0]{\roref{engine/components/MrComponent}{MrComponent}}

\newcommand{\rorefmesh}[0]{\roref{engine/components/MrMesh}{MrMesh}}

\newcommand{\rorefmaterial}[0]{\roref{engine/components/data/material/MrMaterial}{MrMaterial}}

\newcommand{\roreftexture}[0]{\roref{engine/components/MrTexture}{MrTexture}}

\newcommand{\rorefbuffer}[0]{\roref{engine/components/data/mesh/MrBuffer}{MrBuffer}}

\newcommand{\rorefbufferkey}[0]{\roref{engine/components/data/mesh/MrBufferKey}{MrBufferKey}}

\newcommand{\rorefskeleton}[0]{\roref{engine/components/data/skeleton/MrSkeleton}{MrSkeleton}}

\newcommand{\rorefbone}[0]{\roref{engine/components/data/skeleton/MrBone}{MrBone}}

\newcommand{\rorefframe}[0]{\roref{engine/components/data/action/MrFrame}{MrFrame}}

\newcommand{\rorefkeyframelist}[0]{\roref{engine/components/data/action/MrKeyFrameList}{MrKeyFrameList}}

\newcommand{\rorefskeletalaction}[0]{\roref{engine/components/data/action/MrSkeletalAction}{MrSkeletalAction}}

\newcommand{\rorefattribute}[0]{\roref{engine/components/data/shader/MrAttribute}{MrAttribute}}

\newcommand{\rorefuniform}[0]{\roref{engine/components/data/shader/MrUniform}{MrUniform}}

\newcommand{\rorefshader}[0]{\roref{engine/components/data/shader/MrShader}{MrShader}}

\newcommand{\rorefmrrloader}[0]{\roref{engine/loader/file/MrMrrLoader}{MrMrrLoader}}

\newcommand{\rorefresources}[0]{\roref{engine/loader/MrResources}{MrResources}}

\newcommand{\rorefrobottojsonloader}[0]{\roref{engine/loader/file/MrRobottoJsonLoader}{MrRobottoJsonLoader}}


\newcommand{\rorefjsonbaseloader}[0]{\roref{engine/loader/core/MrJsonBaseLoader}{MrJsonBaseLoader}}

\newcommand{\roreflinearalgebra}[0]{\roref{engine/linearalgebra/MrLinearAlgebraObject}{MrLinearAlgebraObject}}

\newcommand{\rorefmatrix}[0]{\roref{engine/linearalgebra/MrMatrix4f}{MrMatrix4f}}

\newcommand{\rorefquaternion}[0]{\roref{engine/linearalgebra/MrQuaternion}{MrQuaternion}}

\newcommand{\rorefvectortresf}[0]{\roref{engine/linearalgebra/MrVector3f}{MrVector3f}}

\newcommand{\rorefvectorcuatrof}[0]{\roref{engine/linearalgebra/MrVector4f}{MrVector4f}}

\newcommand{\roreftransform}[0]{\roref{engine/linearalgebra/MrTransform}{MrTransform}}

\newcommand{\rorefeventdispatcher}[0]{\roref{engine/events/MrEventDispatcher}{MrEventDispatcher}}

\newcommand{\rorefbundle}[0]{\roref{engine/events/MrBundle}{MrBundle}}

\newcommand{\roreftreemap}[0]{\roref{engine/collections/MrTreeMap}{MrTreeMap}}

\newcommand{\rorefmapfunction}[0]{\roref{engine/collections/MrMapFunction}{MrMapFunction}}

%----------------------------------------------------------------------------------------
%	DOCUMENT VARIABLES
%	Fill in the lines below to update the thesis template
%	If you wish to cite each of the variables defined below, look at the
%	section above for the citation command e.g. \examiner{} below is
%	defined as \examname above so you cite it as \examname
%----------------------------------------------------------------------------------------
\robottoname{MrRobotto 3D Engine\xspace}
\studioname{MrRobotto Studio\xspace}

\thesistitle{MrRobotto 3D Engine} % Your thesis title - this is used in the title and abstract
%-------------------------------------------------  
\supervisor{Anna \textsc{Puig Puig}} % You supervisor's name - this is used in the title page
%-------------------------------------------------   
\examiner{} % Your examiner's name - this is not currently used anywhere in the template, cite it with \examname if you want it
%-------------------------------------------------   
\degree{Grado en Ingeniería Informática y Matemáticas} % Your degree name - this is currently used in the title page and abstract
%-------------------------------------------------   
\authors{Aarón \textsc{Negrín Santamaría}} % Your name - this is used in the title page and abstract
%-------------------------------------------------   
\addresses{} % Your address - this is not currently used anywhere in the template, cite it with \addressnames if you want it
%-------------------------------------------------   
\subject{} % Your subject area - this is not currently used anywhere in the template, cite it with \subjectname if you want it
%-------------------------------------------------   
\keywords{} % Keywords for your thesis - this is not currently used anywhere in the template, cite it with \keywordnames if you want it
%-------------------------------------------------   
\university{\texorpdfstring{\href{http://www.ub.edu} % Your university's URL
                {Universidad de Barcelona}} % Your university's name - this is currently used in the title page
                {Universidad de Barcelona}}
%-------------------------------------------------   
\UNIVERSITY{\texorpdfstring{\href{http://www.ub.edu} % Your university's URL
                {UNIVERSIDAD DE BARCELONA}} % Your university's name in capitals - this is currently used in the abstract page
                {UNIVERSIDAD DE BARCELONA}}
%-------------------------------------------------                
\department{\texorpdfstring{\href{http://www.mat.ub.edu} % Your department's URL
                {Facultad de Matemáticas}} % Your department's name - used in the title page and abstract
                {Facultad de Matemáticas}}
%-------------------------------------------------                
\DEPARTMENT{\texorpdfstring{\href{http://www.mat.ub.edu} % Your department's URL
                {FACULTAD DE MATEMÁTICAS}} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
                {FACULTAD DE MATEMÁTICAS}}
%-------------------------------------------------                
\group{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {Research Group Name}} % Your research group's name - this is currently used in the title page 
                {Research Group Name}}
%-------------------------------------------------                
\GROUP{\texorpdfstring{\href{Research Group Web Site URL Here (include http://)} % Your research group's URL
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}} % Your research group's name in capitals - this is not currently used anywhere in the template, cite it with \GROUPNAME if you want it
                {RESEARCH GROUP NAME (IN BLOCK CAPITALS)}}
%-------------------------------------------------                
\faculty{\texorpdfstring{\href{http://www.mat.ub.edu} % Your department's URL
                {Facultad de Matemáticas}} % Your department's name - used in the title page and abstract
                {Facultad de Matemáticas}}
%-------------------------------------------------                
\FACULTY{\texorpdfstring{\href{http://www.mat.ub.edu} % Your department's URL
                {FACULTAD DE MATEMÁTICAS}} % Your department's name in capitals - this is not currently used anywhere in the template, cite it with \DEPTNAME if you want it
                {FACULTAD DE MATEMÁTICAS}}
%----------------------------------------------------------------------------------------    

% The default title page, this is not used in this www.latextemplates.com version            
\renewcommand\maketitle{
  \btypeout{Title Page}
  \hypersetup{pdftitle={\@title}}
  \hypersetup{pdfsubject=\subjectname}
  \hypersetup{pdfauthor=\authornames}
  \hypersetup{pdfkeywords=\keywordnames}
  \thispagestyle{empty}
  \begin{titlepage}
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \setcounter{footnote}{0}
    \null\vfil
    \vskip 60\p@
    \begin{center}
      \setlength{\parskip}{0pt}
      {\large\textbf{\UNIVNAME}\par}
      \vfill
      {\huge \bf \@title \par}
      \vfill
      {\LARGE by \par}
      \smallskip
      {\LARGE \authornames \par}
      \vfill
      {\large A thesis submitted in partial fulfillment for the \par}
      {\large degree of \degreename \par}
      \bigskip
      \bigskip
      {\large in the \par}
      {\large \facname \par}
      {\large \deptname \par} 
      \bigskip
      \bigskip
      \bigskip
      {\Large \@date \par}
      \bigskip
    \end{center}
    \par
    \@thanks
    \vfil\null
  \end{titlepage}
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \cleardoublepage
}
%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{abstract}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \UNIVNAME \par} % University name in capitals
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
    {\normalsize \facname \par} % Faculty name
    \bigskip
    {\normalsize \degreename\par} % Degree name
    \bigskip
    {\normalsize\bf \@title \par} % Thesis title
    \medskip
    {\normalsize por \authornames \par} % Author name
    \bigskip
  \end{center}
}

%----------------------------------------------------------------------------------------
%	ABSTRACT PAGE DESIGN
%----------------------------------------------------------------------------------------
\newenvironment{abstracten}
{
  \btypeout{Abstract Page}
  \thispagestyle{empty}
  \null\vfil
  \begin{center}
    \setlength{\parskip}{0pt}
    {\normalsize \texorpdfstring{\href{http://www.ub.edu}{UNIVERSITY OF BARCELONA}} \par}\\
    \bigskip
    {\huge{\textit{Abstract}} \par}
    \bigskip
    {\normalsize Faculty of Mathematics \par} % Faculty name
    \bigskip
    {\normalsize Double Degree in Computer Engineering and Mathematics\par} % Degree name
    \bigskip
    {\normalsize\bf \@title \par} % Thesis title
    \medskip
    {\normalsize by \authornames \par} % Author name
    \bigskip
  \end{center}
}
%----------------------------------------------------------------------------------------
{
  \vfil\vfil\vfil\null
  \cleardoublepage
}
\addtocounter{secnumdepth}{1}
\setcounter{tocdepth}{6}
\newcounter{dummy}
\newcommand\addtotoc[1]{
\refstepcounter{dummy}
\addcontentsline{toc}{chapter}{#1}}
\renewcommand\tableofcontents{
\btypeout{Tabla de Contenidos}
\addtotoc{Contenidos}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \@mkboth{
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}
    \@starttoc{toc}
    \if@restonecol\twocolumn\fi
   \cleardoublepage
}\end{spacing}
}
\renewcommand\listoffigures{
\btypeout{Lista de Figuras}
\addtotoc{Lista de Figuras}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename
      \@mkboth{\MakeUppercase\listfigurename}
              {\MakeUppercase\listfigurename}}
    \@starttoc{lof}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\renewcommand\listoftables{
\btypeout{Lista de Tablas}
\addtotoc{Lista de Tablas}
\begin{spacing}{1}{
    \setlength{\parskip}{1pt}
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename
      \@mkboth{
          \MakeUppercase\listtablename}{\MakeUppercase\listtablename}}
    \@starttoc{lot}
    \if@restonecol\twocolumn\fi
    \cleardoublepage
}\end{spacing}
}
\newcommand\listsymbolname{Abbreviations}
\usepackage{longtable}
\newcommand\listofsymbols[2]{
\btypeout{\listsymbolname}
\addtotoc{\listsymbolname}
    \chapter*{\listsymbolname
      \@mkboth{
          \MakeUppercase\listsymbolname}{\MakeUppercase\listsymbolname}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listconstants{Physical Constants}
\usepackage{longtable}
\newcommand\listofconstants[2]{
\btypeout{\listconstants}
\addtotoc{\listconstants}
    \chapter*{\listconstants
      \@mkboth{
          \MakeUppercase\listconstants}{\MakeUppercase\listconstants}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\listnomenclature{Symbols}
\usepackage{longtable}
\newcommand\listofnomenclature[2]{
\btypeout{\listnomenclature}
\addtotoc{\listnomenclature}
    \chapter*{\listnomenclature
      \@mkboth{
          \MakeUppercase\listnomenclature}{\MakeUppercase\listnomenclature}}
\begin{longtable}[c]{#1}#2\end{longtable}\par
    \cleardoublepage
}
\newcommand\acknowledgements[1]{
\btypeout{Acknowledgements}
\addtotoc{Acknowledgements}
\thispagestyle{plain}
\begin{center}{\huge{\textit{Acknowledgements}} \par}\end{center}
{\normalsize #1}
\vfil\vfil\null

}
\newcommand\dedicatory[1]{
\btypeout{Dedicatory}
\thispagestyle{plain}
\null\vfil
\vskip 60\p@
\begin{center}{\Large \sl #1}\end{center}
\vfil\null
\cleardoublepage
}
\renewcommand\backmatter{
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \addtotoc{\bibname}
  \btypeout{\bibname}
  \@mainmatterfalse}
\endinput