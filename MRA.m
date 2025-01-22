function dx=MRA(t,x)
Ip = 0.0079; % kg*m^2
Mc = 0.7031; % kg
lp = 0.3302; % m
Mp = 0.23; % kg
Fe = 0; % N
Beq = 4.3; % Ns/m
g = 9.81; % m/s^2
Bp = 0.0024; % Nms/rad

dx=zeros(2,1);


dx(1)=x(2);
dx(2)=((Ip + Mp * lp^2) * Fe + Mp^2 * lp^2 * g * cos(x(3)) * sin(x(3)) - (Ip + Mp * lp^2) * Beq * x(2) - (Ip * Mp * lp + Mp^2 * lp^3) * x(4)^2 * sin(x(3)) - Mp * lp * x(4) * cos(x(3)) * Bp) / ((Mc + Mp) * Ip + Mc * Mp * lp^2 + Mp^2 * lp^2 * sin(x(3))^2);
dx(3)=x(4);
dx(4)=((Mc + Mp) * Mp * g * lp * sin(x(3)) - (Mc + Mp) * Bp * x(4) + Fe * Mp * lp * cos(x(3)) - Mp^2 * lp^2 * x(4)^2 * sin(x(3)) * cos(x(3)) - Beq * Mp * lp * x(2) * cos(x(3))) / ((Mc + Mp) * Ip + Mc * Mp * lp^2 + Mp^2 * lp^2 * sin(x(3))^2);
