esProducto("LG-510").
esProducto("Samsung B125").
esProducto("LG Batimix").
esProducto("Samsung L200").

esProducto("Bose",parlantes).
esProducto("LG",parlantes).


esCategoria(batidora).
esCategoria(lavadora).
esCategoria(parlantes).

esCategoria(electrodomestico).
esCategoria(entretenimiento).

esCliente(maria).

estaCategoria(batidora,electrodomestico).
estaCategoria(lavadora,electrodomestico).

estaCategoria(parlantes,entretenimiento).

estaCategoria("LG-510",batidora).
estaCategoria("Samsung B125",batidora).

estaCategoria("LG Batimix",lavadora).
estaCategoria("Samsung L200",lavadora).

estaCategoria("Bose",parlantes).
estaCategoria("LG",parlantes).

productoDentroCategoria(Producto, Categoria):- esCategoria(Categoria),esProducto(Producto), estaCategoria(Producto,Categoria).
productoDentroCategoria(Producto, Categoria):- estaCategoria(Producto, Categoria),productoDentroCategoria(Producto,Categoria).