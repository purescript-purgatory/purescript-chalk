# purescript-chalk

> Chalk bindings for Purescript

## Usage

```haskell
import Text.Chalk

main :: Effect Unit
main = do
  log $ white $ bold "Purescript Chalk" <> strikethrough "Js"
```
