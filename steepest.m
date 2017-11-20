function sol=steepest(x,y)
alpha=0.0001;
a=gra(x,y);
n=0;
while max(abs(a))>10^(-7)&&(n<1000)
    x=x-alpha*a(1);
    y=y-alpha*a(2);
    a=gra(x,y);
    n=n+1;
end
sol(1)=x;
sol(2)=y;