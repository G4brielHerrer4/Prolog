$ENLISTA (juan,[juan,maria,pedro]).

enLista(Valor,[Cabeza | Cola]):- Valor==Cabeza.
enLista(Valor,[Cabeza | Cola]):- enLista==(Valor, Cola).