%Ingreso de entradas
a = input("ingrese el valor de a: ");
b = input("ingrese el valor de b: ");
c = input("ingrese el valor de c: ");
d = input("ingrese el valor de d: ");
e = input("ingrese el valor de e: ");
f = input("ingrese el valor de f: ");

%Se genera el modelo de estado
[A, B, C, D] = bam(a, b, c, d, e, f);

%Del modelo de estado se pasa a la funcion de transferencia
H = mab(A, B, C, D);

