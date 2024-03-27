estaEnLista(juan[juan,maria,pedro]).
estaEnLista(juan, [juan|maria|pedro]).
estaEnLista(Valor, [_|Cola]) :- estaEnLista(Valor, Cola).