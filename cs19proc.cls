%% LaTeX document class for Cool Stars 19 Proceedings
%%
%% Author: Gregory A. Feiden
%%   Date: 2014 Oct 30
%%
%% Update:
%%
%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]

\ProvidesClass{cs19proc}[2014/10/30 
    v0.1 Cool Stars 19 document class]

\LoadClass[11pt,twocolumn]{article}

%% Package dependencies
\RequirePackage{graphicx}
\RequirePackage{latexsym}
\RequirePackage{amssymb}
\RequirePackage{natbib}

%% Page dimensions 
\textwidth=7.1in
\columnsep=0.3125in
\parindent=0.125in
\voffset=-20mm
\hoffset=-7.5mm

\topmargin=0in
\headheight=0.15in
\headsep=0.5in
\oddsidemargin=0in
\evensidemargin=0in
\parskip=0cm
\footskip=0.40in


%% Font specifications (optimize for 66 characters per line)
%%
%% Pulled from emulateapj.cls
%%
%% AV,MM, to have 64 lines per column, with textheight 25cm:
%%
\textheight=49\baselineskip
\textheight=\baselinestretch\textheight
\ifdim\textheight>25.2cm\textheight=25.0cm\fi

\topskip\baselineskip
\maxdepth\baselineskip

\let\tighten=\relax
\let\tightenlines=\tighten
\let\singlespace=\relax
\let\doublespace=\relax

\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt{10.56}
   \abovedisplayskip 2.2mm \@plus2\p@ \@minus1\p@
   \abovedisplayshortskip \z@ \@plus3\p@
   \belowdisplayshortskip 2.2mm \@plus2\p@ \@minus1\p@
   \belowdisplayskip \abovedisplayskip
   \let\@listi\@listI}
\normalsize
\renewcommand\small{%
   \@setfontsize\small\@ixpt{9.68}%
   \abovedisplayskip 8.5\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{8.36}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip
}
\renewcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\renewcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\renewcommand\large{\@setfontsize\large\@xiipt{14}}
\renewcommand\Large{\@setfontsize\Large\@xivpt{18}}
\renewcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\renewcommand\huge{\@setfontsize\huge\@xxpt{25}}
\renewcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
\setlength\headheight{12\p@}


%% Running header and footer 
\newcommand\shorttitle[1]{\gdef\@shortitle{#1}}
\newcommand\shortauthors[1]{\gdef\@shortauthors{#1}}
\shorttitle{\relax}
\shortauthors{\relax}

\def\ps@csheadfoot{
    \let\@mkboth\markboth
    \def\@evenfoot{\thepage\hfil {\scriptsize Published by Uppsala University Press}}
    \def\@evenhead{\lower9mm\hbox to\textwidth{\small 19th Workshop on Cool Stars, 
                    Stellar Systems, and the Sun \hfil \@shortauthors}}
    \def\@oddfoot{{\scriptsize Published by Uppsala University Press}\hfil \rm\thepage}
    \def\@oddhead{\lower9mm\hbox to\textwidth{\small 19th Workshop on Cool Stars, 
                    Stellar Systems, and the Sun\hfil \@shortauthors}}
}

\@twosidetrue
\ps@csheadfoot

%% Title page, abstract, etc.

