\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

\LoadClass[11pt]{article}

\renewcommand{\familydefault}{\sfdefault}   % sf font
\RequirePackage{fontawesome}
\pagestyle{empty}           % No page numbers/headers/footers

\RequirePackage[hidelinks]{hyperref}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Spacing
\RequirePackage[scale = 0.9]{geometry}

% vertical
\newcommand*{\NewPart}[1]{
    \vspace{-3ex}
    \section*{\sectiontitle{#1}}
    \vspace{-1.5ex}
}
\RequirePackage{enumitem}
\setlist{noitemsep, nosep, after=\vspace{1.3ex}}

% horizontal
\RequirePackage{calc}
\setlength\parindent{0pt}
\newcommand*{\bltPrdWidth}{8.8em}
\newcommand*{\itemwidth}{\textwidth - \bltPrdWidth}
\newcommand*{\skillwidth}{\textwidth - \bltPrdWidth - 8.1em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Sections
\RequirePackage{sectsty}
\sectionfont{\sectionrule{0pt}{0pt}{-4pt}{1.5pt}}
\newcommand*{\sectiontitle}[1]{\textbf{\uppercase{#1}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Entries
\newcommand*{\name}[1]{{\Huge\textbf{\uppercase{#1}}}}
\newcommand*{\orgnization}[1]{{\large\textbf{#1}}}
\newcommand*{\location}[1]{\textbf{#1}}
\newcommand*{\position}[1]{\emph{#1}}
\newcommand*{\period}[1]{#1}

\newcommand*{\orgwithloc}[2]{
    \orgnization{#1}\hfill\location{#2}

}
\newcommand*{\poswithprd}[2]{
    \position{#1}\hfill\period{#2}

}
\newenvironment*{miniItemize}{
    \begin{minipage}[t]{\itemwidth}
    \begin{itemize}
}{
    \end{itemize}
    \end{minipage}

}
