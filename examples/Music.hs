module Main where

import Control.Monad      (when)
import System.Environment (getArgs)
import System.Exit        (exitFailure)

import qualified SDL
import qualified SDL.Mixer as Mix

main :: IO ()
main = do
  SDL.initialize [SDL.InitAudio]
  Mix.openAudio Mix.defaultAudio 256

  putStr "Available music decoders: "
  print =<< Mix.musicDecoders

  args <- getArgs
  case args of
    [] -> putStrLn "Usage: cabal run sdl2-mixer-music FILE" >> exitFailure
    xs -> runExample $ head xs

  Mix.closeAudio
  SDL.quit

-- | Play the given file as a Music.
runExample :: FilePath -> IO ()
runExample path = do
  music <- Mix.load path
  Mix.playMusic Mix.Once music
  delayWhile Mix.playingMusic
  Mix.free music

delayWhile :: IO Bool -> IO ()
delayWhile check = loop'
  where
    loop' = do
      still <- check
      when still $ SDL.delay 300 >> delayWhile check