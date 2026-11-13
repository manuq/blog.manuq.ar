+++
date = '2026-11-11T00:00:00-00:00'
title = 'GodotFest 2026 München Brezen'
summary = 'talks I attended and hallway conversations'
+++

I crossed the ocean to attend the festival, and for some days of coworking (at work we are all remote). What I enjoyed the most was talking with people and playing their games. Also, watching people play Threadbare. I wasn't very convinced of adding the touch support, and it really makes it easy to show the game from a phone, even if it's not the main way of playing it.

## hallway conversations

I discovered [RothioTome](https://www.twitch.tv/rothiotome) showing her new horror game and immediately we started chatting about her recent times as celebrity at [the eva](https://expoeva.com/) in Buenos Aires. She is to me one of the best gamedev streamers in Spanish. Then I showed her Threadbare and she started playing it in my phone, and gave me [the most important feedback](https://github.com/endlessm/threadbare/discussions/3079) I got so far for the touchscreen mode. I already implemented it and I'm surprised how good it feels. Back home I started playing [Wax Heads](https://store.steampowered.com/app/2769240/Wax_Heads/), which was pending on my list for a while. Has good vibes, I am liking it!

Talking about that, Stein was there too with his [Dig Dig Boom](https://store.steampowered.com/app/2026040/Dig_Dig_Boom/). Awesome game!

Finally I had the pleasure of meeting Lilith and Nikita, who make [Backstitch](https://backstitch.dev/). Also I listened Giovanni (gamedev from Colombia) and Emilio Coppola (director of the Godot Foundation) and I joined the campfire. Later I had lunch with Giovanni, who played Threadbare in his mobile phone while I commented how good was his talk of the previous day. Which brings me to...

## the talks

The one I liked the most was about a humanitarian game [Amnios](https://www.play-amnios.com/) which is [source-available](https://github.com/headpoolnumerique/Amnios). Is an interactive story, based on the real story of three women (Nina, Amani and Tania) migrating and at the same time mothering. Is the result of a research about humanitarian design, with no commercial interest. Made by a team of 100% women. Tested by mothers without prior experience in videogames. I really recommend [watching this talk](https://youtu.be/-Jz-pna3upc). The creative director Aida Navarro told that they used open source tools exclusively. Godot, of course. And the illustrations were made in Krita for an artist now working at Disney, wow. The thing is, at the moment of this writing, there are two ways of playing Amnios: 1. going to the red cross Swiss museum. Or 2. downloading the project and opening it in the Godot editor. Which I did! And with my team mate Will we've been inspecting it, to see how they did the sprites reflected in the water with Pointlight2d nodes. The developer Claire Delhomme explained it in the talk, but testing it in the project is much better. By the way, above I said "source available" because this game is on GitHub, but is not open to contributions, at least not today.

An open-source game that is community-driven is 99 Managers Futsal Edition, from Simon Dalvai. In particular, it receives translations from a lot of people for many languages. [The talk](https://youtu.be/cExS9FKLOOc) was about how to integrate Weblate, thing that interest me for Threadbare. It was also nice to confirm that we made the right decision by choosing Gettext over CSV for the translations. I already [took the advice of adding context](https://github.com/endlessm/threadbare/pull/3077) from this talk. In English "back" can refer to the navigation (going back) or to the body part. So thanks Simon.

I took some notes from the [accessibility talk](https://youtu.be/2d0Vv7Aadmc) to make Threadbare more accessible.  The most important feature seems to be input mapping, so a player with disabilities can remap their input to their liking.

The one about [incrementally porting GDScript to C++](https://youtu.be/kPQZ9af-ei0) for things that need performance could be useful to me in the future. The example project was good.

The one about [making a flamethrower SFX from a bathroom sink](https://godotfest.com/talks/synthesizing-a-flamethrower-from-a/) was a lot of fun.

There was also a basic one about [image composition](https://youtu.be/e5JcSxDBop8). I knew many things already, but they were very well presented. It made me open [this task](https://github.com/endlessm/threadbare/issues/3070) for the cinematics.

There were at least three talks on production / planning and I liked them all. One [dedicated to game jams](https://www.youtube.com/watch?v=8mLDjptfA_s), another about [validating if your game is good](https://youtu.be/2N4l1qCWqU8). And personally the one I liked the most was the one from Giovanni, it seemed honest to me, and the title resonated from somewhere: [The Price of Rushing Preproduction](https://youtu.be/aAK1v01pJfc). I'm looking forward for this game, is a turn-based Residen Evil with PS1 aesthetics.

Same [as for gamescom]({{< relref "posts/juegos-de-gamescom-2026.en.md" >}}), thanks Endless Access for sending me to the event!
