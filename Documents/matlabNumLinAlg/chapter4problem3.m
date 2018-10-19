function chapter4problem3(A)

[U,S,V] = svd(A);
figure(1)
circle(0,0,1)
plot([0 V(1,1)],[0 V(2,1)])
plot([0 V(1,2)], [0 V(2,2)])

figure(2)
ellipse(A);
hold on
plot([0 S(1,1)*U(1,1)],[0 S(1,1)*U(2,1)])
plot([0 S(2,2)*U(1,2)], [0 S(2,2)*U(2,2)])
end

function h = ellipse(A)
t=0:0.01:(2*pi); 
x1 = cos(t); y1 = sin(t); 
w = A*[x1; y1]; a = w(1,:); b = w(2,:);
plot(a,b);
end

function h = circle(x,y,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
end
