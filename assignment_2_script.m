%simulink

subplot(2,1,1); % Divides the figure to two subplots
plot(i.time, i.data); grid on;
%i N = 20; % Rated current
%plot(i.time,i.data/i N); % This would plot the p.u. current
xlabel('Time (s)'); ylabel('Current (A)');
subplot(2,1,2);
plot(w_M.time,w_M.data); grid on;
xlabel('Time (s)'); ylabel('Speed (rad/s)');