\LoadClass[12pt, a4paper]{article}

%%%%% CARREGANDO PACOTES
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}	% Hifenização em Português Brasil
\RequirePackage[brazilian]{babel}
\RequirePackage[left=3cm, top=2.5cm, right=2.5cm, bottom=2.5cm]{geometry}
\RequirePackage{times}	% Fonte Times New Roman
\RequirePackage{amsmath, amssymb, amsfonts, amsthm, exscale}	% Pacotes Matemáticos

\RequirePackage[pdftex,colorlinks=true,linkcolor=black,urlcolor=black,anchorcolor=black,citecolor=black,filecolor=black,menucolor=black]{hyperref}

\RequirePackage{url}\urlstyle{same}				% Os link ficam com a mesma fonte do texto
\RequirePackage{setspace}						% Configurações do Texto
\RequirePackage{indentfirst}					% Primeiro parágrfo identado
\RequirePackage{tocloft, titletoc, titlesec}	% Configurar seção/subseção
\RequirePackage{fancyhdr}						% Configurar o estilo da página. Cabeçalho/Rodapé/Número de página
\RequirePackage{graphicx} 						% Inserir imagens/figuras
\RequirePackage{subcaption}						% Configurar legendas das figuras/tabelas
\RequirePackage{footmisc}						% Config. citação de nota de rodapé
\RequirePackage{adjustbox, array}				% Rotacionar a tabela e aumentar a largura da coluna


%%%%% PACOTES TEMPORÁRIOS
\RequirePackage{lipsum}


%%%%% CONFIGURANDO TEXTO
\setlength{\parindent}{1.5cm}	% Identação dos parágrafos
\onehalfspacing					% Espaçamento entre linhas 1,5cm como padrão. Para duplo: \doublespacing; simples: \singlespacing
\setlength{\parskip}{12pt}		% Espaçamento entre os parágrafos


%%%%% CONFIG. ESTILO DE PÁGINA
\pagestyle{fancy}\fancyhf{}	
%% Cabeçalho
%\fancyhead[RO]{\vspace*{1\baselineskip}\thepage}
%\fancyhead[RE,LO]{TCC}
\renewcommand{\headrulewidth}{0pt}	% Espessura da linha de base
%% Rodapé
%\fancyfoot[CE,CO]{\leftmark}
\fancyfoot[RO]{\vspace*{-1\baselineskip}\thepage}
%\renewcommand{\footrulewidth}{0pt}


%%% CONFIG. CITAÇÃO DE NOTA DE RODAPÉ
\setlength{\footnotemargin}{0cm}
\renewcommand{\hangfootparindent}{0cm}
\newcommand\snfootnote[1]{%
	\begingroup%
		\renewcommand\thefootnote{}\footnote{#1}%
		\addtocounter{footnote}{-1}%
	\endgroup%
}


%%%%% CONFIG. ESTILO DA SECÇÃO/SUBSECÇÃO/PARÁGRAFOS
% Diminuir tamanho da fonte e espaçamentos. \normalsize equivale à 12pt
\titleformat{\section}{\normalsize\bfseries}{\thesection}{12pt}{}
\titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{12pt}{}
\titleformat{\subsubsection}{\normalsize\bfseries}{\thesubsubsection}{12pt}{}
%\titleformat*{\paragraph}{\large\bfseries}
%\titleformat*{\subparagraph}{\large\bfseries}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}


%%%%% CONFIG. LEGENDAS DAS FIGURAS/TABELAS
\captionsetup[figure]{labelfont={bf}, labelsep=endash}
\captionsetup[subfigure]{labelfont={normal}}
\captionsetup[table]{labelfont={bf}, labelsep=endash}


%%%%% CONFIG. SUMÁRIO
\newcommand{\sumario}{%
	\clearpage\tocloftpagestyle{empty}%
	\renewcommand{\cfttoctitlefont}{\hfill\normalsize\MakeUppercase}%
	\renewcommand{\cftaftertoctitle}{\hfill}%
	\renewcommand{\cftsecfont}{\normalfont\bfseries}%
	\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}%
	\renewcommand{\cftsecpagefont}{\normalfont}%
	\setlength{\cftsubsecindent}{0em}%
	\setlength{\cftsubsubsecindent}{0em}%
%	\renewcommand{\contentsname}{SUMÁRIO}
	\tableofcontents\newpage%
}


%%%%% CONFIG. LISTA DE FIGURAS
\newcommand{\listadefiguras}{%
	\clearpage\tocloftpagestyle{empty}%
	\renewcommand{\cftloftitlefont}{\hfill\normalsize\MakeUppercase}%
	\renewcommand{\cftafterloftitle}{\hfill}%
%	\renewcommand{\listfigurename}{LISTA DE FIGURAS}
	\listoffigures\newpage%
}


%%%%% CONFIG. LISTA DE TABELAS
\newcommand{\listadetabelas}{%
	\clearpage\tocloftpagestyle{empty}%
	\renewcommand{\cftlottitlefont}{\hfill\normalsize\MakeUppercase}%
	\renewcommand{\cftafterlottitle}{\hfill}%
%	\renewcommand{\listtablename}{LISTA DE TABELAS}
	\listoftables\newpage%
}


%%%%% CONFIG. CAPA E FOLHA DE ROSTO
\newcommand{\campus}[2]{\gdef\cidade{#1}\gdef\estado{#2}}
\newcommand{\graduacao}[2]{\gdef\tipo{#1} \gdef\curso{#2}}
\renewcommand{\author}[2]{\gdef\@autorprimeiro{#1} \gdef\@autorsegundo{#2}}
\renewcommand{\title}[2]{\gdef\titulo{#1} \gdef\subtitulo{#2}}
\newcommand{\orientador}[1]{\gdef\orientador{#1}}
\newcommand{\numerodepagina}[1]{\gdef\numerodepagina{#1}}
\renewcommand{\date}[2]{\gdef\@mes{#1} \gdef\@ano{#2}}

\renewcommand{\maketitle}{%
	\pagenumbering{arabic}
	\clearpage\thispagestyle{empty}
	\begin{center}
		\begin{singlespace}
			\MakeUppercase{\textbf{\Large Instituto Federal de Educação, Ciência e Tecnologia do Norte de Minas Gerais}}
			
			\vspace*{0.4cm}\MakeUppercase{\textbf{\Large Campus~\cidade}}
			
			\vspace*{1cm}\MakeUppercase{\textbf{\Large Curso Superior em~\tipo~em~\curso}}
			
			\vspace*{\stretch{0.7}}\MakeUppercase{\textbf{\Large Projeto de Pesquisa}}
			
			\vspace*{\stretch{0.5}}\MakeUppercase{\textbf{\large\titulo~\subtitulo}}
			
			\vspace*{\stretch{0.5}}\MakeUppercase{\textbf{\large\@autorprimeiro~\@autorsegundo}}
			
			\vspace*{\stretch{1}}\MakeUppercase{\textbf{\large\cidade~(\estado)}}\\
			\textbf{\large\@ano}
		\end{singlespace}
	\end{center}
%
	\newpage\clearpage\thispagestyle{empty}
	\begin{center}
		\begin{singlespace}
			\MakeUppercase{\textbf{\large Instituto Federal de Educação, Ciência e Tecnologia do Norte de Minas Gerais}}
	
			\vspace*{0.4cm}\MakeUppercase{\textbf{\large Campus~~\cidade}}
	
			\vspace*{1cm}\MakeUppercase{\textbf{\large Curso Superior em~\tipo~em~\curso}}
	
			\vspace*{\stretch{1.3}}\MakeUppercase{\textbf{\large\titulo~\subtitulo}}
	
			\vspace*{\stretch{0.7}}\textbf{\MakeUppercase{\@autorprimeiro~\@autorsegundo}}
			

		\end{singlespace}
	\end{center}

	\begin{singlespace}
		
		\vspace*{0.4cm}\leftskip=5cm\noindent \footnotesize
		Projeto de pesquisa apresentado à Profª Joelma de Fatima Mendes Bandeira, como requisito para nota parcial da disciplina Produção e Gestão do Conhecimento, do curso de Licenciado em \curso.
		
		
		\vspace*{0.4cm}\leftskip=5cm\noindent\textbf{Acadêmico:} \MakeUppercase{\textbf{\@autorprimeiro~\@autorsegundo}}
		
		%TODO: título de obtenção: para cursos de bacharelado o título de obtenção precisa ser mudado manualmente.
		
	\end{singlespace}

	\vspace*{\stretch{2}}
	\begin{center}
		\MakeUppercase{\textbf{\cidade, \estado}}\\
		\@mes~de~\@ano
	\end{center}
}{}


%%%%% NOVOS AMBIENTES
\newenvironment{CitacaoLonga}{%
	\begin{singlespace}%
		\footnotesize%
		\parindent=0mm		% indentação nos parágrafos
		\noindent%
		\ignorespaces%
		\leftskip=4cm%
	}{%
		\ignorespacesafterend%
	\end{singlespace}%
}

\newenvironment{Referencias}{%
	\begin{singlespace}%
		\vspace*{-0.3cm}%
		\parindent=0mm%
		\parskip=12pt%
		\noindent%
		\ignorespaces%
		\flushleft%
	}{%
		\ignorespacesafterend%
	\end{singlespace}%
}

\newenvironment{Resumo}{%
	\clearpage\thispagestyle{empty}%
	\begin{center} \textbf{RESUMO} \end{center}%
	\vspace*{-0.8cm}%
	\begin{singlespace}%
		\parindent=0cm%
		\noindent%
}{%
	\end{singlespace}%
	\newpage%
}
