-module(mandel).

-include("mandel.hrl").

-export([run/0, calculate_image/1]).

-import(mandel_shared, [calculate_pixel/3]).


run() ->
	mandel_shared:run("/tmp/mandel.ppm", fun calculate_image/1).

calculate_image (Mandel) ->
	Size = Mandel#mandel.size,
	[ calculate_pixel(Mandel, X, Y) || X <- lists:seq(1, Size), Y <- lists:seq(1, Size)].
