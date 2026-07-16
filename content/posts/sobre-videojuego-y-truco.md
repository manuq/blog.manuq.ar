+++
date = '2026-04-23T00:00:00-00:00'
draft = false
title = 'sobre videojuegos y truco'
summary = '¿se puede hacer un videojuego inspirado en el truco?'
+++
Parte 1: el porqué.

Los videjuegos de cartas son los típicos que digo "me gusta jugarlos pero no hacerlos". No es lo primero que pienso a la hora de hacer videojuegos. Para hacer, prefiero algo más en tiempo real, 2d, con personajes en un mundo, con narrativa. El solo hecho de pensar en la complejidad del [Slay the Spire]({{< relref "posts/qué-aprender-de-slay-the-spire-2.md" >}}), el sinnúmero de cartas, sus modificaciones, la cantidad de combinaciones, el balancear todo eso.. ¡me da un vértigo!

Pero juego al truco bastante seguido con amigos. Y desde hace rato que me vengo haciendo dos preguntas separadas:
1. cómo sería un rediseño del juego de mesa, simplificado, sin limitarse al mazo español
2. cómo sería un videojuego inspirado en la estrategia y las mecánicas el truco, que no sea un simulador del juego de mesa

Preguntas que me están llevando, sin querer, a meterme en el mundo del diseño de juegos. Soy amateur para muchas cosas, pero en *game design* soy muuy amateur. ¿Qué puede malir sal? ¿Qué puedo saber eu de esta situação? Quiero probar con un prototipo, y probablemente fracase.

### examen de historia

Ojo que no es que no haya videojuegos que llevan al juego de mesa a la pantalla de la PC o del celu, ¡todo lo contrario! La historia de los videojuegos en Argentina no se puede contar sin cantar "¡truco!". Los más destacados:

- En los 80s la competencia entre Sacoa y Playland produce los dos primeros fichines argentinos: Trucotron y Truco Clemente. El segundo con [el personaje de Caloi](https://papelitos.com.ar/nota/el-clemente-de-caloi), cumbia y chamamé. [Acá hay un video de ambas ROMs en un gabinete](https://www.youtube.com/watch?v=fLhb4urIy_U). Para quien quiera chusmear más, aparecen en [revista REPLAY nro. 7 y nro 14 (respectivamente)](https://revistareplay.com.ar/digitales/).

- Por ahí también y con las computadoras hogareñas aparece el primer videojuego comercial argentino: Truco Arbiser, el primer videojuego comercial argentino. Me acuerdo jugarlo en MS-DOS. Tiraba versitos, te cargaba, y hasta sonaba la cumparsita en el "speaker" interno. [Acá un video de *gameplay* muy divertido](https://www.youtube.com/watch?v=bTSxL3I9ugE). Aparece en [REPLAY nro. 15](https://revistareplay.com.ar/digitales/).

- Más tarde, en la era del CD-ROM... Truco argentino v3.0 de Sintesoft. La estética muy tanguera, arrabalera. Envejeció un poco mal (el puntero del mouse es un chumbo, entre otras cosas). Pero haciendo la vista gorda, es el único que conozco que tiene personajes, cada uno con su personalidad, animaciones 2d y hasta voces grabadas. No estoy al tanto de que haya aparecido en una REPLAY.

- Con los primeros celulares, los ladrillitos Nokia y Motorola... Truco Mobile y Truco Personal. Primeros pinitos en apps para celulares "no smart". Tiene sistema multijugador contra un usuario random, aunque por la internet de entonces podías terminar jugando contra un bot. Aparece en [REPLAY nro. 31](https://revistareplay.com.ar/digitales/).

- Mucho más acá, Truco Blyts. El más conocido para jugar hoy en día en el celu. Tengo un amigo que lo vicia.

Si me estoy olvidando de alguno importante, <a href="mailto:manuel.por.aca@gmail.com?subject=sobre%20videojuegos%20y%20truco">me avisan.</a>

### ronda VS pantalla

<picture>
  <!-- User prefers light mode: -->
  <source srcset="/images/ronda-vs-pantalla-claro.png" media="(prefers-color-scheme: light)"/>

  <!-- User prefers dark mode: -->
  <source srcset="/images/ronda-vs-pantalla-oscuro.png"  media="(prefers-color-scheme: dark)"/>

  <!-- User has no color preference: -->
  <img src="/images/ronda-vs-pantalla-claro.png" alt="Comparación entre cartas dispuestas en ronda sobre una mesa, versus cartas dispuestas en grilla en una pantalla."/>
</picture>

El tema es que todos los juegos anteriores presuponen que el jugador es también un jugador del juego de cartas. Conoce bien las reglas y está buscando una experiencia parecida, pero en videojuego. Quizá con algún *feature* de este medio como agregar narrativa, poder jugar por internet... o simplemente que tenga una estética tanguera, o gauchesca en los gráficos o el sonido. O alguna otra vuelta de rosca *gamer*. Por ejemplo, me acabo de enterar de [un videojuego de truco roguelike](https://store.steampowered.com/app/3872160/Envido/), ¡pinta muy bien!

Me encanta que existan esos videojuegos y me gusta jugarlos. Pero el prototipo que quiero hacer yo es otra cosa. Me interesa más enfocarme en la esencia del truco, con su mentira y su mecánica de "decidir con información parcial" en las dos apuestas (envido y truco). Algo más parecido a lo que hace [Marvel Snap](https://marvelsnap.com/) (tengo que confesar que cuando apareció dije "uy, me ganaron de mano"). Cantar "¡snap!" es prácticamente cantar "¡truco!".

Y también, me interesa trasladar solamente lo que se puede. En particular, las señas es algo imposible de llevar a la pantalla. Y es parte importante del "decidir con info parcial". Cada medio tiene lo suyo. Intentar trasladar las cosas que sólo funcionan alrededor de una mesa a la pantalla no tiene sentido, es forzado. A menos que querramos hacer una simulación, como es el caso de todos los videojuegos mencionados arriba. Durante la pandemia con mis amigos tratamos de buscar una alternativa que se juegue a la distancia. Mi conclusión fue que, a menos que sea con realidad virtual, no se puede. El aspecto de sociabilización, lo que se dice y lo que no, la persuasión en la mentira, a quién mirar, son únicos del medio "estamos jugando alrededor de una mesa" y un videojuego no lo puede reemplazar. ¡Y está buenísimo que así sea! ¿Se podrá encontrar alguna mecánica análoga a las señas y que a la vez sea propia de los videojuegos? ¿Obtener powerups para revelar algo de info de la mano del oponente, por ejemplo?

Incluso en la interfaz. La pantalla es rectangular así que no tiene sentido poner las cartas en círculo o bazas. Es mejor ponerlas en filas y columnas (Marvel Snap lo hace bien). Algunos videojuegos de truco hacen un punto medio bastante forzado: ponen las cartas en ronda, pero derechas a la cámara. Las cartas físicas/materiales están diseñadas para jugarse en bazas, para ser leídas desde cualquier lado de la mesa. En un videojuego se puede cambiar el diseño totalmente. Incluso no tienen porqué ser cartas.

### un truco más accesible

Tengo la intuición de que el truco tiene algo para darle a los videojuegos. Y quero probarla, por eso el prototipo. Conozco varios juegos de mesa modernos, tipo eurojuegos. Hay varios en casa, y aún así el truco sigue siendo uno de mis predilectos para jugar con amigxs. Hay algo ahí.

Vale aclarar que cuando digo "truco" (¡quiero retruco!) en realidad estoy pensando en truco argentino. Más precisamente el que se juega en mi región. Y más precisamente, el que juego con mis amigos y las "reglas de la casa": sin cantora. De a seis jugadores, o a lo sumo de a cuatro. De dos (la versión de varios de los videojuegos arriba) se deja sólo para aprender o para el "punta y hacha".

Una vez, hablando con Juliano, un amigo brasileño, me dijo en portuñol: "ah sí el truco, ese que tiene vira y se juega con las cartas de corazones, de picas...". ¿Lo quee? Me estaba hablando del truco paulista. Ahí me enteré que el truco, más colonial que el dulce de leche, se juega en muchos lugares de latinoamérica y con muchas variantes... hasta con la baraja inglesa. Hay poca información en internet y hasta la Wikipedia se pierde con las variantes. Pero me puse a aprender lo que pude de cada una. Entre ellas la uruguaya, que tiene "muestra". Lo que entiendo es que la muestra (y la vira en otras variantes) es un *hack* que le agregaron a las reglas para que sea imposible cartearse (randomiza en cada mano cuáles son la cartas más altas). El problema es que a la vez hace a las reglas de juego mucho más complicadas. En mi caso cuando juego con amigos (¡no apostamos plata!) asumimos buena fe. Y en el caso de un videojuego, cartearse es imposible, a menos que le agreguemos esa mecánica (algunx que esté haciendo un simulador de truco que la implemente, puede ser divertido).

Volviendo a la primera pregunta de arriba... si hay variantes más complicadas que otras, ¿porqué no pensar en una variante más simple? Si hay variantes que hasta usan otra baraja ¿porqué no diseñar una baraja *custom* para la nueva variante? Además haría que el juego sea más accesible. Me ha tocado explicar las reglas y son bastante difíciles de aprender. Para la apuesta "truco" hay que memorizarse toda una jerarquía de 14 niveles. ¡Pero el rango o jerarquía de la carta se podría poner en la carta misma! Para la apuesta "envido" los puntos van del 0 al 33, pero hay un hueco: no se pueden obtener puntos entre el 8 y el 19. ¿Se podrá encontrar una escala de puntos más simple y continua?

Un par de veces deslicé las ideas que tengo para rediseñar el truco a jugadores. Y no lo recibieron bien, les pareció al pedo. Probablemente el prototipo les dé la razón. Eso sí, en esas oportunidades, me faltó dar todo el contexto que tiene este posteo. Explicar el porqué. También tratar de modernizar algo que está pegado a la tradición es pecar un poquito de hereje, y la verdad que sí soy, no me preocupa ese mote.

En fin, en esta primera parte dejo planteado el tema, porque ya se hizo re largo. En las que sigan, voy a ir comentando cómo me está yendo con el prototipo. O mejor dicho los prototipos: para el rediseño simplificado pueden llegar a ser cartas para imprimir, para el videojuego va a ser definitivamente un proyecto de Godot.

Antes de terminar, vaya un saludo especial a mis compañeros de juego: gurka, checho, mosca, tade, mauri, nico y pepo.
