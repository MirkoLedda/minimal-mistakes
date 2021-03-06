%----------------------------------------------------------------------------------------
%   PACKAGES AND OTHER DOCUMENT CONFIGURATIONS
%----------------------------------------------------------------------------------------

\LoadClass{article}

% ---------- PACKAGES ----------
\usepackage{amstext,multicol,enumitem,tabto,xparse}


% ---------- DOCUMENT LAYOUT ----------
\usepackage{geometry} 
\geometry{a4paper, textwidth=6.8in, textheight=10in}
\setlength\parindent{0in} % remove auto indent

% Comments
\newcommand{\comment}[1]{\small{#1}\normalsize}

% Header
\usepackage{fancyhdr}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}

% Footer
\usepackage{lastpage}
\lfoot{Mirko Ledda - CV - \today\ }
\cfoot{}
\rfoot{Page \thepage\ / \pageref*{LastPage}}

% Multi-column
\setlength{\multicolsep}{2.0pt plus 2.0pt minus 1.5pt}


% ---------- FONTS ----------
\usepackage{bera}
\renewcommand{\familydefault}{\sfdefault}
\usepackage[dvipsnames]{xcolor}


% ---------- RULERS ----------
\newcommand{\HRule}[1]{\par
  \vspace*{\dimexpr-\parskip-\baselineskip+5pt}
  \noindent\rule{\linewidth}{#1}\par
  \vspace*{\dimexpr-\parskip-.5\baselineskip+5pt}}


% ------ SECTION LAYOUTS ------
% Section ------
\usepackage{titlesec}
\titleformat
	{\section} % command
	[display] % shape
	{\Large} % format
	{\thesection} % label
	{0pt} % sep
	{
	\vspace{-2ex}
	%\HRule{0.5mm}
	\MakeUppercase
	} % before-code
	[
	\HRule{0.5mm}
	] % after-code

% Subsection ------
\usepackage{titlesec}
\titleformat
	{\subsection} % command
	[display] % shape
	{\large} % format
	{\thesubsection} % label
	{0pt} % sep
	{
	\vspace{-3ex}
	} % before-code
	[
	] % after-code


% ------ COMMANDS ------
% Year margin ------
\newcommand{\years}[1]{#1}
%\usepackage{marginnote}
%\newcommand{\years}[1]{\marginote{\small{#1}}}
%\renewcommand*{\raggedrightmarginnote}{}
%\reversemarginpar

% Research/Work experience ------
\newcommand{\professional}[5]{
	#2 - #3 \hfill \years{#1}\\
	Supervisor: #4\\
	#5\\\\}

% Teaching ------
\DeclareDocumentCommand\teaching{ m m m m m m }{
		#2 - #3 \hfill \years{#1}\\
		\comment{
		IOR: #4, Level: #5\\
		Duties: #6\\\\}}

% Award ------
\newcommand{\award}[4]{
	#2 - #3 \hfill \years{#1}\\
	\comment{#4}\\\\
	}

% Membership ------
\newcommand{\member}[3]{
	#3 - #2 \hfill \years{#1}\\
}

% Outreach ------
\newcommand{\outreach}[3]{
	#2 - #3 \hfill \years{#1}\\
	}

% Talks and Posters ------
\newcommand{\pubTalk}[7]{
	#4 - #5 \hfill \years{#1}\\
	\pubAuthors{#2}, #3. \hfill \emph{#7}\\\\
	}

% Publications ------
\newcommand{\pubAuthors}[1]{#1}
\newcommand{\pubTitle}[1]{#1}
\newcommand{\pubJournal}[1]{\emph{#1}}
\newcommand{\pubIssue}[1]{#1}
\newcommand{\pubDOI}[1]{\href{http://dx.doi.org/#1}{\scriptsize\textsc{[doi]}}}

\DeclareDocumentCommand\pubArticle{ m m m m m g }{
    \pubAuthors{#2} (\years{#1}) \pubTitle{#3}, \pubJournal{#4} \pubIssue{#5}
        \IfNoValueF {#6} {\pubDOI{#6}}
\\\\}

% Patents ------
\newcommand{\pubPatent}[2]{
	\pubAuthors{#1}, \pubTitle{#2}}