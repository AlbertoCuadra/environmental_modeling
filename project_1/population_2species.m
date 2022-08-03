% MODELADO MATEMATICO DE LA EVOLUCION DE LAS POBLACIONES DE DOS ESPECIE
%---------------------------------------------------------------------
clc; clear all; close all;
global blue red green yellow purple
% Colores
red = [0.85,0.33,0.1]; blue=[0,0.45,0.74]; green=[0.47,0.67,0.19];
purple = [0.49,0.18,0.56]; yellow = [0.93,0.69,0.13];
% --------------------------------------------------------------------
% PARAMETROS:
t = linspace(0,300,200);
n0 = [8,6]; %Poblacion inicial.
eps = [0.2,-0.4]; % Tasa de crecimiento intrinseco.
alpha = [0.6]; % Competicion intraespecie (en valor absoluto).
gamma = [-0.8,0.8]; % Coeficiente de interaccion de las especies.
% --------------------------------------------------------------------
% Funciones:
[t,n] = ode45(@(t,n) lotka_volterra(t,n,eps,gamma),t,n0);
% [t,n] = ode45(@(t,n) kolmogorov(t,n,eps,gamma,alpha),t,n0);
% --------------------------------------------------------------------
% Representacion de la solucion:
fig = figure;
set(axes,'LineWidth',1.2,'FontSize',14)
set(fig,'innerposition',[250,200,1150,700],...
        'outerposition',[250 200 1000 600]);
box on; grid on; grid minor;
xlabel('$t$','FontSize',20,'interpreter','latex');
ylabel('$N(t)$','FontSize',20,'interpreter','latex');
% xlim([0 1]);
% ylim([9, max(n3)]);
hold on
plot(t,n(:,1),'LineWidth',1.5,'color',blue);
plot(t,n(:,2),'LineWidth',1.5,'color',red);
% tit = ['Caso: Competici\''on'];
% tit = ['Caso: Depredador-presa'];
% tit = ['Caso: Simbiosis'];
tit = ['Caso: Competici\''on con competici\''on intra-especie'];
title({tit},'interpreter','latex','FontSize',20);
leg{1} = ['$N_1(t)$'];
leg{2} = ['$N_2(t)$'];
legend(leg,'FontSize',20,'Location','eastoutside','interpreter','latex')