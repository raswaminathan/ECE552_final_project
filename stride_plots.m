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
    bufferSize, vortex_IPC64, 'c-', ...
    x, v, 'k--');

legend('512', '256', '128', '64', 'defaultIPC', 'Location', 'northwest');
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
    bufferSize, gcc_IPC64, 'c-', ...
    x, g, 'k--');

legend('512', '256', '128', '64', 'defaultIPC', 'Location', 'northwest');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');

crafty_IPC512 = [1.2582 1.2595 1.2619 1.2651 1.2685 1.2716];
crafty_IPC256 = [1.2591 1.2603 1.2624 1.2657 1.2688 1.2721];
crafty_IPC128 = [1.2597 1.2608 1.2627 1.2659 1.2691 1.2724];
crafty_IPC64 = [1.2601 1.2611 1.2629 1.2661 1.2693 1.2725];

crafty_defaultIPC = 1.2551;
g = ones(length(x))*crafty_defaultIPC;

figure(3);
plot(bufferSize, crafty_IPC512, 'r-', ...
    bufferSize, crafty_IPC256, 'g-', ...
    bufferSize, crafty_IPC128, 'k-', ...
    bufferSize, crafty_IPC64, 'c-', ...
    x, g, 'k--');

legend('512', '256', '128', '64', 'defaultIPC', 'Location', 'northwest');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');

mgrid_IPC512 = [1.6257 1.6249 1.6246 1.6246 1.6246 1.6248];
mgrid_IPC256 = [1.6259 1.6253 1.6248 1.6248 1.6248 1.625];
mgrid_IPC128 = [1.626 1.6254 1.6249 1.6249 1.6249 1.6252];
mgrid_IPC64 = [1.626 1.6254 1.6249 1.6249 1.6249 1.6253];

mgrid_defaultIPC = 1.6248;
g = ones(length(x))*mgrid_defaultIPC;

figure(4);
plot(bufferSize, mgrid_IPC512, 'r-', ...
    bufferSize, mgrid_IPC256, 'g-', ...
    bufferSize, mgrid_IPC128, 'k-', ...
    bufferSize, mgrid_IPC64, 'c-', ...
    x, g, 'k--');

legend('512', '256', '128', '64', 'defaultIPC', 'Location', 'northwest');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');

twolf_IPC512 = [1.5113 1.5119 1.5124 1.5132 1.5145 1.5171];
twolf_IPC256 = [1.513 1.5138 1.5144 1.5149 1.5161 1.5184];
twolf_IPC128 = [1.514 1.515 1.5156 1.5162 1.5173 1.5191];
twolf_IPC64 = [1.5145 1.5156 1.5163 1.517 1.5179 1.5195];

twolf_defaultIPC = 1.4103;
g = ones(length(x))*twolf_defaultIPC;

figure(5);
plot(bufferSize, twolf_IPC512, 'r-', ...
    bufferSize, twolf_IPC256, 'g-', ...
    bufferSize, twolf_IPC128, 'k-', ...
    bufferSize, twolf_IPC64, 'c-', ...
    x, g, 'k--');

legend('512', '256', '128', '64', 'defaultIPC', 'Location', 'northwest');
xlabel('Number of Prefetch Buffer Entries');
ylabel('IPC');