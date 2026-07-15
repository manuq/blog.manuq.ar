+++
date = '2025-11-16T00:00:00-00:00'
draft = false
title = 'participating in VsJam'
tags = ['gamedev','python','pycamp','pyar']
summary = 'two crazy weeks making a game for a very peculiar console'
+++

[This was my submission](https://github.com/ventilastation/vsdk/pull/81) for ventilastation jam! (video included). The game I was able do in the short time I had to dedicate to it, in a pair of weeks. I had a blast. It helped a lot that it rained during the weekend and I couldn't go sailing. I proceed to tell a bit...

## three pycamps

...summarize my story with [ventilastation](https://ventilastation.protocultura.net/en/):

- 2013: The pycamp in which I saw them swinging a strip of leds to write "hello world" in the air. Months later, my friend alecu surprised us with the *"super ventilagon"*, his port of [super hexagon](https://superhexagon.com/). I was even more surprised when I was able to play it and confirm that the port was as precise and mesmerizing as the original.

- 2018? The pycamp in which together with SAn we started to do the emulator for the ventilastation in [pyglet](https://pyglet.org/), while alecu was fighting with [micropython](https://micropython.org/).

- 2025: Much closer in time... March this year! The pycamp in which I did assets for "a jugar con vugo" (game inspired in [the Hugo television show](https://en.wikipedia.org/wiki/Hugo_(franchise))), having the real ventilastation at hand.

(What a pycamp is can't be summarized; it deserves a separate post. But it's basically an unconference of [the argentine python community](https://www.python.org.ar/) that has its own unique character. I usually join in for the video games.)

The ventilastation is a spectacular project for several reasons: the free hardware and software, the fact that it can be programmed in (micro)python, that the microchip is spinning at full speed along with the leds, and the hacker/punk/rebellious aesthetic of the games.

## the jam

I found out about the online jam a week late, but I decided to join anyway. It had been [aages](https://github.com/manuq/aereo.manuq.ar) since I'd participated in a jam! We worked exclusively in the emulator, sharing our progress on the event's Discord server. And in three sessions, on Thursdays (two for me), alecu showed us how what we had pushed looked on the real hardware, streaming the camera on Discord and pointing it squarely at the fan. He figured out how to synchronize both speeds (the camera and the fan) to make it look pretty faithful.

I started by installing [the vsdk](https://github.com/ventilastation/vsdk) inside [a toolbx](https://containertoolbx.org/). I'm leaving the steps [in this gist](https://gist.github.com/manuq/bbfc2fbd87a2acd72d5a1da865511dbe) for anyone who, like me, likes using immutable systems.

My idea was to continue the "a jugar con vugo" project. From that experience, I learned:

- What types of assets look bad for the path / tunnel tiles. They shrink very quickly along the Y axis. Past the halfway of the tunnel, the 16-pixel-high tile is displayed at 4 [arxeles](https://github.com/ventilastation/vsdk/blob/main/docs/developers-guide.md#part-iv-ventilastation-display-and-sprites) or less.
- That you shouldn't use bright backgrounds. It's better to leave dark areas!

But I got bogged down in this and wasted a lot of time, especially with workarounds that seemed to look good in the emulator but proved not to be the case on the real hardware. My [first pull request](https://github.com/ventilastation/vsdk/pull/54) (includes video) was a demo of a tunnel that goes back and forth, nothing more.

## tincho vrunner

Just recently, Nico, a journalist friend who works at the local newspaper, published [a chronicle](https://www.ellitoral.com/area-metropolitana/video-viral-tincho-carpincho-jorge-alvarez-martin-familia-periodista-personaje-realizador-canal13-santafe-islas-capibara-muneco-mascota-abuelo-lobato_0_bJrUxksHhR.html) about a character from our pop culture. And it occurred to me to [include him as a character in the game](https://github.com/ventilastation/vsdk/pull/56). This also gave me the motivation to continue the game jam, add gameplay, and turn the demo into a real game: tincho carpincho's game. Having a theme or something to inspire you is great. You can read more about Tincho in the [README](https://github.com/ventilastation/vsdk/tree/main/apps/micropython/apps/tincho_vrunner#tincho-vrunner) (in Spanish).

I turned it into a time trial, a "vrunner". Tradition says that every ventilation title is a pun using the letter V. I made two levels and [made it possible to win or lose](https://github.com/ventilastation/vsdk/pull/65) (video in the link). In the first level, the objective is to go forward, inwards. And in the second, the objective is to go backwards or outwards, bouncing off the... boxes? pillows? rocks? There are red blocks that slow you down, which later became weeds in [aseprite](https://www.aseprite.org/).

The *sdk* is very simple, all you can do fits [in three slides](https://docs.google.com/presentation/d/1gfKrzKq1-QdnFjiBYQB6Z456wWDf1JxnY42-vLq9Bws/):
- the **Sprite** class. With setters y getters like `Sprite.y() -> int`, `Sprite.set_y(int)`, `Sprite.set_perspective(int)`
- the **Scene** class. With methods to be redefined like `Scene.on_enter()`, `Scene.step()`
- the **director** singleton. With methods like `director.push(scene)`, `director.was_pressed(joy_const)`, `director.sound_play(filename)`

Coming from working daily with [godot](https://godotengine.org/), where anything is possible, the restrictions of ventilastation are fresh air for me, and a great trigger for creating. It's something I was reflecting on recently in the game club we have at work, where we played [minit](https://minitgame.com/) (a game with a 1-bit palette).

For example, in [threadbare](https://github.com/endlessm/threadbare) we have layers and layers of tiles. Several of them end up fully occluded. So unless the engine is doing something smart, things must be being drawn unnecessarily. And since the hardware of a modern personal computer is more than enough for the game, it doesn't matter. In contrast, in ventilastation, you have to be careful with memory, and you can't instantiate sprites in the middle of the game loop. For the tiles, for example, I have a fixed list of sprites that I reuse throughout the tunnel. When the horizontal strips of tiles leave the circle, they are placed back in the center, using the image (the frame) that corresponds to that height of the tunnel. I do the same with the props.

What's unique about the ventilastation is its circular screen, which is super cool, and the fact that the coordinates are radial. There are 3 perspective modes for a sprite, and mastering them is really important for making games:

- Mode 0: I call it "fullscreen". It reprojects the image in cartesian coordinates so it appears exactly as it is. I used this for the backgrounds, like the capybara fishing on the initial screen.

- Mode 1: I call it "tunnel". The image appears bent and rotated along the X coordinate and shrinks as the Y coordinate increases, until it disappears in the center, without losing its aspect ratio. I used this for the ground and the props.

- Mode 2: I call it "HUD". Like the previous mode, the image appears bent and rotated along the X coordinate. But along the Y coordinate, it always occupies the same amount of arcs (which total 54), so when you move it along the Y coordinate, it distorts (its aspect ratio changes). I used this for the player that runs in loop, and for the signs. You can see how it distorts in the signs I animated vertically with the instructions: "reach the bottom," "reach the outside." It creates a lovely squash & stretch effect that's worth taking advantage of next time!

Modulus operator (%) everywhere! For frame-by-frame animations, the speed is adjusted like this:

```
self.cur_frame = (self.cur_frame + 1) % 256
self.player.set_frame((self.cur_frame // 16) % 4)
```

That's inside the `step()` method of the scene. It makes tincho's sprite change every 16 steps, displaying the 4-frame animation in a loop.

Once I had some gameplay, I iterated over the assets again. I added signs like "you won" to inform the players, communicate the objective and controls. For the retro sound effects I used the [sfxr](https://sfxr.me/) generator, which fits the console's mood well. Playing with the sliders, I made three variations of each. The code randomizes them like this:

```
director.sound_play("tincho_vrunner/powerup%d" % randrange(3))
```

There isn't much more to rescue [from the code](https://github.com/ventilastation/vsdk/blob/main/apps/micropython/apps/tincho_vrunner/tincho_level.py) beyond these snippets, which is jam-level code. Let's say it doesn't follow the highest industry standards.

Finally, I iterated on the design of the two levels and tweaked the mechanics a bit. I asked for help with the music on Discord, and [JuanElHongo](https://juanelhongo.itch.io/) sent me several tracks they had, one of which was perfect. Landed.

I loved seeing the process of the other games in the jam, and although there wasn't much interaction between us, the set of games turned out great!

## post jam?

These are things I left out, what I'd like to do if I were to resume development of the game:

- Improve collisions. I received really good feedback on this, and it's something I'd also noticed in the emulator. Due to time constraints, I used the collision detection that comes with the Sprite class. But in game development, you almost always end up using a different collision detection than the asset, smaller or larger, to make the game less harsh, less punishing. It's also strange that it doesn't collide when moving backward, but that's what enables the bounce mechanic.
- Fix bug: music doesn't play at level 2.
- Improve the level definition so they can be edited faster.
- Add a couple more levels. Make better use of the bounce mechanic, the backward movement, which is the game's signature feature.
