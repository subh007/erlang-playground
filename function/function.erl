-module(function).
-export([take/2]).

take(0, _) ->
  [];
take(_N, []) ->
  [];
take(N, [X| Xs]) when N>0 ->
  [X| take(N-1, Xs)].
