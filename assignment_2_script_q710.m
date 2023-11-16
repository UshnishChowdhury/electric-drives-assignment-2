%% Parameter estimates
R = 0.5;                    % Resistance
L = 2.5e-3;                 % Inductance
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

alpha_s = 0.1 * alpha_c;      % Closed−loop bandwidth
%k_ps = 2 * alpha_s * J;       % Proportional gain
k_ps = alpha_s * J;          % Proportional gain
%k_is = alpha_s^2 * J;         % Integral gain
k_is = -1;
k_ts = alpha_s * J;           % Reference feedforward gain
tau_N = 7;                    % Rated torque
tau_min = -2*tau_N;           % Saturation: lower limit
tau_max = 2*tau_N;            % Saturation: upper limit

%% Code for plotting results
figure;
subplot(2, 1, 1)
plot(i.time, i.data, 'color', 'b');
grid on;
hold on;
% Reference signal
stairs(i_ref.time, i_ref.data, 'black');
axis([0 0.5 -15 15]);
title("Torque as a function of time");
xlabel('Time (s)'); 
ylabel('Torque (Nm)');

subplot(2, 1, 2)
plot(w_M.time, w_M.data, 'color', 'r');
grid on;
hold on;
% Reference signal
stairs(w_M_ref.time, w_M_ref.data, 'black');
axis([0 0.5 -160 200]);
title("Rotational Speed as a function of time");
xlabel('Time (s)'); 
ylabel('Speed (rad / sec)');