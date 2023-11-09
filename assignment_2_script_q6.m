clear; % Removes variables from the workspace
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
%% Gains of the 2DOF PI speed controller (for Section 4.2)
%alpha s = 0.1*alpha c; % Closed−loop bandwidth
%k ps = ...; % Proportional gain
%k is = ...; % Integral gain
%k ts = ...; % Reference feedforward gain
%tau N = 7; % Rated torque
%tau min = −2*tau N; % Saturation: lower limit
%tau max = 2*tau N; % Saturation: upper limit