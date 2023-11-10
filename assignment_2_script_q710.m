%% Parameter estimates
R = 0.5;                    % Resistance
L = 2.5e-3;                 % Inductance
k = 0.35;                   % Flux factor
J = 1e-3;                   % Moment of inertia
%% Gains of the 2DOF PI current controller

alpha_c = 2* pi* 400;         % Closed−loop bandwidth
k_p = 2 * alpha_c* L - R;     % Proportional gain
k_i = alpha_c^2 * L;         % Integral gain
k_t = alpha_c * L;           % Reference feedforward gain
u_min = -140;               % Saturation: lower limit
u_max = 140;                % Saturation: upper limit
T_sw = 200e-6;
%% Gains of the 2DOF PI speed controller

alpha_s = 0.1 * alpha_c;      % Closed−loop bandwidth
k_ps = 2 * alpha_s * J;       % Proportional gain
k_is = alpha_s^2 * J;         % Integral gain
k_ts = alpha_s * J;           % Reference feedforward gain
tau_N = 7;                    % Rated torque
tau_min = -2*tau_N;           % Saturation: lower limit
tau_max = 2*tau_N;            % Saturation: upper limit

%% Code for plots

%subplot(2, 1, 1)
%plot(tau_M_ref.time, tau_M_ref.data, 'LineWidth', 1);
%grid on;
%hold on;
% Reference signal
%stairs(tau_M_ref.time, tau_M_ref.data, 'r', 'LineWidth', 1);     
%title("Motor Torque as a function of time");
%xlabel('Time (s)'); 
%ylabel('Torque (Nm)');

%subplot(2, 1, 2)
%plot(i_ref.time, i_ref.data, 'LineWidth', 1);
%grid on;
%hold on;
% Reference signal
%stairs(tau_M_ref.time, tau_M_ref.data, 'r', 'LineWidth', 1);     
%title("Current as a function of time");
%xlabel('Time (s)'); 
%ylabel('Current (A)');

figure;
subplot(2, 1, 1)
plot(tau_M.time, tau_M.data, 'LineWidth', 1);
grid on;
hold on;
% Reference signal
stairs(tau_M_ref.time, tau_M_ref.data, 'black', 'LineWidth', 0.5);
axis([0 0.5 -15 15]);
title("Torque as a function of time");
xlabel('Time (s)'); 
ylabel('Torque (Nm)');

subplot(2, 1, 2)
plot(w_M.time, w_M.data, 'LineWidth', 1);
grid on;
hold on;
% Reference signal
stairs(w_M_ref.time, w_M_ref.data, 'black', 'LineWidth', 0.5);
axis([0 0.5 -160 200]);
title("Rotational Speed as a function of time");
xlabel('Time (s)'); 
ylabel('Speed (rad / sec)');