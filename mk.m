function r=mk(sol)
e=10^(-3);
x=sol(1);
y=sol(2);
if x^2+y^2<e
    r=0;
elseif (x-1)^2+y^2<e
    r=1;
elseif x^2+(y-1)^2<e
    r=2;
elseif (x+1)^2+y^2<e
    r=3;
elseif x^2+(y+1)^2<e
    r=4;
else
    r=5;
end