/* 和を求める */

sum1(0, 0).
sum1(J, S1) :- I is J - 1, sum1(I, S), S1 is S + J.

sqr_sum(0, 0).
sqr_sum(I, S) :- J is I - 1, sqr_sum(J, T), S is T + I^2.

power_sum(0, 0, N).
power_sum(I, Sum, N) :- J is I - 1, power_sum(J, S, N), Sum is S + I^N.

arith_sum(0, 0, D, A).
arith_sum(1, A, D, A).
arith_sum(N, S, D, A) :- M is N - 1,
                         arith_sum(M, T, D, A),
                         S is T + D.

recipro_sum(1, 1).
recipro_sum(N, S) :- M is N - 1,
                     recipro_sum(M, T),
                     S is T + 1 / N.

odd1(N) :- 1 is N mod 2.
even1(N) :- 0 is N mod 2.

odd_sqr_sum(1, 1).
odd_sqr_sum(2, 1).
odd_sqr_sum(I, S) :- odd1(I),
                     J is I - 2,
                     odd_sqr_sum(J, T),
                     S is T + I ^ 2.
odd_sqr_sum(I, S) :- even1(I),
                     J is I - 1,
                     odd_sqr_sum(J, S).

