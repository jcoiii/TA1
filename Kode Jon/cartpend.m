%Parameter yang digunakan untuk membuat SPT
function dy = cartpend(y,m,M,L,g,u)

Sy = sin(y(3));                                                                 %Sin Theta 
Cy = cos(y(3));                                                                 %Cos Theta
D = m*L*Cy^2-(2*m+M)*L;                                                         %Pembagi Pada Persamaan Gerak SPT

dy(1,1) = y(2);                                                                 %Kecepatan
dy(2,1) = (1/D)*(-L*Cy*(m*L*Sy*y(4)^2)+M*g*L*Sy*Cy) - L*Cy*(1/D)*u;             %Percepatan
dy(3,1) = y(4);                                                                 %Kecepatan Sudut
dy(4,1) = (1/D)*(-(2*m+M)*g*Sy+m*L*Sy*Cy*y(4)^2) + Cy*(1/D)*u;                  %Percepatan Sudut




