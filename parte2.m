%Se reciben los parametros del modelo
A1 = input("Ingrese el valor del area de la base del estaque A1: ");
A2 = input("Ingrese el valor del area de la base del estaque A2: ");
R1 = input("Ingrese el valor de R1: ");
R2 = input("Ingrese el valor de R1: ");

%Se definen las matrices, calculadas en el informe
A = [-1/(R1*A1) 1/(R1*A1); 1/(R1*A2) -(R2+R1)/(R1*R2*A2)];
B = [1/A1; 0];
C = [1 0; 0 1];
D = [0;0];

%Se genera el modelo de estado
Modelo = ss(A, B, C, 0)

%Se analiza la respuesta al escalon

figure
step(Modelo);
title('Respuesta al escalon');
xlabel('Tiempo');
ylabel('Amplitud');
grid on
saveas(gcf,'Respuesta al escalon.png')


%Se analiza la respuesta al impulso
figure
impulse(Modelo);
title('Respuesta al impulso');
xlabel('Tiempo');
ylabel('Amplitud');
grid on
saveas(gcf,'Respuesta al impulso.png')

%Se analiza la respuesta a u(t)
t = linspace (0 , 12*pi , 5000);
u = 100* sin( t /4);
u (u <0) = 0.;

figure
lsim (Modelo , u , t );
title('Respuesta a u(t)');
xlabel('Tiempo');
ylabel('Amplitud');
grid on
saveas(gcf,'Respuesta a u(t).png')


%%%%%%%%%%%%%%%%%%%%%%%%%%% Parte 3 $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$

%tiempos de muestreo
T1 = 0.001;
T2 = 0.1;
T3 = 2;

%%%%%%%%% T1

%se discretisa el modelo continuo con T1 y el tipo zoh 
discreto1 = c2d (Modelo , T1 , 'zoh');
figure
step ( discreto1 );
title('Discreto con T1 en tipo "Zero order hold"');
xlabel('Tiempo');
ylabel('Amplitud');
grid on
saveas(gcf,'3_1.png')


%se discretisa el modelo continuo con T1 y el tipo foh 
discreto2 = c2d (Modelo , T1 , 'foh');
figure
step ( discreto2 );
title('Discreto con T1 en tipo "First order hold"');
xlabel('Tiempo');
ylabel('Amplitud');
grid on
saveas(gcf,'3_2.png')

%%%%%%%%% T2

%se discretisa el modelo continuo con T2 y el tipo zoh 
discreto3 = c2d (Modelo , T2 , 'zoh');
figure
step ( discreto3 );
title('Discreto con T2 en tipo "Zero order hold"');
xlabel('Tiempo');
ylabel('Amplitud');
grid on
saveas(gcf,'3_3.png')

%se discretisa el modelo continuo con T2 y el tipo foh 
discreto4 = c2d (Modelo , T2 , 'foh');
figure
step ( discreto4 );
title('Discreto con T2 en tipo "First order hold"');
xlabel('Tiempo');
ylabel('Amplitud');
grid on
saveas(gcf,'3_4.png')

%%%%%%%%% T3

%se discretisa el modelo continuo con T3 y el tipo zoh 
discreto5 = c2d (Modelo , T3 , 'zoh');
figure
step ( discreto5 );
title('Discreto con T3 en tipo "Zero order hold"');
xlabel('Tiempo');
ylabel('Amplitud');
grid on
saveas(gcf,'3_5.png')

%se discretisa el modelo continuo con T3 y el tipo foh 
discreto6 = c2d (Modelo , T3 , 'foh');
figure
step ( discreto6 );
title('Discreto con T3 en tipo "First order hold"');
xlabel('Tiempo');
ylabel('Amplitud');
grid on
saveas(gcf,'3_6.png')




