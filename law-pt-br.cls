\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dil}[2016/10/06]
% ----------- Classes --------------------------------
\LoadClass{article} % Estudo alterar para o abntex2
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
\newcommand{\artigo}{\refstepcounter{artigo} % 
	\ifnum\theartigo<10 %
	{\bfseries Art.~\arabic{artigo}\textordmasculine~~}%
	\else
	{\bfseries Art. \arabic{artigo}~~}%
	\fi
}
%------------------------------------------------

%------------------------------------------------
% Comando Parágrafo
\newcounter{paragrafo}[artigo]
\newcommand{\paragrafo}[1]{\refstepcounter{paragrafo} % 
	\ifnum\theparagrafo=1 %
	Par\'agrafo \'unico.~#1%\\
	\else
		\ifnum\theparagrafo<10 %
		\S~\arabic{paragrafo}\textordmasculine~#1%\\
		\else
		\S~\arabic{paragrafo}~#1%
		\fi
	\fi
}
%------------------------------------------------

%------------------------------------------------
% Comando Inciso
\newcounter{inciso}[paragrafo]
\newcommand{\inciso}{\refstepcounter{inciso}% 
	\Roman{inciso}.~-~
}
%------------------------------------------------

%------------------------------------------------
% Comando Alinea
\newcounter{alinea}[inciso]
\newcommand{\alinea}{\refstepcounter{alinea}% 
	\alph{alinea})~
}
%------------------------------------------------

%------------------------------------------------
% Comando Itens
\newcounter{itens}[alinea]
\newcommand{\itens}{\refstepcounter{itens}% 
	\arabic{itens}.~
}
%------------------------------------------------
\newcommand{\descricao}[1]{\hfill%
	\begin{minipage}{0.5\textwidth}
		#1
	\end{minipage}
	\vspace{\baselineskip}
}
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
%************************************************
\newcommand{\nomelei}[1]{
	\begin{center}
		\huge\textbf{#1}
	\end{center}
}
