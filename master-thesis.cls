\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{master-thesis}[2014/08/16 Example LaTeX class]

\LoadClass[onecolumn]{paper}

\RequirePackage{graphicx}  % This package allows the importing of images
\RequirePackage{xcolor}
\RequirePackage[a4paper, left=.6in, right=.6in, top=1in, bottom=1in]{geometry} % Set indentation
\RequirePackage{fontspec}
\RequirePackage{array}
\setlength{\arrayrulewidth}{0.7mm}
 
\definecolor{redberry}{RGB}{112,31,40} 
% Load fontspec for Times New Roman
\setmainfont[Mapping=tex-text]{Times New Roman}
\setmainfont[SizeFeatures={Size=12}]{Times New Roman}

\graphicspath{ {images/} }

% New commands
\newcommand{\largetitle}[1]{%
    \begin{center}  % Centers the title
    \textbf{
	    \fontspec{calibri.ttf}\fontsize{17}{0}\bfseries #1
	}
    \end{center}
}

\newcommand{\smalltitle}[1]{%
	\fontspec{calibri.ttf}\fontsize{11}{0}\itshape #1
}

\newcommand{\smalltitlebold}[1]{%
	\fontspec{calibri.ttf}\fontsize{11}{0}\bfseries #1
}

% Renew commands
\renewcommand{\title}[1]{%
  \gdef\@title{%
    \begin{center}  % Centers the title
      \textbf{  % Apply bold
        \fontspec{calibri.ttf}\fontsize{18}{0}\bfseries #1  % Calibri, size 18, bold
      }
    \end{center}
  }
}

\renewcommand{\maketitle}{%
  \begin{center}
    {\bfseries\@title}
  \end{center}
  \vspace{-1.5em}  % Adjust this value to control the space after the title
}

\renewcommand{\arraystretch}{0.8}

\renewcommand{\section}{
    \@startsection
    {section}  % Name of the section
    {1}        % Section level
    {0pt}      % Horizontal indentation from the left margin
    {1ex plus 0.1ex minus 0.1ex}  % Vertical space before the section
    {1ex plus 0.1ex minus 0.1ex}  % Vertical space after the section
    {\normalfont\large\bfseries}  % Times New Roman, size larger than body text, bold
}