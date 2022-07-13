\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

\LoadClass[11pt]{article}
\renewcommand{\familydefault}{\sfdefault}
\pagestyle{empty}

\RequirePackage{fontawesome}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[en-US]{datetime2}
\DTMlangsetup*{abbr, showdayofmonth=false}

% Spacing
\RequirePackage[scale = 0.9]{geometry}
\RequirePackage{calc}
% vertical
\RequirePackage{enumitem}
\setlist{noitemsep, nosep, after=\vspace{1.3ex}}
% horizontal
\setlength\parindent{0em}
\newcommand*{\sidbarwidth}{9em}

% Section 
\RequirePackage{titlesec}
\titleformat{\section}
    {\Large\bfseries\uppercase}
    {}{}
    {\vspace*{-2ex}}
    [\vspace*{-2ex}\rule{\textwidth}{1.5pt}\vspace*{-2ex}]

% Commands
\newcommand*{\name}[1]{{\Huge\bfseries\uppercase{#1}}}
\newcommand*{\orgnization}[1]{{\large\textbf{#1}}}
\newcommand*{\location}[1]{\textbf{#1}}

\newcommand*{\orgwithloc}[2]{
    \orgnization{#1}\hfill\location{#2}

}

\newcommand*{\experience}[5]{
    \emph{#1\ifstrempty{#2}{}{, #2}}
    \hfill
    \DTMDate{#3} -- \ifstrempty{#4}{Present}{\DTMDate{#4}}
    \begin{minipage}[t]{\textwidth - \sidbarwidth}
        #5
    \end{minipage}

}
