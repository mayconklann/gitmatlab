
% Matriz de rotação em Z
%rotZ = [cosd() -send() 0; send() cosd() 0; 0 0 1];

% Matriz de rotação em Y
%rotY = [cosd() 0 send(); 0 1 0; -send() 0 cosd()];

% Matriz de rotação em X
%rotX = [1 0 0; 0 cosd() -send(); 0 send() cosd()];

%Matriz R3x3
%R3 = rotZ*rotY*rotX

% Matriz de translação
% Pt = [tx;ty;tz]


%% exercício 1

% como o plano (x',y',z') é origem e é fixo por isto, o plano
% (x,y,z) precisa rotacionar -90º em relação à seu eixo z para estar 
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

%% exercício 2

% como o plano (x,y,z) é origem e é fixo por isto, o plano
% (x',y',z') precisa rotacionar +90º em relação à seu eixo z' para estar 
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
