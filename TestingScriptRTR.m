clear;
close all;


m2=20;
m3=20;
l2=0.3;
l3=0.2;

g = 9.81;

Kp1 = 1000;
Kd1 = Kp1/10;
%Kd1 = 1;
%q1d=-0.1+t/100,
%q2d=0.4
%q3d=0.6

T = 5;

%Simout = sim('EDDA_2nd.slx');
Simout = sim('RTR_1st.slx');

figure(1)
plot(Simout.tout, Simout.e1, Simout.tout, Simout.e2, Simout.tout, Simout.e3)
%plot(Simout.tout, Simout.e1, Simout.tout, Simout.e2)

title(['Position error by time Kp = ', num2str(Kp1)])
ylabel('mixed')
xlabel('s')
legend('R1','T','R2')
%legend('e1','e2')


Timi = Simout.tout.';
%Timi = Simout.tout.';

Combined = [Simout.tout.'; Simout.e1.'; Simout.e2.'; Simout.e3.'];


fileID = fopen('data3.txt','w');
formatSpec = '%d %d %d %d \r\n';
fprintf(fileID, '%2.4f %2.4f %2.4f %2.4f \r\n', Combined);
fclose(fileID);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%55
%{
Kp1 = 1000;
Kd1 = Kp1/10;

%Simout = sim('EDDA_2nd.slx');
Simout = sim('EDDA_linear2.slx');
%Simout = sim('test3.slx');

figure(2)
plot(Simout.tout, Simout.e1, Simout.tout, Simout.e2)

title(['Position error by time Kp = ', num2str(Kp1)])
ylabel('rad')
xlabel('s')
legend('e1','e2')
%}



