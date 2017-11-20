function sol=newt(x,y)
n=0;
while max(abs(gra(x,y)))>10^(-7)&&(n<1000)
    A=hes(x,y);
    a=gra(x,y);
    d=A\a';
    d=d./sum(d.^2).^0.5;
    m=a*d;
    if m<0
        d=-d;
        m=-m;
    end
    c=0.005;
    tao=0.5;
    t=c*m;
    alpha=4;
    while goal(x,y)-goal(x-alpha*d(1),y-alpha*d(2))<alpha*t
        alpha=tao*alpha;
    end
    x=x-alpha*d(1);
    y=y-alpha*d(2);
    n=n+1;
end
sol(1)=x;
sol(2)=y;