t = 0:0.1:5;
plot (t, 4*t, t, -2.3*t+18, t, -1.3*t+20);
axis ([0 5 0 30]);
title ("WTI, USI and CRI indicies correlation", 'FontSize', 16);
ylabel("Attractions Completed / Wating time (minutes)");
xlabel("Visitors count (x1000)");
print('/home/nicolas/Documents/uni/lm/icps/amusement-park-analysis/doc/img/test.eps')
