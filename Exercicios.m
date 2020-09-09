
% Matriz de rota��o em Z
%rotZ = [cosd() -send() 0; send() cosd() 0; 0 0 1];

% Matriz de rota��o em Y
%rotY = [cosd() 0 send(); 0 1 0; -send() 0 cosd()];

% Matriz de rota��o em X
%rotX = [1 0 0; 0 cosd() -send(); 0 send() cosd()];

%Matriz R3x3
%R3 = rotZ*rotY*rotX

% Matriz de transla��o
% Pt = [tx;ty;tz]


%% exerc�cio 1

% como o plano (x',y',z') � origem e � fixo por isto, o plano
% (x,y,z) precisa rotacionar -90� em rela��o � seu eixo z para estar 
% alinhado com a origem (quero alinhar meus ponto de destino no plano 
% de origem)

alfa = -90; 
beta = 0;
gama = 0;

rotZ = [cosd(alfa) -sind(alfa) 0; sind(alfa) cosd(alfa) 0; 0 0 1];
rotY = [cosd(beta) 0 sind(beta); 0 1 0; -sind(beta) 0 cosd(beta)];
rotX = [1 0 0; 0 cosd(gama) -sind(gama); 0 sind(gama) cosd(gama)];

R3 = rotZ*rotY*rotX;
Pt = [0;0;0];

A = [R3 Pt; zeros(1,3) 1]*[1;1;1;1];
B = [R3 Pt; zeros(1,3) 1]*[2;4;-3;1];

%% exerc�cio 2

% como o plano (x,y,z) � origem e � fixo por isto, o plano
% (x',y',z') precisa rotacionar +90� em rela��o � seu eixo z' para estar 
% alinhado com a origem (quero alinhar meus ponto de destino no plano 
% de origem)

alfa = 90; 
beta = 0;
gama = 0;

rotZ = [cosd(alfa) -sind(alfa) 0; sind(alfa) cosd(alfa) 0; 0 0 1];
rotY = [cosd(beta) 0 sind(beta); 0 1 0; -sind(beta) 0 cosd(beta)];
rotX = [1 0 0; 0 cosd(gama) -sind(gama); 0 sind(gama) cosd(gama)];

R3 = rotZ*rotY*rotX;
Pt = [0;0;0];

A = [R3 Pt; zeros(1,3) 1]*[1;1;1;1];
B = [R3 Pt; zeros(1,3) 1]*[3;7;-1;1];
