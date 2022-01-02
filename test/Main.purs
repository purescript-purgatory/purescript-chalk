module Test.Main where

import Prelude
import Text.Chalk

import Effect (Effect)
import Effect.Class.Console (log)

main :: Effect Unit
main = do
  log $ white $ bold "Purescript Chalk" <> strikethrough "Js"
