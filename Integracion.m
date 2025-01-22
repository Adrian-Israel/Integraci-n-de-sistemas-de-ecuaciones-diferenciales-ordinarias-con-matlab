[t,z]=ode45(@MRA,[0 10], [0; 0; deg2rad(1); 0]);

figure(1)
subplot(2,1,1);
plot(t,z(:,1));
grid on
title("Posicion");
xlabel("Tiempo");
ylabel("Metros");

subplot(2,1,2)
plot(t,z(:,2));
grid on
title("Velocidad");
xlabel("Tiempo");
ylabel("Metros");