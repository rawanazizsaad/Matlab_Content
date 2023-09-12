t = (0:0.1:60)';
x = sawtooth(t);
y = awgn(x,10,'measured');
plot(t,[x y])
legend('Original Signal','Signal with AWGN')
  


c = [-5 -5i 5 5i -3 -3-3i -3i 3-3i 3 3+3i 3i -3+3i -1 -1i 1 1i];
sigpower = pow2db(mean(abs(c).^2));
M = length(c);
data = randi([0 M-1],2000,1);
modData = genqammod(data,c);
rxSig = awgn(modData,20,sigpower);
h = scatterplot(rxSig);
hold on
scatterplot(c,[],[],'r*',h)
grid
hold off