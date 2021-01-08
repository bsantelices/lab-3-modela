function[H] = mab(A,B,C,D)
%sX = AX + BU
ident = [1 0;0 1];
syms s

aux = s*ident - A;
auxInv = inv(aux);
auxAux = C * auxInv;
%Funcion de trasferencia
H = auxAux*B;
end