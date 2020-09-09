
%% exercício 3

A = [2;0;-3;1];
B = [2;2;-3;1];
C = [0;2;-3;1];
D = [0;0;-3;1];
f = 15/1000;
pu = 15*1e-6;
pv=pu;
u0 = 1280;
v0 = 1024;

alfa = 0; 
beta = 0;
gama = 0;

rotZ = [cosd(alfa) -sind(alfa) 0; sind(alfa) cosd(alfa) 0; 0 0 1];
rotY = [cosd(beta) 0 sind(beta); 0 1 0; -sind(beta) 0 cosd(beta)];
rotX = [1 0 0; 0 cosd(gama) -sind(gama); 0 sind(gama) cosd(gama)];

R3 = rotZ*rotY*rotX;
Pt = [0;0;10];

K = [f/pu 0 u0 0; 0 f/pv v0 0; 0 0 1 0];

A_ = K*[R3 -Pt; zeros(1,3) 1]*A;
A = A_(1:2,:)/A_(3,1)

B_ = K*[R3 -Pt; zeros(1,3) 1]*B;
B = B_(1:2,:)/B_(3,1)

C_ = K*[R3 -Pt; zeros(1,3) 1]*C;
C = C_(1:2,:)/C_(3,1)

D_ = K*[R3 -Pt; zeros(1,3) 1]*D;
D = D_(1:2,:)/D_(3,1)

% Comentario teste