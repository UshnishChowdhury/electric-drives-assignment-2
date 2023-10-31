%simulink

% Divides the figure to two subplots
subplot(2,1,1);

%Plotting output current
plot(i.time, i.data);
grid on;
xlabel('Time (s)'); 
ylabel('Current (A)');

%i N = 20; % Rated current
%plot(i.time,i.data/i N); % This would plot the p.u. current

subplot(2,1,2);

%Plotting output rotational speed
plot(w_M.time,w_M.data); 
grid on;
xlabel('Time (s)'); 
ylabel('Speed (rad/s)');