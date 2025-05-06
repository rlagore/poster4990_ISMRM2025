%Plot Q-ratio data from *.mat files.
%Scripted (badly) by Russell Lagore in October 2024
%LOAD IN DATA
var7T2cm=load('Qul_Wire_2cm_7T.mat');
var7T4cm=load('Qul_Wire_4cm_7T.mat');
var7T6cm=load('Qul_Wire_6cm_7T.mat');
var7T8cm=load('Qul_Wire_8cm_7T.mat');
var10T2cm=load('Qul_Wire_2cm_10p5T.mat');
var10T4cm=load('Qul_Wire_4cm_10p5T.mat');
var10T4cmPCB=load('Qul_PCB_4cm_10p5T.mat');
var10T6cm=load('Qul_Wire_6cm_10p5T.mat');
var10T8cm=load('Qul_Wire_8cm_10p5T.mat');

%PLOT 7T Q-ratios
figure;
subplot(2,2,1);
plot(var7T2cm.Phantom_Gap,var7T2cm.Qul, 'r--',var7T2cm.Phantom_Gap,var7T2cm.Qul_meas,'r-', ...
    var7T4cm.Phantom_Gap,var7T4cm.Qul,'b--',var7T4cm.Phantom_Gap,var7T4cm.Qul_meas,'b-', ...
    var7T6cm.Phantom_Gap,var7T6cm.Qul,'g--',var7T6cm.Phantom_Gap,var7T6cm.Qul_meas,'g-', ...
    var7T8cm.Phantom_Gap,var7T8cm.Qul,'m--',var7T8cm.Phantom_Gap,var7T8cm.Qul_meas,'m-','LineWidth',2.5);
%yyaxis left
fontsize(28,"points"); xlabel('Distance from Load (mm)')
ylabel('Q-ratio (Qul)')
legend('2cm sim', '2cm meas', '4cm sim', '4cm meas', '6cm sim', '6cm meas', '8cm sim', '8cm meas');
%yyaxis right
%ylabel('Fraction of SNR (SNR/SNRideal)')
%figure;
%hold on;
subplot(2,2,2);
%PLOT 10.5T Q-ratios
plot(var10T2cm.Phantom_Gap,var10T2cm.Qul, 'r--',var10T2cm.Phantom_Gap,var10T2cm.Qul_meas,'r-', ...
    var10T4cm.Phantom_Gap,var10T4cm.Qul,'b--',var10T4cm.Phantom_Gap,var10T4cm.Qul_meas,'b-', ...
    var10T6cm.Phantom_Gap,var10T6cm.Qul,'g--',var10T6cm.Phantom_Gap,var10T6cm.Qul_meas,'g-', ...
    var10T8cm.Phantom_Gap,var10T8cm.Qul,'m--',var10T8cm.Phantom_Gap,var10T8cm.Qul_meas,'m-', ...
    var10T4cmPCB.Phantom_Gap,var10T4cmPCB.Qul,'c--',var10T4cmPCB.Phantom_Gap,var10T4cmPCB.Qul_meas,'c-','LineWidth',2.5);
xlim([10 50])
%yyaxis left
fontsize(28,"points"); xlabel('Distance from Load (mm)')
ylabel('Q-ratio (Q_{ul})')
legend('2cm sim', '2cm meas', '4cm sim', '4cm meas', '6cm sim', '6cm meas', '8cm sim', '8cm meas', '4cm PCB sim', '4cm PCB meas');

%PLOT 7T SNR
%figure;
subplot(2,2,3);
plot(var7T2cm.Phantom_Gap,sqrt(1-(1./var7T2cm.Qul)), 'r--',var7T2cm.Phantom_Gap,sqrt(1-(1./var7T2cm.Qul_meas)),'r-', ...
    var7T4cm.Phantom_Gap,sqrt(1-(1./var7T4cm.Qul)),'b--',var7T4cm.Phantom_Gap,sqrt(1-(1./var7T4cm.Qul_meas)),'b-', ...
    var7T6cm.Phantom_Gap,sqrt(1-(1./var7T6cm.Qul)),'g--',var7T6cm.Phantom_Gap,sqrt(1-(1./var7T6cm.Qul_meas)),'g-', ...
    var7T8cm.Phantom_Gap,sqrt(1-(1./var7T8cm.Qul)),'m--',var7T8cm.Phantom_Gap,sqrt(1-(1./var7T8cm.Qul_meas)),'m-','LineWidth',2.5);
%yyaxis left
fontsize(28,"points"); xlabel('Distance from Load (mm)')
ylabel('Fraction of SNR (SNR/SNR_{ideal})')
legend('2cm sim', '2cm meas', '4cm sim', '4cm meas', '6cm sim', '6cm meas', '8cm sim', '8cm meas');
%yyaxis right
%ylabel('Fraction of SNR (SNR/SNRideal)')

%PLOT 10.5T SNR
%figure;
%hold on;
subplot(2,2,4);
plot(var10T2cm.Phantom_Gap,sqrt(1-(1./var10T2cm.Qul)), 'r--',var10T2cm.Phantom_Gap,sqrt(1-(1./var10T2cm.Qul_meas)),'r-', ...
    var10T4cm.Phantom_Gap,sqrt(1-(1./var10T4cm.Qul)),'b--',var10T4cm.Phantom_Gap,sqrt(1-(1./var10T4cm.Qul_meas)),'b-', ...
    var10T6cm.Phantom_Gap,sqrt(1-(1./var10T6cm.Qul)),'g--',var10T6cm.Phantom_Gap,sqrt(1-(1./var10T6cm.Qul_meas)),'g-', ...
    var10T8cm.Phantom_Gap,sqrt(1-(1./var10T8cm.Qul)),'m--',var10T8cm.Phantom_Gap,sqrt(1-(1./var10T8cm.Qul_meas)),'m-', ...
    var10T4cmPCB.Phantom_Gap,sqrt(1-(1./var10T4cmPCB.Qul)),'c--',var10T4cmPCB.Phantom_Gap,sqrt(1-(1./var10T4cmPCB.Qul_meas)),'c-','LineWidth',2.5);
xlim([10 50])
%yyaxis left
fontsize(28,"points"); xlabel('Distance from Load (mm)')
ylabel('Fraction of SNR (SNR/SNR_{ideal})')
legend('2cm sim', '2cm meas', '4cm sim', '4cm meas', '6cm sim', '6cm meas', '8cm sim', '8cm meas', '4cm PCB sim', '4cm PCB meas');

%PLOT 7T resistances
figure;
subplot(2,1,1);
plot(var7T2cm.Phantom_Gap,var7T2cm.R_Sample, 'r--',var7T2cm.Phantom_Gap,var7T2cm.R_Coil,'r-', var7T2cm.Phantom_Gap,var7T2cm.R_Rad,'r:', ...
    var7T4cm.Phantom_Gap,var7T4cm.R_Sample,'b--',var7T4cm.Phantom_Gap,var7T4cm.R_Coil,'b-', var7T4cm.Phantom_Gap,var7T4cm.R_Rad,'b:', ...
    var7T6cm.Phantom_Gap,var7T6cm.R_Sample,'g--',var7T6cm.Phantom_Gap,var7T6cm.R_Coil,'g-', var7T6cm.Phantom_Gap,var7T6cm.R_Rad,'g:', ...
    var7T8cm.Phantom_Gap,var7T8cm.R_Sample,'m--',var7T8cm.Phantom_Gap,var7T8cm.R_Coil,'m-',var7T8cm.Phantom_Gap,var7T8cm.R_Rad,'m:','LineWidth',2.5);
%yyaxis left
grid on;
fontsize(28,"points"); xlabel('Distance from Load (mm)')
ylabel('Simulated Resistance (Ohms) (log scale)')
legend('2cm R_{Sample}', '2cm R_{Coil}', '2cm R_{Rad}', '4cm R_{Sample}', '4cm R_{Coil}', '4cm R_{Rad}', '6cm R_{Sample}', '6cm R_{Coil}', '6cm R_{Rad}', '8cm R_{Sample}', '8cm R_{Coil}', '8cm R_{Rad}');
legend('Location','eastoutside')
set(gca, 'YScale', 'log')
title('7T / 298 MHz Loops')
subplot(2,1,2);
plot(var10T2cm.Phantom_Gap,var10T2cm.R_Sample, 'r--',var10T2cm.Phantom_Gap,var10T2cm.R_Coil,'r-', var10T2cm.Phantom_Gap,var10T2cm.R_Rad,'r:', ...
    var10T4cm.Phantom_Gap,var10T4cm.R_Sample,'b--',var10T4cm.Phantom_Gap,var10T4cm.R_Coil,'b-', var10T4cm.Phantom_Gap,var10T4cm.R_Rad,'b:', ...
    var10T4cmPCB.Phantom_Gap,var10T4cmPCB.R_Sample,'c--',var10T4cmPCB.Phantom_Gap,var10T4cmPCB.R_Coil,'c-', var10T4cmPCB.Phantom_Gap,var10T4cmPCB.R_Rad,'c:', ...
    var10T6cm.Phantom_Gap,var10T6cm.R_Sample,'g--',var10T6cm.Phantom_Gap,var10T6cm.R_Coil,'g-', var10T6cm.Phantom_Gap,var10T6cm.R_Rad,'g:', ...
    var10T8cm.Phantom_Gap,var10T8cm.R_Sample,'m--',var10T8cm.Phantom_Gap,var10T8cm.R_Coil,'m-',var10T8cm.Phantom_Gap,var10T8cm.R_Rad,'m:','LineWidth',2.5);
grid on;
fontsize(28,"points"); xlabel('Distance from Load (mm)')
ylabel('Simulated Resistance (Ohms) (log scale)')
legend('2cm R_{Sample}', '2cm R_{Coil}', '2cm R_{Rad}', '4cm R_{Sample}', '4cm R_{Coil}', '4cm PCB R_{Rad}',  '4cm PCB R_{Sample}', '4cm PCB R_{Coil}', '4cm R_{Rad}', '6cm R_{Sample}', '6cm R_{Coil}', '6cm R_{Rad}', '8cm R_{Sample}', '8cm R_{Coil}', '8cm R_{Rad}');
legend('Location','eastoutside')
set(gca, 'YScale', 'log')
title('10.5T / 447 MHz Loops')
xlim([10 50])

figure; subplot(1,2,1);
Urad8cm10T=4.754907443626268;
Urad6cm10T=2.146560339584563;
Urad4cm10T=0.330690170438991;
Urad2cm10T=0.022188597569142;
Urad8cm7T=0.813364537352076;
Urad6cm7T=0.229139560930379;
Urad4cm7T=0.056687086344860;
Urad2cm7T=0.004152195175822;
Urad7T=[Urad2cm7T Urad4cm7T Urad6cm7T Urad8cm7T];
Urad10T=[Urad2cm10T Urad4cm10T Urad6cm10T Urad8cm10T];
coild=[2 4 6 8]
plot(coild,Urad7T, 'b-',coild,Urad10T,'r-', 'LineWidth', 1.5);
grid on;
fontsize(28,"points"); xlabel('Coil Diameter (mm)')
ylabel('Radiation Loss of Unloaded Coil (Ohms)')
legend('7T', '10.5T');
title('(A) Radiation Loss for Unloaded Coils')
subplot(1,2,2);
plot(var10T2cm.Phantom_Gap, Urad2cm10T./var10T2cm.R_Rad,'r-', ...
    var10T4cm.Phantom_Gap, Urad4cm10T./var10T4cm.R_Rad,'b-', ...
    var10T6cm.Phantom_Gap, Urad6cm10T./var10T6cm.R_Rad,'g-', ...
    var10T8cm.Phantom_Gap, Urad8cm10T./var10T8cm.R_Rad,'m-', ...
    var7T2cm.Phantom_Gap, Urad2cm7T./var7T2cm.R_Rad,'r:', ...
    var7T4cm.Phantom_Gap, Urad4cm7T./var7T4cm.R_Rad,'b:', ...
    var7T6cm.Phantom_Gap, Urad6cm7T./var7T6cm.R_Rad,'g:', ...
    var7T8cm.Phantom_Gap, Urad8cm7T./var7T8cm.R_Rad,'m:','LineWidth',2.5);
grid on;
fontsize(28,"points"); xlabel('Distance from Load (mm)')
ylabel('R_{Rad (Unloaded)} / R_{Rad (Loaded)} (Ohms)')
legend('10.5T 2cm', '10.5T 4cm', '10.5T 6cm', '10.5T 8cm', '7T 2cm', '7T 4cm', '7T 6cm', '7T 8cm');
%legend('Location','eastoutside')
%set(gca, 'YScale', 'log')
title('(B) Ratio of Unloaded/Loaded Coil Radiation Loss')
xlim([10 50])

%Simulated Q of loops with detune networks

R_p_choke7T = 52798;
R_p_choke10T = 65825;
R_p_PIN7T = 8000;
R_p_PIN10T = 18000;
%For Cs: 3pF 4.7pF 6.2pF 8.2pF 10pF 12pF;
Cs = 1E-12*[2.2 3 4.7 6.2 8.2 10 12];
%For C: 1.8pF 2.5pF 3pF 4.55pF 4.7pF 6.2pF 7.5 8.2pF 12pF;
R_ESR = [0.130 0.110 0.115 0.1 0.095 0.088 0.082 0.080 0.05];
Xs7T = 1./(298E6*pi()*Cs);
Xs10T =  1./(447E6*pi()*Cs);
L_Coil=1E-9*[43.6 96 135 184];
X_Coil7T = (298E6*pi()*L_Coil);
X_Coil10T = (447E6*pi()*L_Coil);

%Calculate simulated Q-ratio 7T 2cm
R_Feed_7T2cm = Xs7T(5).^2/R_p_PIN7T + (2*Xs7T(5)).^2/R_p_choke7T;
R_ELEC_7T2cm = R_ESR(8)+ R_Feed_7T2cm;
R_U_7T2cm = var7T2cm.R_Coil + R_ELEC_7T2cm;
R_L_7T2cm = var7T2cm.R_Coil + var7T2cm.R_Sample + var7T2cm.R_Rad + R_ELEC_7T2cm;
Q_R_7T2cm=R_L_7T2cm./R_U_7T2cm

%Calculate simulated Q-ratio 7T 4cm
R_Feed_7T4cm = Xs7T(4).^2/R_p_PIN7T + (2*Xs7T(4)).^2/R_p_choke7T;
R_ELEC_7T4cm = 3*R_ESR(6)+ R_Feed_7T4cm;
R_U_7T4cm = var7T4cm.R_Coil + R_ELEC_7T4cm;
R_L_7T4cm = var7T4cm.R_Coil + var7T4cm.R_Sample + var7T4cm.R_Rad + R_ELEC_7T4cm;
Q_R_7T4cm=R_L_7T4cm./R_U_7T4cm

%Calculate simulated Q-ratio 7T 6cm
R_Feed_7T6cm = Xs7T(4).^2/R_p_PIN7T + (2*Xs7T(4)).^2/R_p_choke7T;
R_ELEC_7T6cm = 2*R_ESR(6)+ R_ESR(3) + R_Feed_7T6cm;
R_U_7T6cm = var7T6cm.R_Coil + R_ELEC_7T6cm;
R_L_7T6cm = var7T6cm.R_Coil + var7T6cm.R_Sample + var7T6cm.R_Rad + R_ELEC_7T6cm;
Q_R_7T6cm=R_L_7T6cm./R_U_7T6cm

%Calculate simulated Q-ratio 10T 4cm
R_Feed_10T4cm = Xs10T(3).^2/R_p_PIN10T + (2*Xs10T(3)).^2/R_p_choke10T;
R_ELEC_10T4cm = R_ESR(4) + 2*R_ESR(5)+ R_Feed_10T4cm;
R_U_10T4cm = var10T4cm.R_Coil + R_ELEC_10T4cm;
R_L_10T4cm = var10T4cm.R_Coil + var10T4cm.R_Sample + var10T4cm.R_Rad + R_ELEC_10T4cm;
Q_R_10T4cm=R_L_10T4cm./R_U_10T4cm

%Calculate simulated Q-ratio 10T 6cm
R_Feed_10T6cm = Xs10T(4).^2/R_p_PIN10T + (2*Xs10T(4)).^2/R_p_choke10T;
R_ELEC_10T6cm = R_ESR(4) + 3*R_ESR(6)+ R_Feed_10T6cm;
R_U_10T6cm = var10T6cm.R_Coil + R_ELEC_10T6cm;
R_L_10T6cm = var10T6cm.R_Coil + var10T6cm.R_Sample + var10T6cm.R_Rad + R_ELEC_10T6cm;
Q_R_10T6cm=R_L_10T6cm./R_U_10T6cm

%yyaxis right
%ylabel('Fraction of SNR (SNR/SNRideal)')
%figure;
%hold on;

%PLOT 10.5T Q-ratios
% plot(var10T2cm.Phantom_Gap,var10T2cm.Qul, 'r--',var10T2cm.Phantom_Gap,var10T2cm.Qul_meas,'r-', ...
%     var10T4cm.Phantom_Gap,var10T4cm.Qul,'b--',var10T4cm.Phantom_Gap,var10T4cm.Qul_meas,'b-', ...
%     var10T6cm.Phantom_Gap,var10T6cm.Qul,'g--',var10T6cm.Phantom_Gap,var10T6cm.Qul_meas,'g-', ...
%     var10T8cm.Phantom_Gap,var10T8cm.Qul,'m--',var10T8cm.Phantom_Gap,var10T8cm.Qul_meas,'m-', ...
%     var10T4cmPCB.Phantom_Gap,var10T4cmPCB.Qul,'c--',var10T4cmPCB.Phantom_Gap,var10T4cmPCB.Qul_meas,'c-');
% xlim([10 50])
% %yyaxis left
% xlabel('Distance from Load (mm)')
% ylabel('Q-ratio (Qul)')
% legend('2cm sim', '2cm meas', '4cm sim', '4cm meas', '6cm sim', '6cm meas', '8cm sim', '8cm meas', '4cm PCB sim', '4cm PCB meas');




















%yyaxis right
%ylabel('Fraction of SNR (SNR/SNRideal)')
%yyaxis left
%xlabel('Distance from Load (mm)')
%ylabel('Q-ratio (Qul)')
%yyaxis right
%ylabel('Fraction of SNR (SNR/SNRideal)')
%ax = gca;
%ax.LineStyleOrder = ["-or"; "-*r"; "-ob"; "-*b"; "-og"; "-*g"; "-om"; "-*m";];
%ax.ColorOrder = ["r"; "r"; "b"; "b"; "g"; "g"; "m"; "m"];
% yyaxis left
% ylim([1 30])
% xlabel('Distance from Load (mm)')
% ylabel('Q-ratio (Qul)')
% plot(var7T2cm.Phantom_Gap,var7T2cm.Qul,var7T2cm.Phantom_Gap,var7T2cm.Qul_meas, ...
%     var7T4cm.Phantom_Gap,var7T4cm.Qul,var7T4cm.Phantom_Gap,var7T4cm.Qul_meas);
% hold on;
% yyaxis right
% ylim([0 98.3])
% ylabel('SNR/SNRideal')
% plot(var7T6cm.SNR_Ratio,var7T6cm.Qul,var7T6cm.SNR_Ratio,var7T6cm.Qul_meas, ...
%     var7T8cm.SNR_Ratio,var7T8cm.Qul,var7T8cm.SNR_Ratio,var7T8cm.Qul_meas);