%% Original : Eric-Olivier Le Bigot
%% Modifs : Fr�d�ric Meynadier (Frederic.Meynadier@obspm.fr)
%% Modifs : Dominique Quatravaux (dom@idealx.com) - conversion en
%%     classe de document.
%% 03/01/03
%% Modifs : application d'un patch de Jonas Kahn, 2007-12-19
%% Modifs bis : Romain  Lafarguette, pour mon usage perso (j'ai laiss�
%% les lignes originales en commentaire)

\NeedsTeXFormat{LaTeX2e} \ProvidesClass{cv}
  [2002/01/03 v0.1 Curriculum Vitae package]

\LoadClass[10pt]{article} \RequirePackage{ifthen}
\RequirePackage{array}

   %%%%%%%%%%%%%%%%%%%%%%%%%%%
   % Mise en page par d�faut %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%

\setlength{\textwidth}{160mm}    %% Largeur de la zone texte
\setlength{\oddsidemargin}{0mm}  %% Texte centr� sur la page

\pagestyle{empty} % pour ne pas indiquer de num�ro de page...

% On d�finit les pieds de page comme des \stretch de force 1,
% soit 4 plus fort que celui qui est en bas du chapeau
% (Cf. ci-dessous). De cette fa�on, un CV qui ne remplit pas toute la
% page a un bel espacement.
\makeatletter
\def\@textbottom{\vspace*{\stretch{1}}}
\makeatother


   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %      Param�tres r�glables          %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% L'utilisateur peut les red�finir ceux-ci �\renewcommand� si besoin :

%\newcommand{\espaceInterRubrique}{\medskip\vspace{\stretch{0.1}}}
\newcommand{\espaceInterRubrique}{\vspace{0.5cm}}

% L'utilisateur peut les red�finir ceux-ci �\setlength� si besoin :

\newlength{\rubriquetableauparindent} % indentation au d�but d'une
% ligne de droite dans un �rubriquetableau�. Cette longueur peut
% �tre n�gative, auquel cas l'alignement dans le tableau se fait
% compte tenu du retrait de la premi�re ligne : celle-ci ne �bavera�
% pas sur l'espace r�serv� pour la colonne de gauche, au lieu de cela,
% l'ensemble de la colonne de droite est d�cal� de l'espace correspondant.

\setlength{\rubriquetableauparindent}{-16pt}


   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %     Macros pratiques       %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\er{$^{\hbox{er}}$}
\def\ere{$^{\hbox{�re}}$}
\def\eme{$^{\hbox{�me}}$}

   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % L'environnement "rubrique" %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Usage : \begin{rubrique}[Indentation]{Titre} [...] \end{rubrique}
% On met le texte qu'on veut � l'int�rieur.

\newenvironment{rubrique}[1]   % "rubrique" prend un seul argument, le titre
{\espaceInterRubrique\relax%
\noindent\textbf{\large #1}\par%
%\noindent\rule[0.5ex]{\textwidth}{0.1mm}\par}{}
\noindent\rule[0.2cm]{\textwidth}{0.1mm}\par}{}

   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   % L'environnement "rubriquetableau" %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Il sert � rendre les tableaux, avec typiquement des dates � gauche
% et des activit�s � droite. Il s'utilise comme �rubrique�
% ci-dessus, sauf qu'il admet un argument optionnel qui est la largeur
% de la colonne de gauche, et que l'int�rieur doit �tre un tableau
% LaTeX avec les �&� et les �\\� qui vont bien.
% Par exemple :
%
% \begin{rubriquetableau}[3.5cm]{pipotage}
% 1999--2000    & ligne 1\\
%       & ligne 2\\
% 1998--1999    & ligne 1\\
% [etc...]
% \end{rubriquetableau}
%
% Lorsqu'on omet le param�tre entre crochets, cela a pour effet
% de donner la dimension \linewidth � la premi�re colonne (mais la
% structure reste celle d'un tableau � deux colonnes, donc ne pas oublier
% d'�crire '\\' pour les retours � la ligne).

\makeatletter

\newlength{\@cvlenB}\newlength{\@cvlenC}

\newenvironment{rubriquetableau}[2][\linewidth]%% "rubriquetableau"
%                       % prend deux arguments
{\bgroup\rubrique{#2}%     % le second argument : titre
\setlength{\@cvlenB}{#1}%  % Le premier argument :indentation
\setlength{\@cvlenC}{\linewidth}%          % Calculs...
\ifthenelse{\lengthtest{\rubriquetableauparindent<0pt}}
   {\addtolength{\@cvlenC}{\rubriquetableauparindent}}
   {}%
\addtolength{\@cvlenC}{-\@cvlenB}%
\addtolength{\@cvlenC}{-41pt}%
\begin{tabular}[t]{p{\@cvlenB}!{%
   \ifthenelse{\lengthtest{\rubriquetableauparindent<0pt}}
          {\hspace*{-\rubriquetableauparindent}}
          {}%
    }>{\setlength{\parindent}{\rubriquetableauparindent}}p{\@cvlenC}}}
{\end{tabular}\egroup}

\makeatother

   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %    Le chapeau du CV        %
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Usage:
% \begin{chapeau}
% \begin{adresse}
%   Fr�d�ric Meynadier\\%
%   83, rue de l'Ourcq\\%
%   75\,019 Paris\\%
%   \ligne\\%
%   T�l. : 01 40 37 04 65\\%
%   E-mail : \texttt{meynadie@clipper.ens.fr}
% \end{adresse}
% \begin{etatcivil}
%   N� le 22/11/78\\
%   Nationalit� Fran�aise
% \end{etatcivil}
% \end{chapeau}

\newenvironment{adresse}{%
\begin{minipage}{10cm}
\begin{center}
} {\end{center}\end{minipage}\hfill}

\newenvironment{etatcivil}{%
\begin{minipage}{6.4cm}
\begin{center}
} {\end{center}\end{minipage}}

\newenvironment{chapeau}{%
\def\ligne{\rule[2pt]{24pt}{1pt}}%  % definit  la  petite ligne  qu'on
                                % % peut tracer avec \ligne
\noindent\begin{minipage}{\linewidth}\hspace{-2cm}%
%} {\end{minipage}\vspace{\stretch{0.25}}}
} {\end{minipage}\vspace{1cm}} % espace entre  la fin du chapeau et le
                               % d�but du corps du CV
