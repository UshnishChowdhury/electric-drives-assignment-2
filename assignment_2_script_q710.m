%% Parameter estimates
% R = 0.5;                    % Resistance
R = 0.5 * 1.5; 
% L = 2.5e-3;                 % Inductance
L = 2.5e-3 * 0.7;
k = 0.35;                   % Flux factor
J = 1e-3;                   % Moment of inertia
%% Gains of the 2DOF PI current controller

alpha_c = 2* pi* 400;       % Closed−loop bandwidth
k_p = 2 * alpha_c* L - R;   % Proportional gain
k_i = alpha_c^2 * L;        % Integral gain
k_t = alpha_c * L;          % Reference feedforward gain
u_min = -140;               % Saturation: lower limit
u_max = 140;                % Saturation: upper limit
T_sw = 200e-6;
%% Gains of the 2DOF PI speed controller

alpha_s = 0.1 * alpha_c;       % Closed−loop bandwidth
%k_ps = 2 * alpha_s * J;       % Proportional gain
k_ps = alpha_s * J;            % Proportional gain
%k_is = alpha_s^2 * J;         % Integral gain
k_is = 0;
%k_ts = alpha_s * J;           % Reference feedforward gain
k_ts = k_ps;
tau_N = 7;                    % Rated torque
tau_min = -2*tau_N;           % Saturation: lower limit
tau_max = 2*tau_N;            % Saturation: upper limit

%% Code for plotting results (Torque and Rotational Speed)
figure;
subplot(3, 1, 1)
plot(i.time, i.data, 'color', 'b', 'LineWidth', 1);
grid on;
hold on;
% Reference signal
stairs(i_ref.time, i_ref.data, 'black');
axis([0 0.5 -50 50]);
title("Current as a function of time");
xlabel('Time (s)'); 
ylabel('Current (A)');

subplot(3, 1, 2)
plot(w_M.time, w_M.data, 'color', 'r', 'LineWidth', 1);
grid on;
hold on;
% Reference signal
stairs(w_M_ref.time, w_M_ref.data, 'black');
axis([0 0.5 -200 200]);
title("Rotational Speed as a function of time");
xlabel('Time (s)'); 
ylabel('Speed (rad / sec)');

subplot(3, 1, 3)
plot(u.time, u.data, 'color', 'black', 'LineWidth', 1);
grid on;
axis([0 0.5 -200 200]);
title("Voltage as a function of time");
xlabel('Time (s)'); 
ylabel('Voltage (V)');

%% Code for plotting results (Torque and Rotational Speed)
figure;
subplot(2, 1, 1)
plot(i.time, i.data, 'color', 'b', 'LineWidth', 1);
grid on;
hold on;
% Reference signal
stairs(i_ref.time, i_ref.data, 'black');
axis([0 0.5 -50 50]);
title("Current as a function of time");
xlabel('Time (s)'); 
ylabel('Current (A)');

subplot(2, 1, 2)
plot(w_M.time, w_M.data, 'color', 'r', 'LineWidth', 1);
grid on;
hold on;
% Reference signal
stairs(w_M_ref.time, w_M_ref.data, 'black');
axis([0 0.5 -200 200]);
title("Rotational Speed as a function of time");
xlabel('Time (s)'); 
ylabel('Speed (rad / sec)');

%% Code for plotting results (Torque and Rotational Speed)
figure;
subplot(2, 1, 1)
plot(i.time, i.data, 'color', 'b', 'LineWidth', 1);
grid on;
hold on;
% Reference signal
stairs(i_ref.time, i_ref.data, 'black');
axis([0.1 0.37 -1 50]);
title("Current as a function of time");
xlabel('Time (s)'); 
ylabel('Current (A)');

subplot(2, 1, 2)
plot(w_M.time, w_M.data, 'color', 'r', 'LineWidth', 1);
grid on;
hold on;
% Reference signal
stairs(w_M_ref.time, w_M_ref.data, 'black');
axis([0.1 0.37 -400 0]);
title("Rotational Speed as a function of time");
xlabel('Time (s)'); 
ylabel('Speed (rad / sec)');