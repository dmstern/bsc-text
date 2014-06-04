# Datei zur Autovervollständigung für eigene Befehle
#
# Bilder ===========================================================================================
# \newcommand{\image}[6][.]{
#	\begin{figure}[]
#	\centering
#	\includegraphics[
#		#3,								% 	#3:	Größe: entweder 
#										% 			'width=1\textwidth,' = gesamte Breite 
#										% 			'resolution=\screenshotRes' = Orig.-gr.
#		natwidth=1,						% 		Parameter für latexmk
#		natheight=1						% 		Parameter für latexmk
#		]{#1/#2}							%	#1/#2: Unterordner / Label und Dateiname
#		\caption
#			[#4]						%	#4: Kurzbeschriftung (im Abbildungsverzeichnis)
#			{#5}						%	#5: Beschriftung (am Bild)
#		\label{fig:#2}					% 		Label: 'fig:' + 'DATEINAME'
#		\vspace{\imagesourcespace}		% 		Abstand zur Quellenangabe
#		\imagesourcefont{}				% 		Schrift f. Quellenangabe
#		\caption*{\imagesourcelabel #6}	%	#6: Quellenangabe
#	\end{figure}
#}

\image[opt. SUBFOLDER]{LABELFILENAME}{width=\fullimagesize or resolution=\screenshotRes}{SHORT}{CAPTION}{SOURCE}
\includehtml{FILENAME}{label=lst:LABEL, caption={CAPTION.},}
\includebash{LABELFILENAME}{caption={CAPTION.}}

===============================================================================================
# Zwei Bilder nebeneinander.
# \newcommand{\doubleimage}[9][.]{
# 	\begin{figure}
# 	\centering
# 	\begin{subfigure}{.5\textwidth}
#	  \centering
#	  \includegraphics[width=.8\linewidth]{#1/#3}
#	  \caption{#5}
#	  \label{fig:#3}
#	\end{subfigure}%
#	\begin{subfigure}{.5\textwidth}
#	  \centering
#	  \includegraphics[width=.8\linewidth]{#1/#4}
#	  \caption{#6}
#	  \label{fig:#4}
#	\end{subfigure}
#		\caption
#			[#7]
#			{#8}
#		\label{fig:#2}
#		\vspace{\imagesourcespace}
#		\imagesourcefont{}
#		\caption*{\imagesourcelabel #9}
#	\end{figure}
#}

\doubleimage[opt. SUBFOLDER]{LABELFILENAME}{LABELFILENAME1}{LABELFILENAME2}{CAPTION1}{CAPTION2}{SHORT}{CAPTION}{SOURCE}


#===================================================================================================
