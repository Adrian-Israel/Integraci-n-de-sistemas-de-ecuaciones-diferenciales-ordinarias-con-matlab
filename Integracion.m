[t, z] = ode45(@MRA, [0 20], [0; 0; deg2rad(1); 0]);

figure;

% Subplot para la posición (z(:,1))
subplot(4, 1, 1);
plot(t, z(:,1));
grid on;
title("Posición");
xlabel("Tiempo (s)");
ylabel("Metros");

% Subplot para la velocidad (z(:,2))
subplot(4, 1, 2);
plot(t, z(:,2));
grid on;
title("Velocidad");
xlabel("Tiempo (s)");
ylabel("Metros/segundo");

% Subplot para el ángulo (z(:,3))
subplot(4, 1, 3);
plot(t, z(:,3));
grid on;
title("Ángulo");
xlabel("Tiempo (s)");
ylabel("Radianes");

% Subplot para la velocidad angular (z(:,4))
subplot(4, 1, 4);
plot(t, z(:,4));
grid on;
title("Velocidad Angular");
xlabel("Tiempo (s)");
ylabel("Radianes/segundo");
