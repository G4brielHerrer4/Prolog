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
esPadre(Padre, Hijo):- esDescendienteDirecto(Hijo,Padre),esHombre(Padre).


% regla de madre
esMadre(Madre, Hijo):- esDescendienteDirecto(Hijo,Madre),esMujer(Madre).


% si es hijo (a)
esHijo(Hijo, Padre) :- esHombre(Hijo), esDescendienteDirecto(Hijo,Padre).
esHija(Hija, Padre) :- esMujer(Hijo), esDescendienteDirecto(Hijo,Padre).

% si son hermanos
esHermano(Hermano,Persona):- esDescendienteDirecto(Hermano,Padre), esHombre(Hermano),
                               esDescendienteDirecto(Persona,Padre).


% si es abuelo (a)
esAbuelo(Abuelo,Hijo) :- esDescendienteDirecto(Hijo, Padre), esDescendienteDirecto(Padre,Abuelo), esHombre(Abuelo).
esAbuelo(Abuelo,Hijo) :- esDescendienteDirecto(Hijo, Padre), esDescendienteDirecto(Padre,Abuelo), esMujer(Abuela).

%si es ancestro (a)
esAncestro(Ancestro, Descendiente) :- esDescendienteDirecto(Descendiente, Ancestro).
esAncestro(Ancestro, Descendiente) :- esDescendienteDirecto(Descendiente, Padre), esAncestro(Ancestro, Padre).


