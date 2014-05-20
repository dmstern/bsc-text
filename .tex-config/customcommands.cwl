# Datei zur Autovervollständigung für eigene Befehle
#
# Bilder ===========================================================================================
#\newcommand{\image}[5]{
#	\begin{figure}[h!]
#	\centering
#	\includegraphics[
#		#2,								% 	#4:	Größe: entweder 
#										% 			'width=1\textwidth,' = gesamte Breite 
#										% 			'resolution=\screenshotRes' = Orig.-gr.
#		natwidth=1,						% 		Parameter für latexmk
#		natheight=1						% 		Parameter für latexmk
#		]{#1}							%	#1: Label und Dateiname
#		\caption
#			[#3]						%	#2: Kurzbeschriftung (im Verzeichnis)
#			{#4}						%	#3: Beschriftung (am Bild)
#		\label{fig:#1}					% 		Label: 'fig:' + 'DATEINAME'
#		\vspace{\imagesourcespace}		% 		Abstand zur Quellenangabe
#		\imagesourcefont{}				% 		Schrift f. Quellenangabe
#		\caption*{\imagesourcelabel #5}	%	#5: Quellenangabe
#	\end{figure}
#}

\image{LABELFILENAME}{width=\fullimagesize or resolution=\screenshotRes}{SHORT}{CAPTION}{SOURCE}
\includehtml{FILENAME}{label=lst:LABEL, caption={CAPTION.},}
\includebash{LABELFILENAME}{caption={CAPTION.}}


#===================================================================================================
