function plotr
a=[-2:0.04:2];
b=[-2:0.04:2];
for i=1:101
    for j=1:101
        x=-2+4*(i-1)/100;
        y=-2+4*(j-1)/100;
        a1(i,j)=mk(steepest(x,y));
        a2(i,j)=mk(newt(x,y));
        a3(i,j)=mk(con(x,y));
    end
end
delete(gcp);
figure(1)
pcolor(a,b,a1);
figure(2)
pcolor(a,b,a2);
figure(3)
pcolor(a,b,a3);
