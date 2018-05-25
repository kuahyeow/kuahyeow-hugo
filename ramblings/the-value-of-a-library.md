+++
date = "2017-09-02T08:52:34+12:00"
title = "The value of a library"
tags = ["software"]
draft = "true"
+++

Someone at work mentioned that a piece of work could be done without parsing code, and making use of ASTs.
My ears pricked up, doesn't this sound like a problem quite similar to a [talk](https://www.youtube.com/watch?v=82Yqfpr0BL4&feature=youtu.be) I just went to ?

Turns out that Ruby has an excellent gem, parser

- making mistakes that would not leak
- experimenting within the confines of the library
- ability to test minimal use cases

But !
- showed potential usefulness with hacky script
- got it working, then really needed to improve reliabity really quickly... tests!
- moved to a library


What do you think are benefits of a library ? Any tradeoffs to consider ?

