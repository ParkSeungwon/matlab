function [F, M] = controller(t, state, des_state, params)
%d1 = digits(15);

%CONTROLLER  Controller for the quadrotor
%
%   state: The current state of the robot with the following fields:
%   state.pos = [x; y; z], state.vel = [x_dot; y_dot; z_dot],
%   state.rot = [phi; theta; psi], state.omega = [p; q; r]
%
%   des_state: The desired states are:
%   des_state.pos = [x; y; z], des_state.vel = [x_dot; y_dot; z_dot],
%   des_state.acc = [x_ddot; y_ddot; z_ddot], des_state.yaw,
%   des_state.yawdot
%
%   params: robot parameters

%   Using these current and desired states, computes the desired controls

g = params.gravity;
m = params.mass;

% Thrust
F = m * g;

% Moment
M = zeros(3,1);

if norm(des_state.vel) == 0
    unit_tangent_v = [0; 0; 0];
else 
    unit_tangent_v = des_state.vel/norm(des_state.vel); % Unit Tangent Vec
end
if norm(des_state.acc) == 0
    n_hat = [0; 0; 0];
else
    n_hat = des_state.acc/norm(des_state.acc);             % Unit Normal Vec
end
b_hat = cross(unit_tangent_v, n_hat);                          % Unit Bi-normal Vec
pos_err_nominal = des_state.pos - state.pos;
err_pos = dot(pos_err_nominal, n_hat)*n_hat...
    + dot(pos_err_nominal, b_hat)*b_hat;
err_vel = des_state.vel - state.vel;

kd1 = 1000;
kd2 = 1000;
kd3 = 1000;
kp1 = 600;
kp2 = 600;
kp3 = 600;

commanded_r_dot_dot = des_state.acc + [kd1;kd2;kd3].*err_vel + [kp1;kp2;kp3].*err_pos;

F = (commanded_r_dot_dot(3) + g)*m;

a_x = commanded_r_dot_dot(1);
a_y = commanded_r_dot_dot(2);
tx_des = -(a_y*cos(des_state.yaw) - a_x*sin(des_state.yaw))/g;
ty_des = (a_x*cos(des_state.yaw) + a_y*sin(des_state.yaw))/g;

Kp_x = 2;
Kd_x = .5;
Kp_y = 2;
Kd_y = .5;
Kp_z = 2;
Kd_z = .5;

M(1) = [Kp_x    Kd_x] * [(tx_des - state.rot(1)); (0 - state.omega(1))];
M(2) = [Kp_y    Kd_y] * [(ty_des - state.rot(2)); (0 - state.omega(2))];
M(3) = Kp_z * (des_state.yaw - state.rot(3)) + Kd_z * (des_state.yawdot - state.omega(3));

end
