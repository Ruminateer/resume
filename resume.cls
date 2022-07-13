\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

\LoadClass[11pt]{article}

\renewcommand{\familydefault}{\sfdefault}   % sf font
\RequirePackage{fontawesome}
\pagestyle{empty}           % No page numbers/headers/footers

\RequirePackage[hidelinks]{hyperref}
\RequirePackage[en-US]{datetime2}
\DTMlangsetup*{abbr, showdayofmonth=false}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Spacing
\RequirePackage[scale = 0.9]{geometry}

% vertical
\RequirePackage{enumitem}
\setlist{noitemsep, nosep, after=\vspace{1.3ex}}

% horizontal
\RequirePackage{calc}
\setlength\parindent{0pt}
\newcommand*{\bltPrdWidth}{8.8em}
\newcommand*{\itemwidth}{\textwidth - \bltPrdWidth}
\newcommand*{\skillwidth}{\textwidth - \bltPrdWidth - 8.1em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}
\titleformat{\section}
    {\Large\bfseries\uppercase}
    {}{}
    {\vspace*{-2ex}}
    [\vspace*{-2ex}\rule{\textwidth}{1.5pt}\vspace*{-2ex}]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Entries
\newcommand*{\name}[1]{{\Huge\textbf{\uppercase{#1}}}}
\newcommand*{\orgnization}[1]{{\large\textbf{#1}}}
\newcommand*{\location}[1]{\textbf{#1}}

\newcommand*{\orgwithloc}[2]{
    \orgnization{#1}\hfill\location{#2}

}

\newcommand*{\experience}[5]{
    \emph{#1\ifblank{#2}{}{, #2}}\hfill\DTMDate{#3} -- \DTMDate{#4}
    \begin{minipage}[t]{\itemwidth}
        #5
    \end{minipage}

}
