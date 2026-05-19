:- dynamic respuesta/2.

% Base de conocimiento de personajes animados
% Formato: personaje(nombre, [atributos]).

personaje(meg, [femenino, humano, disney, mitologia_griega, secundario, contrato]).
personaje(mulan, [femenino, humano, disney, leyenda, protagonista, guerrero, espada]).
personaje(pocahontas, [femenino, humano, disney, leyenda, protagonista, realeza, brujula]).
personaje(rapunzel, [femenino, humano, disney, hermanos_grimm, protagonista, magico, realeza, sarten]).
personaje(snow_white, [femenino, humano, disney, hermanos_grimm, protagonista, realeza, manzana]).
personaje(tiana, [femenino, humano, disney, leyenda, protagonista, realeza, humilde]).
personaje(vanelope, [femenino, humano, disney, original, protagonista, magico, realeza, videojuego]).
personaje(wendy, [femenino, humano, disney, novela_barrie, secundario, dedal]).
personaje(aladin, [masculino, humano, disney, mil_y_una_noches, protagonista, realeza, lampara]).
personaje(eric, [masculino, humano, disney, cuento_andersen, realeza, marinero]).
personaje(eugene, [masculino, humano, disney, hermanos_grimm, protagonista, realeza, corona]).
personaje(felix, [masculino, humano, disney, original, secundario, magico, martillo]).
personaje(hercules, [masculino, humano, disney, mitologia_griega, protagonista, magico, realeza, fuerza]).
personaje(john, [masculino, humano, disney, cuento_beaumont, secundario, chistera]).
personaje(john_smith, [masculino, humano, disney, leyenda, secundario, guerrero, mosquete]).
personaje(michael, [masculino, humano, disney, novela_barrie, secundario, peluche]).
personaje(moglie, [masculino, humano, disney, novela_kipling, protagonista, salvaje]).
personaje(peter_pan, [masculino, humano, disney, novela_barrie, protagonista, magico, polvo_hadas]).
personaje(prince_navene, [masculino, humano, disney, novela_baker, realeza, ukelele]).
personaje(prince_phillip, [masculino, humano, disney, cuento_perrault, realeza, guerrero, espada]).
personaje(quasimodo, [masculino, humano, disney, novela_hugo, protagonista, campanas]).
personaje(ralph, [masculino, humano, disney, original, protagonista, fuerza, videojuego]).
personaje(shang, [masculino, humano, disney, leyenda, secundario, guerrero, espada]).
personaje(tarzan, [masculino, humano, disney, novela_burroughs, protagonista, salvaje]).
personaje(beast, [masculino, monstruo, disney, cuento_beaumont, protagonista, magico, realeza, rosa]).
personaje(phil, [masculino, monstruo, disney, mitologia_griega, secundario, magico, entrenador]).
personaje(sttich, [masculino, monstruo, disney, original, protagonista, magico, alienigena]).
personaje(mrs_potts, [femenino, objeto, disney, cuento_beaumont, magico, secundario, tetera]).
personaje(cogsworth, [masculino, objeto, disney, cuento_beaumont, magico, secundario, reloj]).
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
buscar([meg, mulan, pocahontas, rapunzel, snow_white, tiana, vanelope, wendy, aladin, eric, eugene, felix, hercules, john, john_smith, michael, moglie, peter_pan, prince_navene, prince_phillip, quasimodo, ralph, shang, tarzan, beast, phil, sttich, mrs_potts, cogsworth, eeyore, lumiere, mr_potatohead, piglet, pinnochio, rabbit, tigger, winnie_the_pooh, boys, zazu, boo, elasticgirl, elinor, merida, violet, dash, jack_jack, mr_incredible, mike, sully, jesse, sally, bullseye, buzz_lightyear, ham, mater, mcqueen, rex, slinky, woody]).
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
