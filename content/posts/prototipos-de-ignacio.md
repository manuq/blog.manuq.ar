+++
date = '2025-10-25T00:00:00-00:00'
draft = true
title = 'Los prototipos de Ignacio'
tags = ['gamedev']
summary = 'apuntes de una charla'
+++

Lo que más disfruto en mi laburo actual (¡del que ya voy postear!) es hacer prototipos de videojuegos. Aunque hace poco fui a escuchar la siguiente charla y me di cuenta de que no tenía taan en claro la diferencia entre prototipar y el desarrollo posta que termina en el juego. La charla fue mucho más detallada que las pocas cosas que apunto acá, y espero que Ignacio la vuelva a dar en algún evento donde quede grabada. ¡Fue una verdadera *master class*!

Lo fui a escuchar a [Ignacio Puccini](https://www.ipuccini.com/) a [demos](https://www.instagram.com/p/DQW3AODkYZp). Ignacio nos contó que siempre supo que quería hacer videojuegos. Así fue como se movió, organizó eventos, empezó a trabajar en el rubro, y pronto saltó de santa fe a la gran industria, aplicando para ubisoft en francia, y después para [ustwo](https://ustwogames.co.uk/) en londres donde trabaja actualmente (los del gran juego escheriano [monument valley](https://ustwo.com/work/monument-valley/)). En sus [juegos personales en itch.io](https://itch.io/profile/puccini) puedo ver que, como tantos santafesinos que conozco, o personalidades como [Sáer](https://es.wikipedia.org/wiki/Juan_Jos%C3%A9_Saer), viven afuera pero siempre tienen el corazón acá en el pago.

Se dedica **exclusivamente** a hacer prototipos y la charla fue super informativa. Mucho más cuando me enteré, en el momento, que no iba sólo de prototipar: sino sobre cómo hacerlo mejor, de manera eficiente.

La parte triste es que nacho no puede mostrar nada de lo que hace, porque todo su laburo está bajo cláusulas de confidencialidad y porque lo que hace es descartable: los prototipos se tiran una vez que cumplieron su cometido.

## La pregunta es

Promocionaron la charla con el título "del prototipo al joystick" pero el verdadero título era "diseño de procesos de prototipado". Nacho empezó desmenuzando ese título, definiendo cada una de esas cosas: ¿qué es diseñar? ¿qué es un proceso? ¿qué es un prototipo? Mi apunte de esa slide: "aprender a mejorar la secuencia de tareas que nos permiten hacer pruebas que validan o no una incógnita".

Peero... antes de siquiera sentarse a prototipar hay que responderse un montón preguntas, y quizá nos demos cuenta que... ¡prototipar no sea la mejor opción! ¿qué queremos probar? ¿lo podemos probar sin prototipar? ¿cómo validamos el prototipo? ¿se puede en el tiempo que tenemos? ¿hay una mejor forma de hacerlo? ¿hay una forma más rápida?

Si decidimos que sí vamos a prototipar, es para responder a una pregunta, para probar algo. Es sumamente importante saber qué queremos probar.

## Cuándo

Algo que no me fue tan obvio es cuándo prototipar. La respuesta: se prototipa durante cualquier etapa del desarrollo, donde haya una pregunta que responder. Incluso después de lanzado el juego.

Un ejemplo (¡y creo que el único detalle que pudo dar nacho de su trabajo!) fueron los prototipos que hicieron para poder unificar los controles de los tres monument valley para lanzarlos a consolas. Los tres juegos salieron con varios años de diferencia, y por lo tanto usan stacks de tecnologías distintas, distintas versiones de Unity, etc. Y fueron pensados originalmente para una pantalla chiquita y táctil. Hay varias formas de mover al personaje con un joystick: moviendo al personaje directamente con el stick, moviendo un cursor libremente por la pantalla y que al apretar un botón el personaje camine hasta ahí, moviendo el cursor pero no tan libremente, sino saltando entre las áreas de interés, etc. Haciendo prototipos rápidos pudieron ver qué funcionaba y qué no en las distintas alternativas, y así tomar una decisión.

En fin, el concepto de prototipo que tiró es mucho más amplio de lo que yo pensaba: según nacho, una prueba a/b para saber si un icono de un juego mobile es más "clickbait" que otro, se puede considerar un prototipo.

## Qué tanto

En cuanto al balance entre prototipar y trabajar en el juego posta, nacho hizo referencia a una charla de GDC pero no la pude encontrar (creo que era un juego de un bote). La charla de GDC daba un número mágico: 5%. Es decir, estás prototipando demasiado si te lleva más del 5% del trabajo total. Nacho está de acuerdo con este número.

## Validando

¿Y cómo validamos los prototipos? Con playtesting, por supuesto. Hay una regla del playtesting que dice que hay que quedarse callado observando mientras la persona prueba, sin decirle una palabra. Ignacio no está de acuerdo con esto, sobre todo cuando la persona está viendo cosas temporales o inconclusas y necesitan explicación. Hay que decirle cosas como "imaginate que ese cuadrado rojo es un enemigo".

Lo que más rescaté de playtesting es: no quedarse con lo que la persona dice, sino con lo que la persona hace. Para eso usan métricas. Por ejemplo si el prototipo se tratara de un nivel unas buenas métricas serían: ¿pudo completar el nivel? ¿hasta dónde llegó? ¿cuánto tiempo le tomó? Etc.

## Mejorando la secuencia de tareas
