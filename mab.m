function[H] = mab(A,B,C,D)
%sX = AX + BU
ident = [1 0;0 1];
syms s

aux = s*ident - A;
auxInv = inv(aux);
aux2 = C * auxInv;
%Funcion de trasferencia
H = aux2*B;
end