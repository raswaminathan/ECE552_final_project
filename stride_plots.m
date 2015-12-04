clear;
clf;
bufferSize = [4 8 16 32 64 128];

% vortex table size 128
x = 0:1:128;

vortex_IPC512 = [1.4109 1.4112 1.4123 1.4133 1.4153 1.4164];
vortex_IPC256 = [1.4113 1.4116 1.4124 1.4133 1.4155 1.4168];
vortex_IPC128 = [1.4116 1.412 1.4123 1.4136 1.4154 1.4175];
vortex_IPC64 = [1.4118 1.4122 1.4126 1.4137 1.4155 1.4177];

vortex_defaultIPC = 1.4103;
v = ones(length(x))*vortex_defaultIPC;
figure(1);
plot(bufferSize, vortex_IPC512, 'r-', ...
    bufferSize, vortex_IPC256, 'g-', ...
    bufferSize, vortex_IPC128, 'k-', ...
    bufferSize, vortex_IPC64, 'b-', ...
    x, v, 'k--');

legend('512', '256', '128', '64', 'defaultIPC', 'Location', 'northwest');
title('Vortex IPC for a stride prediction table of size 128');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');

gcc_IPC512 = [1.2449 1.2451 1.2455 1.246 1.2469 1.248];
gcc_IPC256 = [1.2453 1.2456 1.2459 1.2464 1.2473 1.2486];
gcc_IPC128 = [1.2456 1.2458 1.2461 1.2466 1.2475 1.2488];
gcc_IPC64 = [1.2458 1.246 1.2462 1.2467 1.2476 1.2489];

gcc_defaultIPC = 1.2435;
g = ones(length(x))*gcc_defaultIPC;

figure(2);
plot(bufferSize, gcc_IPC512, 'r-', ...
    bufferSize, gcc_IPC256, 'g-', ...
    bufferSize, gcc_IPC128, 'k-', ...
    bufferSize, gcc_IPC64, 'b-', ...
    x, g, 'k--');

legend('512', '256', '128', '64', 'defaultIPC', 'Location', 'northwest');
title('GCC IPC for a stride prediction table of size 128');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');