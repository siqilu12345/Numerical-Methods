function sol=con(x,y)
g=gra(x,y);
d=-g;
n=0;
while max(abs(g))>10^(-7)&&(n<1000)
    alpha=-g*d'./(d*hes(x,y)*d');
    x=x+alpha*d(1);
    y=y+alpha*d(2);
    newg=gra(x,y);
    if max(abs(newg))<10^(-5)
        break
    end
    beta=newg*newg'./(g*g');
    d=-newg+beta*d;
    g=newg;
    n=n+1;
end
sol(1)=x;
sol(2)=y;