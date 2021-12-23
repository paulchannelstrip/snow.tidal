# snow.tidal
Simple snow generator for Tidal Cycles (or any haskell-based interactive programming with a visible post window)

As seen in [my set](https://youtu.be/9d7xC0iTNnM) from Tidal Club's 2020 Winter Solstice marathon, The Longest Night.

## About
Produces a random ASCII art snowstorm in the GHCi REPL output (the Tidal post window). Functions from external modules (Data.List, System.Random) are called relatively, rather than importing the entire modules, so as to not clutter up your session. The only functions this script makes available to the session are `snow` and `snow_`.

## Installation
1. Put the `snow.hs` file somewhere safe. I recommend having a directory for your Tidal scripts.
2. Source the `snow.hs` file from your `boottidal.hs` or `Tidal.ghci` by adding the following line:
> :script /full/path/to/snow.hs

## Usage
1. Evaluate `snow`.
2. Enjoy :)
