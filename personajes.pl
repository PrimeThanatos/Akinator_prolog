:- dynamic respuesta/2.

% Base de conocimiento de personajes animados
% Formato: personaje(nombre, [atributos]).

personaje(eeyore, [masculino, juguete, disney, libros_milne, magico, pesimista, mejor_amigo_protagonista]).
personaje(lumiere, [masculino, objeto, disney, cuento_beaumont, vela]).
personaje(mr_potatohead, [masculino, juguete, disney, original, modelo_3d, piezas_intercambiables]).
personaje(piglet, [masculino, juguete, disney, libros_milne, cerdo, mejor_amigo_protagonista]).
personaje(pinnochio, [masculino, objeto, disney, novela_collodi, protagonista, magico]).
personaje(rabbit, [masculino, juguete, disney, libros_milne, mejor_amigo_protagonista, come_zanahorias]).
personaje(tigger, [masculino, juguete, disney, libros_milne, mejor_amigo_protagonista, le_gusta_saltar]).
personaje(winnie_the_pooh, [masculino, juguete, disney, libros_milne, protagonista, come_miel]).
personaje(boys, [masculino, animal, pixar, original, modelo_3d, magico]).
personaje(zazu, [masculino, animal, disney, original, ave, puede_volar]).
personaje(boo, [femenino, humano, pixar, original, modelo_3d, coletas]).
personaje(elasticgirl, [femenino, humano, pixar, original, protagonista, modelo_3d, superpoderes, elasticidad]).
personaje(elinor, [femenino, humano, pixar, original, modelo_3d, magico, realeza]).
personaje(merida, [femenino, humano, pixar, original, protagonista, modelo_3d, realeza, valiente]).
personaje(violet, [femenino, humano, pixar, original, modelo_3d, superpoderes]).
personaje(dash, [masculino, humano, pixar, original, modelo_3d, superpoderes, velocidad]).
personaje(jack_jack, [masculino, humano, pixar, original, modelo_3d, superpoderes]).
personaje(mr_incredible, [masculino, humano, pixar, original, protagonista, modelo_3d, superpoderes, superfuerza]).
personaje(mike, [masculino, monstruo, pixar, original, protagonista, modelo_3d, un_solo_ojo]).
personaje(sully, [masculino, monstruo, pixar, original, protagonista, modelo_3d]).
personaje(jesse, [femenino, juguete, pixar, original, modelo_3d, vaquero]).
personaje(sally, [femenino, objeto, pixar, original, modelo_3d, automovil]).
personaje(bullseye, [masculino, juguete, pixar, original, modelo_3d, caballo]).
personaje(buzz_lightyear, [masculino, juguete, pixar, original, protagonista, modelo_3d, mejor_amigo_protagonista]).
personaje(ham, [masculino, juguete, pixar, original, modelo_3d, cerdo]).
personaje(mater, [masculino, objeto, pixar, original, modelo_3d, automovil, mejor_amigo_protagonista]).
personaje(mcqueen, [masculino, objeto, pixar, original, protagonista, modelo_3d, automovil]).
personaje(rex, [masculino, juguete, pixar, original, modelo_3d]).
personaje(slinky, [masculino, juguete, pixar, original, modelo_3d, resorte]).
personaje(woody, [masculino, juguete, pixar, original, protagonista, modelo_3d, vaquero]).

adivinar :- 
    limpiar_respuestas, 
    buscar([eeyore, lumiere, mr_potatohead, piglet, pinnochio, rabbit, tigger, winnie_the_pooh, boys, zazu, boo, elasticgirl, elinor, merida, violet, dash, jack_jack, mr_incredible, mike, sully, jesse, sally, bullseye, buzz_lightyear, ham, mater, mcqueen, rex, slinky, woody]).

buscar([Personaje]) :- write('El personaje es: '),write(Personaje), nl, !.

buscar([]) :-write('No pude identificar al personaje con esa informacion.'), nl.

buscar(Lista) :- obtener_caracteristica_util(Lista, C), preguntar(C), filtrar_personajes(Lista, C, NuevaLista), buscar(NuevaLista).

obtener_caracteristica_util(Lista, C) :-member(A, Lista),personaje(A, Caracteristicas),member(C, Caracteristicas),not(respuesta(C, _)),sirve_para_dividir(Lista, C),!.

sirve_para_dividir(Lista, C) :-
    aparece_en_algunos(Lista, C),
    no_aparece_en_algunos(Lista, C).

aparece_en_algunos(Lista, C) :-
    member(A, Lista),
    personaje(A, L),
    member(C, L), !.

no_aparece_en_algunos(Lista, C) :-
    member(A, Lista),
    personaje(A, L),
    not(member(C, L)), !.

preguntar(C) :-
    write('¿El personaje tiene la caracteristica "'),
    write(C),
    write('"? (si/no): '),
    read(R),
    assert(respuesta(C, R)).

filtrar_personajes([], _, []).

filtrar_personajes([A|R], C, [A|R2]) :-
    respuesta(C, si),
    personaje(A, Lista),
    member(C, Lista),
    !, filtrar_personajes(R, C, R2).

filtrar_personajes([A|R], C, [A|R2]) :-
    respuesta(C, no),
    personaje(A, Lista),
    not(member(C, Lista)),
    !, filtrar_personajes(R, C, R2).

filtrar_personajes([_|R], C, R2) :-
    filtrar_personajes(R, C, R2).

limpiar_respuestas :-
    retract(respuesta(_, _)),
    fail.
limpiar_respuestas.
