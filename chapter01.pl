% 1.1
% atoms: 1,3,5,6,8,10
% variables : 2,4,9

% 1.2
% 1. complex, loves, 2
% 2. atoms
% 3. none
% 4. complex, boxer, 1
% 5. complex, and, 2
% 6. complex, and, 2
% 7. none
% 8. none
% 9. none
% 10. none

% 1.3
% 3 facts, 4 rules, clauses: 7
% The facts and rules contained in a knowledge base are called clauses.
% predicates: 7

% 1.4
killer(butch).
married(mia, marsellus).
dead(zed).
kill(marsellus, X) :- giveFootmassage(X, mia).
love(mia, X) :- goodDancer(X).
eats(jules, X) :- nutritious(X); tasty(X).

% 1.5
wizard(ron). 
hasWand(harry). 
quidditchPlayer(harry). 
wizard(X):-  hasBroom(X),  hasWand(X). 
hasBroom(X):-  quidditchPlayer(X).

% true, undefined, false, undefined, true, roon;harry, undefined


