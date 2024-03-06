%Estructuras
ensenia(juan, 'Base de Datos II').
ensenia(maria, 'Base de Datos II','Redes I', ia).
ensenia(maria, 'Redes I').
ensenia(maria, ia).
ensenia(estela, 'Redes I').
ensenia(estela, ia).


asiste(arturito,'Base de Datos II').
asiste(arturito,'Redes I').
asiste(andres,'Redes I').
asiste(andres, ia).
asiste(jose, 'Base de Datos II').
asiste(jose, 'Redes I').
asiste(jose, ia).
asiste(karina, ia).
asiste(karina, ia).
asiste(mariel, ia).

esDocenteDe(Docente,Estudiante):- ensenia(Docente,Materia),asiste(Estudiante,Materia).
esCompaniero(EstudianteA,EstudianteB):- asiste(EstudianteA,Materia), asiste(EstudianteB,Materia).
