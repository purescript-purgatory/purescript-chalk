#!/usr/bin/env sh
hash=`git ls-remote https://github.com/rajatsharma/purescript-chalk.git | grep refs/heads/master | cut -f 1`
deps=`dhall-to-json <<< "let contents = ./node_modules/purescript-chalk/spago.dhall in contents.dependencies"`
package='with chalk = {
  dependencies = dependencies-array,
  repo = "https://github.com/rajatsharma/purescript-chalk.git",
  version = "version-hash"
}'
base=`basename "$PWD"`

if [ "$base" != "purescript-chalk" ]
then
  echo $package | perl -pE "s/dependencies-array/$deps/;s/version-hash/$hash/;" >> $PWD/packages.dhall
  spago install common-utils
fi
