%The Fourier transform is a mathematical formula that transforms a signal sampled in time or space
%to the same signal sampled in temporal or spatial frequency. In signal processing,
%the Fourier transform can reveal important characteristics of a signal, namely, 
%its frequency components.
Ts = 1/50;
t = 0:Ts:10-Ts;
x = sin(2*pi*15*t) + sin(2*pi*20*t);
plot(t,x)

%Compute the Fourier transform of the signal, 
%and create the vector f that corresponds to the signal's sampling in frequency space.
xlabel('Time (seconds)')
ylabel('Amplitude')
y = fft(x);
fs = 1/Ts;
f = (0:length(y)-1)*fs/length(y);
plot(f,abs(y))
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Magnitude')
