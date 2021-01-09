%Ingreso de entradas
a = input("Ingrese el valor de a: ");
b = input("Ingrese el valor de b: ");
c = input("Ingrese el valor de c: ");
d = input("Ingrese el valor de d: ");
e = input("Ingrese el valor de e: ");
f = input("Ingrese el valor de f: ");

%Se genera el modelo de estado
[A, B, C, D] = bam(a, b, c, d, e, f);

%Del modelo de estado se pasa a la funcion de transferencia
H = mab(A, B, C, D);

