% 2.3
word(article,a).
word(article,every).
word(noun,criminal).
word(noun,'big kahuna burger').
word(verb,eats).
word(verb,likes).

sentence(Word1,Word2,Word3,Word4,Word5) :-
  word(article,Word1),
  word(noun,Word2),
  word(verb,Word3),
  word(article,Word4),
  word(noun,Word5).

% ?- sentence(A, B, C, D, E).

% 2.4
word(astante,a,s,t,a,n,t,e). 
word(astoria,a,s,t,o,r,i,a). 
word(baratto,b,a,r,a,t,t,o). 
word(cobalto,c,o,b,a,l,t,o). 
word(pistola,p,i,s,t,o,l,a). 
word(statale,s,t,a,t,a,l,e).

/*

h1(H1A,H1B,H1C,H1D,H1E,H1F,H1G):-word(Someword1,H1A,H1B,H1C,H1D,H1E,H1F,H1G).
h2(H2A,H2B,H2C,H2D,H2E,H2F,H2G):-word(Someword2,H2A,H2B,H2C,H2D,H2E,H2F,H2G).
h3(H3A,H3B,H3C,H3D,H3E,H3F,H3G):-word(Someword3,H3A,H3B,H3C,H3D,H3E,H3F,H3G).
v1(V1A,V1B,V1C,V1D,V1E,V1F,V1G):-word(Someword1,V1A,V1B,V1C,V1D,V1E,V1F,V1G).
v2(V2A,V2B,V2C,V2D,V2E,V2F,V2G):-word(Someword2,V2A,V2B,V2C,V2D,V2E,V2F,V2G).
v3(V3A,V3B,V3C,V3D,V3E,V3F,V3G):-word(Someword3,V3A,V3B,V3C,V3D,V3E,V3F,V3G).

H1B = V1B.
H1D=V2B.
H1F=V3B.

H2B=V1D.
H2D=V2D.
H2F=V3D.

H3B=V1F.
H3D=V2F.
H3F=V3F.
*/

crossword(V1,V2,V3,H1,H2,H3) :-
      word(H1,_,H12V12,_,H14V22,_,H16V32,_),
      word(H2,_,H22V14,_,H24V24,_,H26V34,_),
      word(H3,_,H32V16,_,H34V26,_,H36V36,_),
      word(V1,_,H12V12,_,H22V14,_,H32V16,_),
      word(V2,_,H14V22,_,H24V24,_,H34V26,_),
      word(V3,_,H16V32,_,H26V34,_,H36V36,_).
