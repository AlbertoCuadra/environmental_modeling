% MODELADO MATEMATICO DE LA EVOLUCION DE LAS POBLACIONES DE UNA ESPECIE
%---------------------------------------------------------------------
clc; clear all; close all;
global blue red green yellow purple
% Colores
red = [0.85,0.33,0.1]; blue=[0,0.45,0.74]; green=[0.47,0.67,0.19];
purple = [0.49,0.18,0.56]; yellow = [0.93,0.69,0.13];
% --------------------------------------------------------------------
% PARAMETROS:
t = linspace(0,3);
n0 = 1.5; %Poblacion inicial
mu = 0.4; % Tasa de crecimiento intrinseco
k = 10; % Capacidad del entorno
M = 1.5; % Umbral minimo

% Funciones:
% [t,n1] = ode45(@(t,n) malthius(t,n,mu),t,n0);
% [t,n2] = ode45(@(t,n) verhulst(t,n,mu,k),t,n0);
[t,n3] = ode45(@(t,n) alle(t,n,mu,k,M),t,n0);
% [t,n4] = ode45(@volterra,t,n0);

% Representacion de la solucion:
fig = figure;
set(axes,'LineWidth',1.2,'FontSize',14)
set(fig,'innerposition',[250,200,1150,700],...
        'outerposition',[250 200 1000 600]);
box on; grid on; grid minor;
xlabel('$t$','FontSize',20,'interpreter','latex');
ylabel('$N(t)$','FontSize',20,'interpreter','latex');
% xlim([0 1]);
% ylim([10, 15]);
hold on
plot(t,n3,'LineWidth',1.5,'color',blue);
% plot(t,k*ones(length(t)),'-.','LineWidth',1.5,'color',red);
plot(t,M*ones(length(t)),'-.','LineWidth',1.5,'color',green);
% leg{1} = ['Malthius: $\mu = 0.4$'];
% leg{1} = ['Verlhulst'];
leg{1} = ['Alle'];
% leg{2} = ['$k$: capacidad del entorno'];
leg{2} = ['$M$: umbral de extinci\''on'];
legend(leg,'FontSize',20,'Location','northeast','interpreter','latex')

%%
% t = linspace(0,1);
% n0_1 = 0.2;
% n0_2 = 0.1;
% [t,n5] = ode45(@lotka_volterra4,t,[n0_1,n0_2]);
% hold on
% % plot(t,n1,'LineWidth',1.5,'color',blue);
% % plot(t,n2,'LineWidth',1.5,'color',blue);
% % plot(t,n3,'LineWidth',1.5,'color',blue);
% % plot(t,n4,'LineWidth',1.5,'color',blue);
% plot(t,n5,'LineWidth',1.5,'color',blue);
% 
% fig = figure;
% set(axes,'LineWidth',1.2,'FontSize',14)
% set(fig,'innerposition',[250,200,1150,700],...
%         'outerposition',[250 200 1000 600]);
% box on; grid on; grid minor;
% xlabel('x','FontSize',20); ylabel('u(x,t)','FontSize',20);
% xlim([0 1]); ylim([0 ylimite]);
% hold on)