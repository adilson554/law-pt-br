\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{law-pt-br}[2016/10/07]
% ----------- Classes --------------------------------
\LoadClass[12pt, a4paper]{article} % Estudo alterar para o abntex2
%-----------------------------------------------------
%
%
%
%
% ----------- Pacotes --------------------------------
\RequirePackage[normalem]{ulem} % pacote para cortar riscar o texto ao meio com o comando \sout{}
\RequirePackage[pdftex]{geometry} % pacote para mudar as margens da página
%
%
%
% ---------- pacotes para digiar acentos -----
\RequirePackage[utf8]{inputenc}
\RequirePackage[brazil]{babel}
%------------------------------------------------
%
% ----------- fim dos pacotes ------------------------
%
%
%
%
% ----------- papel e margens ------------------------
\geometry{a4paper, left=3cm, right=2cm, top=3cm, bottom=2cm}
% ----------------------------------------------------
%
%
%
% comando: riscar o texto
\newcommand{\revogado}[1]{%
	\sout{#1}
}
%------------------------------------------------

%------------------------------------------------
% comando: Artigo
\newcounter{artigo}
\newcommand{\artigo}[1]{\refstepcounter{artigo} % 
	\ifnum\theartigo<10 %
	{\textbf{Art.~\arabic{artigo}\textordmasculine}~~#1\smallskip}%
	\else
	{\textbf{Art. \arabic{artigo}}~#1\smallskip}%
	\fi
}
%------------------------------------------------

%------------------------------------------------
% comando: Artigo revogado
\newcounter{artigorev}
\newcommand{\artigorev}[1]{\stepcounter{artigo} % 
	\ifnum\theartigo<10 %
	\textbf{\sout{Art.~\arabic{artigo}\textordmasculine~#1}}\addtocounter{artigo}{-1}\smallskip%
	\else
	\textbf{\sout{Art. \arabic{artigo}~#1}}\addtocounter{artigo}{-1}\smallskip%
	\fi
}
%------------------------------------------------

%------------------------------------------------
% Comando Parágrafo
\newcounter{paragrafo}[artigo]
\newcommand{\paragrafo}[1]{\refstepcounter{paragrafo} % 
	\ifnum\theparagrafo<10 %
	\hspace{0.5cm}\S~\arabic{paragrafo}\textordmasculine~#1\smallskip%
	\else
	\hspace{0.5cm}\S~\arabic{paragrafo}~#1\smallskip%
	\fi
}
%------------------------------------------------

%------------------------------------------------
% Comando Parágrafo revogado
\newcounter{paragraforev}[paragrafo]
\newcommand{\paragraforev}[1]{\stepcounter{paragrafo} % 
	\ifnum\theparagrafo<10 %
	\hspace{0.5cm}\sout{\S~\arabic{paragrafo}\textordmasculine~#1}\addtocounter{paragrafo}{-1}\smallskip%
	\else
	\hspace{0.5cm}\sout{\S~\arabic{paragrafo}~#1}\addtocounter{paragrafo}{-1}\smallskip%
	\fi
}
%------------------------------------------------

%------------------------------------------------
% Comando Parágrafo único
\newcommand{\paragrafounico}[1]{% 
	\hspace{0.5cm}\textit{Par\'agrafo \'unico.}~#1\smallskip%
}
%------------------------------------------------

% Comando Parágrafo único revogago
\newcommand{\paragrafounicorev}[1]{% 
	\hspace{0.5cm}\sout{\textit{Par\'agrafo \'unico.}~#1}\smallskip%
}
%------------------------------------------------


%------------------------------------------------
% Comando Inciso
\newcounter{inciso}[paragrafo]
\newcommand{\inciso}[1]{\refstepcounter{inciso}% 
	\hspace{1cm}\Roman{inciso}.~-~#1\smallskip
}
%------------------------------------------------

%------------------------------------------------
% Comando Inciso revogado
\newcounter{incisorev}[paragrafo]
\newcommand{\incisorev}[1]{\stepcounter{inciso}% 
	\hspace{1cm}\sout{\Roman{inciso}.~-~#1}\addtocounter{inciso}{-1}\smallskip
}
%------------------------------------------------

%------------------------------------------------
% Comando Alinea
\newcounter{alinea}[inciso]
\newcommand{\alinea}[1]{\refstepcounter{alinea}% 
	\hspace{1cm}\alph{alinea})~#1\smallskip
}
%------------------------------------------------

%------------------------------------------------
% Comando Alinea revogada
\newcounter{alinearev}[inciso]
\newcommand{\alinearev}[1]{\stepcounter{alinea}% 
	\hspace{1cm}\sout{\alph{alinea})~#1}\addtocounter{alinea}{-1}\smallskip
}
%------------------------------------------------

%------------------------------------------------
% Comando Itens
\newcounter{itens}[alinea]
\newcommand{\itens}[1]{\refstepcounter{itens}% 
	\hspace{1cm}\arabic{itens}.~#1\smallskip
}
%------------------------------------------------

%------------------------------------------------
% Comando Itens revogados
\newcounter{itensrev}[alinea]
\newcommand{\itensrev}[1]{\stepcounter{itens}% 
	\hspace{1cm}\sout{\arabic{itens}.~#1}\addtocounter{itens}{-1}\smallskip
}
%------------------------------------------------

%------------------------------------------------
% Comando títulos
\newcounter{titulo}
\newcommand{\titulo}[1]{\refstepcounter{titulo}% 
	\begin{center}
		\bfseries T\'ITULO~\Roman{titulo}\\#1
	\end{center}
}
%------------------------------------------------

%------------------------------------------------
% Comando capítulo
\newcounter{capitulo}[titulo]
\newcommand{\capitulo}[1]{\refstepcounter{capitulo}% 
	\begin{center}
		\bfseries CAP\'ITULO~\Roman{capitulo}\\\uppercase{#1}
	\end{center}
}
%------------------------------------------------

%------------------------------------------------
% Comando seção
\newcounter{secao}[titulo]
\newcommand{\secao}[1]{\refstepcounter{cecao}% 
	\begin{center}
		\bfseries SE\C C\~AO~\Roman{cecao}\\\uppercase{#1}
	\end{center}
}
%------------------------------------------------
%************************************************
\newcommand{\nomelei}[1]{
	\begin{center}
		\huge\textbf{#1}\linebreak
	\end{center}
}
% --------------- abstract para preâmbulo -------
\addto{\captionsbrazil}{\renewcommand{\abstractname}{Pre\^ambulo}}
% -----------------------------------------------
