---
title: Strong Type System Should be Included in ALL Programming Languages!
layout: post
tags: PL
date: 2024-11-26 17:48:29 +0800
last_modified_at: 2025-03-06 18:26:56 +0800
---

![Language Quadrant](/assets/img/type-system-quadrant_light.png){: .light}
![Language Quadrant](/assets/img/type-system-quadrant_dark.png){: .dark}
_My personal classification for programming languages._

> - Strong/weak typing and dynamic/static are two orthogonal factors for programming languages.
> - I did not rank for languages in the same quadrant. For example, the diagram does NOT indicate C++ is more static than Java.
> - I regard C as a weakly typed language because it's too low-level and its data structure scarcely retains type information. And C heavily uses pointers to transfer data, which can be arbitrarily interpreted by the programmer.
{: .prompt-tip}

**I love typing** in programming languages. It may be argued by some that I'm merely enthusiastic about engaging in type exercises that hurt my work efficiency. But I would insist that strongly-typed languages are more user-friendly and less error prone.

Give an example: **JavaScript VS TypeScript**. JavaScript has long been criticized for its weak type system. Remember the meme [thanks for inventing JavaScript][thanks-js]? You won't feel happy to play with implicit casting when writing/debugging your business code. Programming with weakly-typed languages is akin to riding in a car devoid of seatbelts. You see that: Microsoft creates TypeScript, which is the better successor of JavaScript. More and more developers inclines to write their projects in TypeScript. Node.js 23 has supported TypeScript's syntax and features.

Compilers of strongly-typed languages, like C++ and Haskell, are able to find more errors before the code actually runs. It's a charming feature, like having received a vaccine before falling ill. Of course, compilers cannot find EVERY bug in your program, but at least they give me more confidence for my code after the compilation is passed. Not all compilers need to be as unforgiving as Rust's. Most of them kindly remind you about the type error and teach you how to fix it. This is an exceptionally **positive feedback**, as I feel I'm mastering this language, instead of hastily scribbling a jumble of code that my future self cannot comprehend.

Languages like Python and Ruby are more merciful — type errors occur during runtime instead of compiling time. They keep the noble virtues of typing while providing some flexibility for the programmers. These languages are relatively easy to begin with, but mastering them still demands a significant amount of effort.

In conclusion, **it's a tradeoff between usability and maintainability**. A project of more strongly-typed languages is easier to be maintained, especially when the project grows to be substantially huge. A weakly-typed language is friendly for programming newbies, but most of them are inherently error-prone. Learning a programming language with complete type system is much more difficult, though. Luckily the essential idea is universal, so you don't need to repeatedly start "from scratch" to acquire a new language.

[thanks-js]: https://www.reddit.com/r/ProgrammerHumor/comments/8srix1/thanks_brendan_for_giving_us_the_javascript/
