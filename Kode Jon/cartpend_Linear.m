%Parameter yang digunakan untuk membuat SPT
function dy = cartpend_Linear(y,m,M,L,g,u)

D1 = 1/(M-m);                           %Pembagi Pada Persamaan Gerak SPT fungsi X
D2 = 1/(L*(M-m));                       %Pembagi Pada Persamaan Gerak SPT fungsi Theta

dy(1,1) = y(2);                         %Kecepatan
dy(2,1) = D1*m*g/(M-m) - D1*u;     %Percepatan
dy(3,1) = y(4);                         %Kecepatan Sudut
dy(4,1) = D1*(-(2*m+m)*g) + D2*u;  %Percepatan Sudut




