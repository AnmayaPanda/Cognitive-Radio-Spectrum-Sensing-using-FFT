% Real-time Spectrum Sensing for Cognitive Radio using FFT

% Simulate radio spectrum occupancy (example: available spectrum)
fs = 1000; % Sampling frequency (Hz)
t = 0:1/fs:5-1/fs; % Time vector for 5 seconds
available_spectrum = sin(2*pi*50*t) + 0.5*sin(2*pi*150*t) + 0.3*sin(2*pi*300*t); % Simulated available spectrum

% Perform FFT for spectrum sensing
N = length(available_spectrum);
Y = fft(available_spectrum);
frequencies = fs*(0:(N-1))/N; % Frequency axis

% Plot Spectrum Occupancy and its Spectrum
figure;
subplot(2,1,1);
plot(t, available_spectrum);
title('Simulated Spectrum Occupancy (Cognitive Radio) 102109004');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
subplot(2,1,2);
stem(frequencies, abs(Y));
title('Spectrum Sensing 102109004');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
