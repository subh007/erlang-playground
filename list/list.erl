-module(list).
-export([head/1, tail/1, second/1,second_p/1, sum/1, max/1]).


head([X|_Xs]) ->
  X.

tail([_X|Xs]) ->
  Xs.

second(Xs) ->
  head(tail(Xs)).

second_p([_X,Y|_Xx]) ->
  Y.

%%%%%%%%%%%% sum of list element %%%%%%%%
sum([]) ->
  0;
sum([X | Xs]) ->
  X + sum(Xs).

%%%%%%%%%%% max of list %%%%%%%%%%%%%%
max([X | []]) ->
  X;
max([X | [H | Tail]]) when X < H ->
  max([H | Tail]);
max([X | [_H | Tail]]) ->
  max([X | Tail]).
