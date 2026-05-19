:- dynamic respuesta/2.

personaje(julieta_venegas, [mujer, folk_rock, mexicano, vivo]).

adivinar :-limpiar_respuestas, buscar([julieta_venegas,]).

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
