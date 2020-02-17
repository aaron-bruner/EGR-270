mix1 = [3 1 1 2 1]';
mix2 = [1 2 1 3 1]';
mix3 = [1 1 0 3 3]';
mix4 = [2 0 3 1 2]';
mix5 = [1 2 3 0 2]';

lhs = [mix1,mix2,mix3,mix4,mix5];
rhs = [105 74 102 118 121]';

A = lhs \ rhs;