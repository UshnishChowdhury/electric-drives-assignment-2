% Removes variables from the workspace
%% Parameter estimates
R = 0.5;                    % Resistance
L = 2.5e-3;                 % Inductance
k = 0.35;                   % Flux factor
J = 1e-3;                   % Moment of inertia
%% Gains of the 2DOF PI current controller
alpha_c = 2*pi*400;         % Closed−loop bandwidth
k_p = 2*alpha_c*L - R;     % Proportional gain
k_i = alpha_c^2*L;         % Integral gain
k_t = alpha_c*L;           % Reference feedforward gain
u_min = -140;               % Saturation: lower limit
u_max = 140;                % Saturation: upper limit
T_sw = 200e-6;
%% Gains of the 2DOF PI speed controller (for Section 4.2)
%alpha s = 0.1*alpha c; % Closed−loop bandwidth
%k ps = ...; % Proportional gain
%k is = ...; % Integral gain
%k ts = ...; % Reference feedforward gain
%tau N = 7; % Rated torque
%tau min = −2*tau N; % Saturation: lower limit
%tau max = 2*tau N; % Saturation: upper limit

subplot(2, 1, 1)
plot(tau_M.time, tau_M.data, 'LineWidth', 1);
grid on;
hold on;
% Reference signal
stairs(tau_M_ref.time, tau_M_ref.data, 'r', 'LineWidth', 1);     
axis([0 0.02 -1.25 1.25]);
title("Motor Torque as a function of time");
xlabel('Time (s)'); 
ylabel('Torque (Nm)');

subplot(2, 1, 2)
plot(w_M.time, w_M.data, 'LineWidth', 1); 
grid on;
axis([0 0.02 -5 5]);
title("Motor Rotational Speed as a function of time");
xlabel('Time (s)'); 
ylabel('Speed (rad / sec)');