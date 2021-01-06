child(anne,bridget). 
child(bridget,caroline). 
child(caroline,donna). 
child(donna,emily).


descend(X,Y)  :-  child(X,Y). 
descend(X,Y)  :-  child(X,Z), 
                  descend(Z,Y).

/*
%% it never terminates after having found existing results
descend(X,Y)  :-  child(X,Y). 
descend(X,Y)  :-  descend(X,Z), 
                  descend(Z,Y).
*/

% The basic rule of thumb is never to write as the leftmost goal of the body something
% that is identical (modulo variable names) with the goal given in the head
% Rather, place such goals (which trigger recursive calls)
% as far as possible towards the right of the tail.

% 3.2
directlyIn(katarina,olga).
directlyIn(olga,natasha).
directlyIn(natasha,irina).

in(X,Y) :- directlyIn(X,Y).
in(X,Y) :- directlyIn(X,Z),
           in(Z,Y).

% 3.3
directTrain(saarbruecken,dudweiler). 
directTrain(forbach,saarbruecken). 
directTrain(freyming,forbach). 
directTrain(stAvold,freyming). 
directTrain(fahlquemont,stAvold). 
directTrain(metz,fahlquemont). 
directTrain(nancy,metz).

travelFromTo(X,Y) :- directTrain(X,Y).
travelFromTo(X,Y) :- directTrain(X,Z),
                     travelFromTo(Z,Y).

% 3.4
greater_than(succ(_),0).
greater_than(succ(X),succ(Y)) :- greater_than(X,Y).

% 3.5
swap(leaf(X),leaf(X)).
swap(tree(X,Y),tree(SY,SX)) :- swap(X,SX),
                               swap(Y,SY).
% very counter-intuitive :(
