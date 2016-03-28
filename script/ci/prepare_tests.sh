#!/bin/bash

set -eu

export MIX_ENV=test
export PATH=$HOME/dependencies/erlang/bin:$HOME/dependencies/elixir/bin:$PATH

cd $HOME/$CIRCLE_PROJECT_REPONAME

# Initial setup
mix clean
mix deps.get
mix compile
mix compile.cure
