# Learning elm

These are my notes on learning Elm

## General workflow

    elm package install

This will "install" the core elm libraries to the directory you are in.

    elm package install evancz/start-app

This installs "start app" which is a MVC-esque framework for Elm.

It uses the "Elm Architecture" pattern.

## What is the Elm architecture?

- https://github.com/evancz/elm-architecture-tutorial/

*Model, view, update*

## Running an app

Just run `elm reactor` in the directory. This doesn't work so well for embedding generated JS in a page, but more than fine for learning.

There is an argument that if you're separating styles from behaviour this enforces good habits anyway.


## Exercise 1

### Purpose
Just a simple example of elm architecture, showing a button which toggles the casing of a string

- *Model* A string and it's current case
- *View* A h1
- *Update* Toggle.

## Exercise 2

Test exercise 1
