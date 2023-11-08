%simulink

% Rated Current 
i_N = 20;

% Rated rotational speed
w_N = 3000 * (2*pi/60);


% Divides the figure to two subplots
subplot(2,1,1);

%Plotting output current per unit
plot(i.time, i.data / i_N);
grid on;
xlabel('Time (s)'); 
ylabel('pu Current (i / i_N)');

subplot(2,1,2);

%Plotting output rotational speed per unit
plot(w_M.time, w_M.data / w_N); 
grid on;
xlabel('Time (s)'); 
ylabel('pu Speed (w_M / w_N)');