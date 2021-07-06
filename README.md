# sdl2-mixer

[![cabal](https://github.com/haskell-game-archives/sdl2-mixer/actions/workflows/cabal.yml/badge.svg)](https://github.com/haskell-game-archives/sdl2-mixer/actions/workflows/cabal.yml)
[![format](https://github.com/haskell-game-archives/sdl2-mixer/actions/workflows/format.yml/badge.svg)](https://github.com/haskell-game-archives/sdl2-mixer/actions/workflows/format.yml)
[![lint](https://github.com/haskell-game-archives/sdl2-mixer/actions/workflows/lint.yml/badge.svg)](https://github.com/haskell-game-archives/sdl2-mixer/actions/workflows/lint.yml)
[![dependencies check](https://github.com/haskell-game-archives/sdl2-mixer/actions/workflows/outdated.yml/badge.svg)](https://github.com/haskell-game-archives/sdl2-mixer/actions/workflows/outdated.yml)

#### Haskell bindings to SDL2_mixer

Both the raw and the higher level bindings should allow you to use any aspect
of the original SDL2_mixer library. Please report an issue if you encounter a
bug or feel that something is missing.

##### Install

```bash
cabal install sdl2-mixer
```

##### Documentation

For documentation, [visit Hackage](https://hackage.haskell.org/package/sdl2-mixer).

The
[original SDL2_mixer documentation](http://www.libsdl.org/projects/SDL_mixer/docs/SDL_mixer.html)
can also help, as the bindings are close to a direct mapping.

##### Examples

Several example executables are included with the library. You can find them in
the `examples` directory.

```bash
cd sdl2-mixer
cabal run sdl2-mixer-basic <file>
cabal run sdl2-mixer-raw <file>
cabal run sdl2-mixer-music <file>
cabal run sdl2-mixer-jumbled <file1> ... <fileN>
cabal run sdl2-mixer-effect <file>
```
