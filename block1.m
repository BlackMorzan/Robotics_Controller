O1 = 3.1;
O2 = 9.5;
O3 = 0.24;
O4 = 0.77;
g = 9.81;

Kp1 = 10000;
Kp2 = 10000;
Kd1 = Kp1/10;
Kd2 = Kp2/10;

T = 6;

%sim('test2slx.slx', t);
Simout = sim('test3.slx');

%time = ans.getElement('tout');
figure(1)
plot(Simout.tout, Simout.e1, Simout.tout, Simout.e2)
title('Position error by time (Kp = 10000)')
ylabel('m(?)')
xlabel('s(?)')
legend('e1','e2')


Kp1 = 100;
Kp2 = 100;
Kd1 = Kp1/10;
Kd2 = Kp2/10;

Simout = sim('test3.slx');

figure(2)
plot(Simout.tout, Simout.e1, Simout.tout, Simout.e2)
title('Position error by time (Kp = 100)')
ylabel('m(?)')
xlabel('s(?)')
legend('e1','e2')
