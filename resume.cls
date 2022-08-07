\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

\LoadClass[11pt]{article}
\renewcommand*{\familydefault}{\sfdefault}
\pagestyle{empty}

\RequirePackage{fontawesome}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{bookmark}
\RequirePackage[en-US]{datetime2}
\DTMlangsetup*{abbr, showdayofmonth=false}

% Spacing
\RequirePackage[scale = 0.9]{geometry}
\RequirePackage{calc}
% vertical
\RequirePackage{enumitem}
\setlist{nosep}
\setlist[1]{after=\vspace*{1ex}}
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
\newcommand*{\organization}[2]{
    {\bfseries {\large #1} \hfill #2}

}

\newcommand*{\experience}[5]{
    \textit{#1\ifstrempty{#2}{}{ @ #2}}
    \hfill
    \DTMDate{#3} -- \ifstrempty{#4}{Present}{\DTMDate{#4}}

    \begin{minipage}[t]{\textwidth - \sidbarwidth}
        #5
    \end{minipage}

}

\newcommand*{\uhref}[2]{
    \href{#1}{\underline{\smash{#2}}}
}

% Header
\makeatletter

\newcommand*{\@newstorage}[1]{
    \@namedef{#1}##1{\@namedef{@#1}{##1}}
    \@nameuse{#1}{#1\ClassWarning{resume}{No #1 given}}
}

\@newstorage{name}
\@newstorage{phone}
\@newstorage{email}
\@newstorage{github}
\@newstorage{linkedin}

\renewcommand*{\maketitle}{
    \begin{center}
        {\Huge\bfseries\MakeUppercase{\@name}}
        \vspace{1ex}

        {\small
            \begin{tabular}{l l}
                \faPhone    \uhref{tel:\@phone}{\@phone} &
                \faEnvelope \uhref{mailto:\@email}{\@email} \\
                \faGithub   \uhref{https://github.com/\@github}{\@github} &
                \faLinkedin \uhref{https://www.linkedin.com/in/\@linkedin}{\@linkedin} \\
            \end{tabular}
        }
    \end{center}
}

\makeatother
