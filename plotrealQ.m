%Plot Q-ratio data
%Scripted by Russell Lagore (Oct 2024)
figure;
x=[10 20 30 40 50 60];

subplot(2,1,1);
 hold on;
%7T 4 cm loop
QU7T4cm=210;
QL7T4cm=[27 49 80 112 141 170];
Qul7T4cm=QU7T4cm./QL7T4cm;
plot(x,Qul7T4cm, 'r:', 'LineWidth', 2.5);

%7T 6 cm loop
QU7T6cm=180;
QL7T6cm=[13 25 43 64 90 110]; %137 152
Qul7T6cm=QU7T6cm./QL7T6cm;
plot(x,Qul7T6cm,'b:', 'LineWidth', 2.5);

%10.5T 4 cm loop
QU10T4cm=150;
QL10T4cm=[17 40 67 89 109 121];
Qul10T4cm=QU10T4cm./QL10T4cm;
plot(x,Qul10T4cm, 'r-', 'LineWidth', 2.5);

%10.5T 4 cm loop low Cd
QU10T4cmCdl=230;
QL10T4cmCdl=[19 44 80 118 148 171];
Qul10T4cmCdl=QU10T4cmCdl./QL10T4cmCdl;
plot(x,Qul10T4cmCdl,'r--', 'LineWidth', 2.5);

%10.5T 6 cm loop
QU10T6cm=170;
QL10T6cm=[11 23 42 64 85 99]; % 117 123];
Qul10T6cm=QU10T6cm./QL10T6cm;
plot(x,Qul10T6cm,'b-', 'LineWidth', 2.5);

%10.5T 6 cm loop low Cd
QU10T6cmCdl=266;
QL10T6cmCdl=[10 24 44 68 92 115]; %131];
Qul10T6cmCdl=QU10T6cmCdl./QL10T6cmCdl;
plot(x,Qul10T6cmCdl, 'b--', 'LineWidth', 2.5);
grid on;
xlim([10 60])
fontsize(28,"points"); xlabel('Distance from Load (mm)')
ylabel('Q-ratio (Q_{ul})')
legend('7T 4cm', '7T 6cm', '10.5T 4cm', '10.5T 4cm low C_D', '10.5T 6cm', '10.5T 6cm low C_D');
%set(gca, 'YScale', 'log')

subplot(2,1,2);
 hold on;
plot(x,sqrt(1-(1./Qul7T4cm)), 'r:', 'LineWidth', 2.5);
plot(x,sqrt(1-(1./Qul7T6cm)),'b:', 'LineWidth', 2.5);
plot(x,sqrt(1-(1./Qul10T4cm)), 'r-', 'LineWidth', 2.5);
plot(x,sqrt(1-(1./Qul10T4cmCdl)),'r--', 'LineWidth', 2.5);
plot(x,sqrt(1-(1./Qul10T6cm)),'b-', 'LineWidth', 2.5);
plot(x,sqrt(1-(1./Qul10T6cmCdl)), 'b--', 'LineWidth', 2.5);
grid on;
xlim([10 60])
fontsize(28,"points"); xlabel('Distance from Load (mm)')
ylabel('Fraction of SNR (SNR/SNR_{ideal}')
legend('7T 4cm', '7T 6cm', '10.5T 4cm', '10.5T 4cm low C_D', '10.5T 6cm', '10.5T 6cm low C_D');