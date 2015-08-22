-module(nub).
-export([remove_duplicate/1, nub/1, bun/1, member1/2]).


%%%%%%%%%% remove the duplicate number from sorted list %%%%%%%%%%%

remove_duplicate([]) ->
[];
remove_duplicate([X| []]) ->
[X];
remove_duplicate([X, Y| Xs]) when X == Y ->
remove_duplicate([Y| Xs]);
remove_duplicate([X| Xs]) ->
[X| remove_duplicate(Xs)].

%%%%%%%%%% remove the item for the unsoreted list %%%%%%%%%%%%%%

nub([])->
  [];
nub([X| Xs]) ->
  [X| nub(remove_all(X, Xs))].

remove_all(_, []) ->
  [];
remove_all(X, [X| Xs]) ->
  remove_all(X, Xs);
remove_all(X, [Y| Xs]) ->
  [Y| remove_all(X, Xs)].


%%%%%%%%% nub in reverse order (keep the last occurance of number) %%%%%
bun([]) ->
  [];
bun([X| Xs]) ->
  case member1(X, Xs) of
    true  ->
      bun(Xs);
    false ->
      [X| bun(Xs)]
  end.

member1(_, []) ->
  false;
member1(X, [X| _Xs]) ->
  true;
member1(X, [_Y| Xs]) ->
  member1(X, Xs).
