% Tipo documento
\LoadClass{article}

% Versión de latex
\NeedsTeXFormat{LaTeX2e}

% Márgenes
% M\'argenes
\addtolength{\voffset}{-1cm}
\addtolength{\hoffset}{-1.5cm}
\addtolength{\textwidth}{3cm}
\addtolength{\textheight}{2cm}

% Nombre de clase y fecha
\ProvidesClass{homework}[2020/08/03 Plantilla para notas de complejidad]

% Gráficas
\RequirePackage{tikz}

\tikzstyle{edge}=[shorten <=2pt, shorten >=2pt,
                  >=stealth, line width=1.1pt]
\tikzstyle{vertex}=[circle, fill=white, draw,
                    minimum size=5pt,
                    inner sep=0pt, outer sep=0pt]
\tikzstyle{blackV}=[circle, fill=black, draw,
                    minimum size=5pt,
                    inner sep=0pt, outer sep=0pt]

%Codficacion UTF-8
\usepackage[utf8]{inputenc}

% Encabezado
\RequirePackage{fancyhdr}
\RequirePackage{recycle} % logo de reciclaje

% Texto del encabezado
\rhead{Complejidad 2021--1}

% Texto del pié de página
\rfoot{\recycle}
\cfoot{\vspace{-0.8cm}?`Realmente necesitas imprimir esta hoja?}
\lfoot{\recycle}
\pagenumbering{gobble}
\footskip= 50pt
\renewcommand{\headrulewidth}{1pt}

% Gráfica de adorno en el encabezado
\makeatletter
\def\headrule{{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
\hrule\@height\headrulewidth\@width\headwidth{}
\vspace{0.1cm}
\begin{tikzpicture}
  \begin{scope}[scale=0.6]
   \foreach \x in {0,2,...,24} {
      \node [vertex,thick] (\x) at (\x,0){};
   }
   \foreach \x in {1,3,...,25} {
      \node [blackV] (\x) at (\x,0){};
   }
   \foreach \x/\y in {0,2,...,24} {
     \pgfmathsetmacro\result{\x + 1}
     \draw [->,>=stealth,shorten <=3.5pt, shorten >=3.5pt,line width=0.7pt] (\x,0) to (\result,0);
   }
   \foreach \x/\y in {1,3,...,23} {
     \pgfmathsetmacro\result{\x + 1}
     \draw [>=stealth,shorten <=4pt, shorten >=4pt,line width=0.7pt] (\x,0) to (\result,0);
   }
  \end{scope}
\end{tikzpicture}
\vskip \headrulewidth{}
\vskip 1.5pt}}
\makeatother

\pagestyle{fancyplain}

% Macros
\newcommand{\set}[1]{\left\{ #1 \right\}}
