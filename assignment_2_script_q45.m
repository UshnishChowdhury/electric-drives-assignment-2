subplot(2, 1, 1)
plot(i.time, i.data); 
grid on;
hold on;
stairs(i_k.time, i_k.data, 'r');    % Discrete signal
axis([0.15 0.1504 9 11]);           % Controls axis scaling
xlabel('Time (s)'); 
ylabel('Current (A)');
legend('Actual Current', 'Synchronously Sampled Current');
title('Current as a function of Time');

subplot(2, 1, 2)
plot(u.time, u.data);
grid on;
hold on;
plot(u_ref.time, u_ref.data);
axis([0.15 0.1504 -10 150]);
xlabel('Time (s)'); 
ylabel('Voltage (V)');
legend('Actual Voltage', 'Reference Voltage');
title('Voltage as a function of Time');