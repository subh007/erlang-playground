-module(recursion).
-export([fibo/1, factorial/1, fact/1]).


%%%%%% fibo number  %%%%%%%%%%
fibo(0) ->
  0;
fibo(1) ->
  1;
fibo(N) when N > 0 ->
  fibo(N-1) + fibo(N-2).


  %%%%%%%%%  factorial number %%%%%%%%%%%

  factorial(0) ->
    1;
  factorial(N) when N > 0 ->
    N * factorial(N-1).

%%%%%%%%%%%%%%  tail recursion %%%%%%%%%

fact(N) when N > 0 ->
  fact_tail_rec(N,1).

fact_tail_rec(1, P) ->
      P;
fact_tail_rec(N, P) ->
      fact_tail_rec(N-1, N*P).
