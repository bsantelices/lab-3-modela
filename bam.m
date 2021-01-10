function[A, B, C, D] = bam(a, b, c, d, e, f)

%Se calculan algebraicamente en el informe y se pone en forma matricial
A = [c/b -a/b; d/e f/e];
B = [a/b; 0];
C = [1 0];
D = [0];

%Se genera el modelo
Modelo = ss(A, B, C, 0)
end

