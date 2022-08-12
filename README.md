# purescript-chalk

> Chalk bindings for Purescript

## Install 

```sh
bower install git@github.com:purescript-purgatory/purescript-chalk.git
```

## Usage

```haskell
import Text.Chalk

main :: Effect Unit
main = do
  log $ white $ bold "Purescript Chalk" <> strikethrough "Js"
```
