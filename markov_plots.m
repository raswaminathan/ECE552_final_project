clear;
bufferSize = [4 8 16 32 64 128];

% vortex table size 128
x = 0:1:128;

vortex_IPC128 = [1.4111 1.4121 1.4133 1.4156 1.4192 1.4272];
vortex_IPC64 = [1.4108 1.4119 1.4134 1.4158 1.4201 1.4261];
vortex_IPC32 = [1.4111 1.4121 1.4138 1.4169 1.4215 1.4236];
vortex_IPC16 = [1.411 1.412 1.4136 1.4151 1.4194 1.4188];
vortex_IPC8 = [1.4109 1.4114 1.4125 1.4135 1.4183 1.4203];

vortex_defaultIPC = 1.4103;
v = ones(length(x))*vortex_defaultIPC;
figure(1);
plot(bufferSize, vortex_IPC128, 'k-', ...
    bufferSize, vortex_IPC64, 'b-', ...
    bufferSize, vortex_IPC32, 'g-', ...
    bufferSize, vortex_IPC16, 'r-', ...
    bufferSize, vortex_IPC8, 'y-', ...
    x, v, 'k--');

legend('128', '64', '32', '16', '8', 'defaultIPC', 0);
title('Vortex IPC for a markov prediction table of size 128');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');

gcc_IPC128 = [1.2436 1.2437 1.2438 1.2441 1.2445 1.2453];
gcc_IPC64 = [1.2436 1.2437 1.2438 1.244 1.2443 1.2449];
gcc_IPC32 = [1.2436 1.2436 1.2437 1.2439 1.2441 1.2446];
gcc_IPC16 = [1.2436 1.2436 1.2437 1.2438 1.244 1.2444];
gcc_IPC8 = [1.2436 1.2436 1.2436 1.2437 1.2439 1.2443];

gcc_defaultIPC = 1.2435;
g = ones(length(x))*gcc_defaultIPC;

figure(2);
plot(bufferSize, gcc_IPC128, 'k-', ...
    bufferSize, gcc_IPC64, 'b-', ...
    bufferSize, gcc_IPC32, 'g-', ...
    bufferSize, gcc_IPC16, 'r-', ...
    bufferSize, gcc_IPC8, 'y-', ...
    x, g, 'k--');

legend('128', '64', '32', '16', '8', 'defaultIPC', 0);
title('GCC IPC for a markov prediction table of size 128');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');