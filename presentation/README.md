En LaTeX skabelon til beamers af størrelse 16:9. Skabelonen består af en KU-mappe bestående af billedefiler, en KUstyle.sty fil og en main.tex fil.

VIGTIGT! For at dokumentet kan compile, skal man benytte XeLaTeX eller LuaLaTeX som compiler. Dette kan gøres i Overleaf ved at gå til Menu -> Settings -> Compiler -> Vælg XeLaTeX/LuaLaTeX

For at ændre teksten på toplinje, skal man ændre kommandoen 'toplinje' inden document-miljøet

I skabelonen er den en forside og et standard slide. Et nyt standard slide tilføjes ved at benytte frame-miljøet. Det er vigtigt at [hoved] er inkluderet efter \begin{frame}.

Ønsker du at printe din beamer, så de fylder et helt A4 ark, kan flg. kode tilføjes inden \begin{document}

\usepackage{pgfpages}
\pgfpagesuselayout{resize to}[a4paper,landscape,border shrink=5mm]