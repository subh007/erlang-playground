-module(area).
-export([area/1]).

%%%%%%%%  find area %%%%%%%%
%%%%%%  > area:area({rectangle, 5, 6}).
%%%%%%  > area:area({circle, {5, 6}, 6}).

area({circle, {_, _}, R}) ->
  math:pi()*R*R;
area({rectangle, H, W}) ->
  H*W.
