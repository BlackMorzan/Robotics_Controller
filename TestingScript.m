clear all;
close all;

O1 = 3.1;
O2 = 9.5;
O3 = 0.24;
O4 = 0.77;
g = 9.81;

Kp1 = 10;
Kd1 = Kp1/10;
%Kd1 = 1;

T = 40;

%Simout = sim('EDDA_2nd.slx');
Simout = sim('EDDA_linear2.slx');
%Simout = sim('test3.slx');

figure(1)
plot(Simout.tout, Simout.e1, Simout.tout, Simout.e2)

title(['Position error by time Kp = ', num2str(Kp1)])
ylabel('rad')
xlabel('s')
legend('e1','e2')

Timi = Simout.tout.';
%Timi = Simout.tout.';

Combined = [Simout.tout.'; Simout.e1.'; Simout.e2.'];
%Combined = sortrows(Combined);


fileID = fopen('data.txt','w');
formatSpec = '%d %d %d \r\n';
fprintf(fileID, '%2.4f %2.4f %2.4f \r\n', Combined);
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



