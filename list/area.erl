-module(area).
-export([total_area/1, circles/1, circle_case/1, remove_duplicate/1]).

%%%%%%%%  find the total area %%%%%%%%


%%%%%% find the area of the sape %%%%%%%
area({circle, {_, _}, R}) ->
  math:pi()*R*R;
area({rectangle, H, W}) ->
  H*W.

%%%%%% EX 1 ==> find the sum of list %%%%%%%%%%
sum([]) ->
    0;
sum([X | Xs]) ->
    X + sum(Xs).

area_list([]) ->
  [];
area_list([X | Xs]) ->
  [area(X) | area_list(Xs)].

total_area(X) ->
  sum(area_list(X)).


  %%%%%% EX 1 ==> find the circle shape %%%%%%%%%%
circles([]) ->
  [];
circles([{circle,{_X, _Y}, _R} = C | Xs]) ->
  [C | circles(Xs)];
circles([_X| Xs]) ->
  circles(Xs).

%%%%%% solution using the case statement %%%%%%%%
circle_case([]) ->
  [];
circle_case([X| Xs]) ->
  case X of
    {circle, {_, _}, _}=C ->
      [C, circle_case(Xs)];

       _ ->
        circle_case(Xs)
  end.

  %%%%%%%%%% remove the duplicate number from sorted list %%%%%%%%%%%

remove_duplicate([]) ->
  [];
remove_duplicate([X| []]) ->
  [X];
remove_duplicate([X, Y| Xs]) when X == Y ->
  remove_duplicate([Y| Xs]);
remove_duplicate([X| Xs]) ->
  [X| remove_duplicate(Xs)].
