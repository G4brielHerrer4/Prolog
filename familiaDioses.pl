%Hechos - Gabriel Herrera

esHombre(cronos).
esHombre(ares).
esHombre(poseidon).
esHombre(hefesto).
esHombre(zeus).
esHombre(baco).
esHombre(hermes).

esMujer(hera).
esMujer(afrodita).
esMujer(hipolita).
esMujer(atena).
esMujer(nera).

%  padre madre e hijo(a)
padre(cronos, ares).
padre(cronos, hera).
padre(ares, afrodita).
padre(ares, hefesto).
padre(poseidon, zeus). 
padre(hefesto, baco).
padre(hefesto, atena).
padre(zeus, nera).

madre(hera, afrodita).
madre(hera, hefesto).
madre(afrodita, zeus).
madre(afrodita, baco).
madre(afrodita, atena).
madre(atena, hermes).
madre(hipolita, nera).

esDescendienteDirecto(hera, cronos).
esDescendienteDirecto(afrodita, ares).
esDescendienteDirecto(afrodita, hera).
esDescendienteDirecto(hefesto, ares).
esDescendienteDirecto(hefesto, hera).
esDescendienteDirecto(zeus, poseidon).
esDescendienteDirecto(zeus, afrodita).
esDescendienteDirecto(baco, afrodita).
esDescendienteDirecto(baco, hefesto).
esDescendienteDirecto(atena, afrodita).
esDescendienteDirecto(atena, hefesto).
esDescendienteDirecto(nera, hipolita).
esDescendienteDirecto(nera, zeus).
esDescendienteDirecto(hermes, atena).

% regla de padre
esPadre(Padre, Hijo) :- padre(Padre, Hijo),esHombre(Padre).

% regla de madre
esMadre(Madre, Hijo) :- madre(Madre, Hijo),esMujer(Madre).

% si es hijo (a)
esHijo(Hijo, Padre) :- esPadre(Padre, Hijo).
esHija(Hija, Madre) :- esMadre(Madre, Hija).


% si son hermanos
esHermano(Hermano, Hermana) :- esHijo(Hermano, Padre),esHijo(Hermana, Padre),Hermano \= Hermana.
esHermana(Hermana, Hermano) :- esHermano(Hermano, Hermana).

% si es abuelo (a)
esAbuelo(Abuelo, Nieto) :- esPadre(Abuelo, Hijo),esPadre(Hijo, Nieto).
esAbuela(Abuela, Nieto) :- esMadre(Abuela, Hijo),esPadre(Hijo, Nieto).

%CONSULTAS EJEMPLO

%ES_PADRE
%?- esPadre(Hijo, zeus).

%ES_MADRE
%?- esMadre(Hijo, hefesto).

%ES_HIJO
%?- esHijo(Hijo, cronos).

%ES_HIJA
%?- esHija(Hija, hera).

%ES_HERMANO
%?- esHermano(Hermano, afrodita).

%ES_HERMANA
%?- esHermana(Hermana, hefesto).

%ES_ABUELO
?- esAbuelo(Abuelo, baco).

%ES_ABUELA
?- esAbuela(Abuela, atena).